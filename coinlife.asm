; Why should I need 100 coins for a life!? Why not every coin!

!CoinsPerLife = $01

; Change CMP 100 for coins 1UP to CMP1, so you get a life every coin
org $008F2C
db !CoinsPerLife

; Routine would normally subtract 100 to reset to zero, instead subtract our
; new limit
org $008F37
db !CoinsPerLife
