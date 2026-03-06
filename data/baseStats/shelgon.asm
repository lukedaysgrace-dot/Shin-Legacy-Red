db DEX_SHELGON ; pokedex id
db 65 ; base hp
db 95 ; base attack
db 100 ; base defense
db 50 ; base speed
db 60 ; base special
db DRAGON ; species type 1
db DRAGON ; species type 2
db 200 ; catch rate
db 144 ; base exp yield
INCBIN "pic/bmon/shelgon.pic",0,1 ; 66, sprite dimensions
dw ShelgonPicFront
dw ShelgonPicBack
; attacks known at lvl 0
db EMBER
db TACKLE
db 0
db 0
db 5 ; growth rate
; learnset
	tmlearn 2,6,7,8
	tmlearn 9,10,11,12,13,14,15
	tmlearn 20,23,24
	tmlearn 25,31,32
	tmlearn 33,34,38,39,40
	tmlearn 44,45
	tmlearn 50,52,53,54,55
;	db 0 ; padding
	db BANK(ShelgonPicFront)
	assert BANK(ShelgonPicFront) == BANK(ShelgonPicBack)
