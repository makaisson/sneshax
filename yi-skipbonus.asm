; # Super Mario World 2: Yoshi's Island
;
; Skips those damn bonus games.

; This was BPL which jumped over the bonus game setup if it wasn't needed.
; Changing to BRA so it always branches regardless of bonus settings.
org $01BEB1
BRA $05 
