db DEX_RALTS ; pokedex id
db 28 ; base hp
db 25 ; base attack
db 25 ; base defense
db 40 ; base speed
db 45 ; base special
db PSYCHIC ; species type 1
db PSYCHIC ; species type 2
db 235 ; catch rate
db 40 ; base exp yield
INCBIN "pic/bmon/ralts.pic",0,1 ; 55, sprite dimensions
dw RaltsPicFront
dw RaltsPicBack
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
	db BANK(RaltsPicFront)
	assert BANK(RaltsPicFront) == BANK(RaltsPicBack)

