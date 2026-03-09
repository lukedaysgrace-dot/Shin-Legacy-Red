db DEX_METAPOD ; pokedex id
db 65 ; base hp
db 60 ; base attack
db 60 ; base defense
db 30 ; base speed
db 60 ; base special
db BUG ; species type 1
db BUG ; species type 2
db 120 ; catch rate
db 72 ; base exp yield
INCBIN METAPOD_FR,0,1 ; 55, sprite dimensions
dw MetapodPicFront
dw MetapodPicBack
; attacks known at lvl 0
db HARDEN
db 0
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
;	db 0 ; padding
	db BANK(MetapodPicFront)
	assert BANK(MetapodPicFront) == BANK(MetapodPicBack)

