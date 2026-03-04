db DEX_GARDEVOIR ; pokedex id
db 68 ; base hp
db 65 ; base attack
db 65 ; base defense
db 80 ; base speed
db 125 ; base special
db PSYCHIC ; species type 1
db PSYCHIC ; species type 2
db 190 ; catch rate
db 233 ; base exp yield
INCBIN "pic/bmon/gardevoir.pic",0,1 ; 77, sprite dimensions
dw GardevoirPicFront
dw GardevoirPicBack
; attacks known at lvl 0
db CONFUSION
db 0
db 0
db 0
db 5 ; growth rate
; learnset
	tmlearn 1,5,6,8
	tmlearn 9,10,15
	tmlearn 17,18,19,20
	tmlearn 28,29,30,31,32
	tmlearn 33,34,35,40
	tmlearn 44,45,46
	tmlearn 49,50,55
;	db 0 ; padding
	db BANK(GardevoirPicFront)
	assert BANK(GardevoirPicFront) == BANK(GardevoirPicBack)

