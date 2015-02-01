; Apply a random power up (or back to small mario) every time you get a coin,
; instead of getting that coin.

incsrc "constants.asm"

!CoinsPerLife = $01

; Change CMP 100 for coins so bonus is triggered every !CoinsPerLife
org $008F2C
db !CoinsPerLife

; Patch the "I got X coins" routine
org $008F2F ; usually INC 1 life, nop that. Not enough bytes here to patch.
NOP #3

org $008F32 ; Patch point! 9 byte routine, copied below.
autoclean JSL CoinRoutine ; 4 bytes
NOP #5                    ; +5 = nine

freecode

CoinRoutine:

; Old code from $008F32
LDA !RAM_CurrentCoins
SEC
SBC #!CoinsPerLife
STA !RAM_CurrentCoins

; New code to give random powerup!
LDA !RAM_CurrentFrame ; faux random source
AND #$03              ; 0 = small, 1 = big, 2 = cape, 3 = flower
STA !RAM_CurrentPowerup

RTL
