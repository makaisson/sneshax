; # Super Mario World 2: Yoshi's Island
;
; Skips those damn bonus games.

; This was BEQ which jumped if a flower was not landed on.
; Changing to BRA so it always branches, skipping bonus game.
org $02A818
BRA $1E

; Speed up end-level flower select. Original is #$6000.
; TODO: The yoshis still stand around awkwardly. Need to find timer for that.
org $02A5E6
LDA #$1000

; This was BPL which jumped over the bonus game setup if it wasn't needed.
; Changing to BRA so it always branches regardless of bonus settings.
; This isn't actually necessary due to the above patch, but leaving here for
; posterity.
; org $01BEB1
; BRA $05
