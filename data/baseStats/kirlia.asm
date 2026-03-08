db DEX_KIRLIA ; pokedex id
db 38 ; base hp
db 35 ; base attack
db 35 ; base defense
db 50 ; base speed
db 65 ; base special
db PSYCHIC ; species type 1
db PSYCHIC ; species type 2
db 255 ; catch rate
db 97 ; base exp yield
INCBIN "pic/bmon/kirlia.pic",0,1 ; 77, sprite dimensions
dw KirliaPicFront
dw KirliaPicBack
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
	db BANK(KirliaPicFront)
	assert BANK(KirliaPicFront) == BANK(KirliaPicBack)

