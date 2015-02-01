; # Super Mario World 2: Yoshi's Island
;
; Skips those damn bonus games.
;
; ## How I Made This
;
; 1. Create a YI save point on the score board, just before entering a bonus
;    game.
; 2. Enable CPU logging, with "Trace Once" enabled. This reduces the amount of
;    logging output by only outputting each executed instruction once.
; 3. Look for accesses of $7E0212, which is listed as "Bonus Challenge Mode" at
;    http://www.smwcentral.net/?p=viewthread&t=343 (note: I tried to set a
;    breakpoint on this but failed)
; 4. Found $109C46 as a patch point to alter the game mode, details of which
;    are also listed at above thread.

!RAM_GameMode = $0118

!GAMEMODE_ToMap = $001E

org $109C46 ; Patch! 6 bytes, restored below.
autoclean JSL SkipToMap ; 4 bytes
NOP #2                  ; +2 = 6

freecode

SkipToMap:

LDA #!GAMEMODE_ToMap
STA !RAM_GameMode

; Restore code from $109C46. Loads bonus game from X and jumps to the
; subroutine for it. This is unnecessary now, since the changed game mode will
; immediately abort once it is next checked, I just haven't figured out where
; that is yet.
LDX $0212
JSR ($9C74,x)

RTL
