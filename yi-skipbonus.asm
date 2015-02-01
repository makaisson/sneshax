; Super Mario World 2: Yoshi's Island
;
; Skips those damn bonus games.

!RAM_GameMode = $0118

!GAMEMODE_ToMap = $001F

org $109C46 ; Patch! 6 bytes restored below
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
