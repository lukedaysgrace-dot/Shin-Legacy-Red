db DEX_SALAMENCE ; pokedex id
db 95 ; base hp
db 135 ; base attack
db 80 ; base defense
db 100 ; base speed
db 90 ; base special
db DRAGON ; species type 1
db FLYING ; species type 2
db 255 ; catch rate
db 218 ; base exp yield
INCBIN "pic/bmon/salamence.pic",0,1 ; 77, sprite dimensions
dw SalamencePicFront
dw SalamencePicBack
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
	db BANK(SalamencePicFront)
	assert BANK(SalamencePicFront) == BANK(SalamencePicBack)
