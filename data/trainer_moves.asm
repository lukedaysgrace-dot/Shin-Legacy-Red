

;joenote - commenting this all out because yellow's method is now being used
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;LoneMoves:
;; these are used for gym leaders.
;; this is not automatic! you have to write the number you want to wLoneAttackNo
;; first. e.g., erika's script writes 4 to wLoneAttackNo to get mega drain,
;; the fourth entry in the list.
;
;; first byte:  pokemon in the trainer's party that gets the move
;; second byte: move
;; unterminated
;	db 1,BIDE
;	db 1,BUBBLEBEAM
;	db 2,THUNDERBOLT
;	db 2,MEGA_DRAIN
;	db 3,TOXIC
;	db 3,PSYWAVE
;	db 3,FIRE_BLAST
;	db 4,FISSURE
;
;TeamMoves:
;; these are used for elite four.
;; this is automatic, based on trainer class.
;; don't be confused by LoneMoves above, the two data structures are
;	; _completely_ unrelated.
;
;; first byte: trainer (all trainers in this class have this move)
;; second byte: move
;; ff-terminated
;	db LORELEI,BLIZZARD
;	db BRUNO,FISSURE
;	db AGATHA,TOXIC
;	db LANCE,BARRIER
;	db $FF
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; yellow has its own format.

; entry = trainerclass, trainerid, moveset+, 0
; moveset = partymon location, partymon's move, moveid
SpecialTrainerMoves:
	db BROCK,$1
	;geodude - tackle, defense curl
	;onix - tackle, screech, bind, bide
	db 2,4,BIDE
	db 0
	
	;joenote - give the abra of the cerulean rival something to do
	;		-assume the rival got some TMs from Celadon City
	db SONY1, $7
	;pidgeotto - gust, sand attack, quick attack
	;abra - teleport, counter, confusion
	db 2,2,COUNTER
	db 2,3,CONFUSION
	;rattata - tackle, tail whip, quick attack, hyper fang
	;wartortle - tackle, tail whip, bubble, water gun
	db 0

	db SONY1, $8
	;pidgeotto - gust, sand attack, quick attack
	;abra - teleport, counter, confusion
	db 2,2,COUNTER
	db 2,3,CONFUSION
	;rattata - tackle, tail whip, quick attack, hyper fang
	;ivysaur - tackle, growl, leech seed, vine whip
	db 0

	db SONY1, $9
	;pidgeotto - gust, sand attack, quick attack
	;abra - teleport, counter, confusion
	db 2,2,COUNTER
	db 2,3,CONFUSION
	;rattata - tackle, tail whip, quick attack, hyper fang
	;charmeleon - scratch, growl, ember, leer
	db 0
	
	db MISTY,$1
	;staryu - tackle, water gun
	;horsea - bubblebeam, tackle, bubble, smokescreen
	db 2,1,BUBBLEBEAM
	db 2,2,TACKLE
	db 2,4,SMOKESCREEN
	;starmie - confusion, water gun, harden, bubblebeam
	db 3,1,CONFUSION
	db 0
	
	db LT_SURGE,$1
	;voltorb - tackle, screech, sonic boom, thundershock
	;electabuzz - thunder punch, rage, counter, quick attack
	db 2,1,THUNDERPUNCH
	db 2,2,RAGE
	db 2,3,COUNTER
	db 2,4,QUICK_ATTACK
	;raichu - thunderbolt, tail whip, thunder wave, body slam
	db 3,1,THUNDERBOLT
	db 3,3,THUNDER_WAVE
	DB 3,4,BODY_SLAM
	db 0
	
	db ERIKA,$1
	;tangela - constrict, bind, absorb, vine whip
	;parasect - leech life, mega drain, slash, spore
	db 2,1,LEECH_LIFE
	db 2,2,MEGA_DRAIN
	db 2,3,SLASH
	db 2,4,SPORE
	;victreebel
	db 3,1,GROWTH
	db 3,2,SLEEP_POWDER
	db 3,3,WRAP
	db 3,4,RAZOR_LEAF
	;vileplume
	db 4,1,POISONPOWDER
	db 4,2,MEGA_DRAIN
	db 4,3,SLEEP_POWDER
	db 4,4,PETAL_DANCE
	db 0
	
	db KOGA,$1
	;arbok - sludge, double-team, dig, glare
	db 1,1,SLUDGE
	db 1,2,DOUBLE_TEAM
	db 1,3,DIG
	db 1,4,GLARE
	;muk - disable, body slam, minimize, sludge
	db 2,1,DISABLE
	db 2,2,BODY_SLAM
	db 2,3,MINIMIZE
	db 2,4,SLUDGE
	;venomoth - psybeam, supersonic, mega drain, sleep powder
	db 3,1,PSYBEAM
	db 3,2,SUPERSONIC
	db 3,3,MEGA_DRAIN
	db 4,4,SLEEP_POWDER
	;weezing - toxic, sludge, mimic, explosion
	db 4,1,TOXIC
	db 4,2,SLUDGE
	db 4,3,MIMIC
	db 4,4,EXPLOSION
	;tentacruel - toxic,sludge,confuse ray, surf
	db 5,1,TOXIC
	db 5,2,SLUDGE
	db 5,3,CONFUSE_RAY
	db 5,4,SURF
	db 0
	
	db SABRINA,$1
	;mr mime - psychic, barrier, light screen, seismic toss
	db 1,1,PSYCHIC_M
	db 1,4,SEISMIC_TOSS
	;gardevoir - psychic, fire punch, night shade, thunderbolt
	db 2,1,PSYCHIC_M
	db 2,2,FIRE_PUNCH
	db 2,3,NIGHT_SHADE
	db 2,4,THUNDERBOLT
	;golduck - psychic, surf, amnesia, submission
	db 3,1,PSYCHIC_M
	db 3,2,SURF
	db 3,3,AMNESIA
	db 3,4,SUBMISSION
	;jynx - ice punch, psychic, lovely kiss, bubble beam
	db 4,1,ICE_PUNCH
	db 4,2,PSYCHIC_M
	db 4,3,LOVELY_KISS
	db 4,4,BUBBLEBEAM
	;alakazam - psywave, recover, psychic, thunder wave
	db 4,1,PSYWAVE
	db 0
	
	db BLAINE,$1
	;ninetales - quick attack, swift, confuse ray, flamethrower
	db 1,2,SWIFT
	;magmar - guillotine, counter, confuse ray, flamethrower
	db 2,1,GUILLOTINE
	db 2,2,COUNTER
	db 2,3,CONFUSE_RAY
	db 2,4,FLAMETHROWER
	;rapidash - flamethrower, stomp, double-edge, fire spin
	db 3,1,FLAMETHROWER
	db 3,2,STOMP
	db 3,3,DOUBLE_EDGE
	db 3,4,FIRE_SPIN
	;arcanine - fire blast, dig, leer, body slam
	db 4,1,FIRE_BLAST
	db 4,2,DIG
	db 4,3,BODY_SLAM
	;flareon - flamethrower, dig, body slam, quick attack
	db 5,1,FLAMETHROWER
	db 5,2,DIG
	db 5,3,BODY_SLAM
	db 5,4,QUICK_ATTACK
	db 0
	
	db GIOVANNI,$3
	;kangaskhan - earthquake, hyper beam, seismic toss, dizzy punch
	db 1,1,EARTHQUAKE
	db 1,2,HYPER_BEAM
	db 1,3,SEISMIC_TOSS
	db1,4,DIZZY_PUNCH
	;sandslash - sludge, earthquake, twineedle, slash
	db 2,1,SLUDGE
	db 2,2,EARTHQUAKE
	db 2,3,TWINEEDLE
	db 2,4,SLASH
	;nidoqueen - earthquake, submission, thunderbolt, surf
	db 3,1,EARTHQUAKE
	db 3,2,SUBMISSION
	db 3,3,THUNDERBOLT
	db 3,4,SURF
	;nidoking - earthquake, submission, ice beam, rock slide
	db 4,1,EARTHQUAKE
	db 4,2,SUBMISSION
	db 4,3,ICE_BEAM
	db 4,4,ROCK_SLIDE
	;rhydon
	db 5,1,ROCK_SLIDE
	db 5,2,FISSURE
	db 5,3,DOUBLE_TEAM
	db 5,4,EARTHQUAKE
	;kabutops - surf, rock slide, mega drain, razor wind
	db 6,1,SURF
	db 6,2,ROCK_SLIDE
	db 6,3,MEGA_DRAIN
	db 6,4,RAZOR_WIND
	db 0
	
	db LORELEI,$1
	;dewgong - surf, ice beam, rest, body slam
	db 1,1,SURF
	;cloyster - clamp, supersonic, ice beam, spike cannon
	db 2,2,SUPERSONIC
	;slowbro - surf, ice beam, amnesia, psychic
	db 3,1,SURF
	db 3,2,ICE_BEAM
	;jynx - psychic, ice punch, lovely kiss, thrash
	db 4,1,PSYCHIC_M
	db 4,3,LOVELY_KISS
	;lapras - body slam, confuse ray, blizzard, hydro pump
	db 5,3,BLIZZARD
	;omastar - surf, rock slide, blizzard, seismic toss
	db 6,1,SURF
	db 6,2,ROCK_SLIDE
	db 6,3,BLIZZARD
	db 6,4,SEISMIC_TOSS
	db 0

	db BRUNO,$1
	;onix - rock slide, screech, slam, earthquake
	db 1,1,ROCK_SLIDE
	db 1,2,SCREECH
	db 1,4,EARTHQUAKE
	;hitmonchan - ice punch, thunder punch, mega punch, submission
	db 2,4,SUBMISSION
	;hitmonlee - submission, focus energy, hi jump kick, mega kick
	db 3,1,HI_JUMP_KICK
	;golem - earthquake, rock slide, body slam, explosion
	db 4,1,EARTHQUAKE
	db 4,2,ROCK_SLIDE
	db 4,3,BODY_SLAM
	db 4,4,EXPLOSION
	;machamp - earthquake, guillotine, rock slide, counter
	db 5,1,EARTHQUAKE
	db 5,2,GUILLOTINE
	db 5,3,ROCK_SLIDE
	db 5,4,COUNTER
	;poliwrath - submission, amnesia, psychic, surf
	db 6,1,SUBMISSION
	db 6,2,AMNESIA
	db 6,3,PSYCHIC_M
	db 6,4,SURF
	db 0

	db AGATHA,$1
	;gengar - night shade, confuse ray, hypnosis, dream eater
	db 1,1,NIGHT_SHADE
	db 1,2,CONFUSE_RAY
	;tentacruel - sludge, surf, confuse ray, blizzard
	db 2,1,SLUDGE
	db 2,2,SURF
	db 2,3,CONFUSE_RAY
	db 2,4,BLIZZARD
	;golbat - screech, confuse ray, razor wind, sludge
	db 3,1,SCREECH
	db 3,2,CONFUSE_RAY
	db 3,3,RAZOR_WIND
	db 3,4,SLUDGE
	;arbok - earthquake, glare, screech, sludge
	db 4,1,EARTHQUAKE
	db 4,2,GLARE
	db 4,3,SCREECH
	db 4,4,SLUDGE
	;gengar - mega drain, night shade, hypnosis, dream eater
	db 5,1,MEGA_DRAIN
	db 5,2,NIGHT_SHADE
	db 5,3,HYPNOSIS
	db 5,4,DREAM_EATER
	;weezing - sludge, toxic, flamethrower, thunderbolt
	db 6,1,SLUDGE
	db 6,2,TOXIC
	db 6,3,FLAMETHROWER
	db 6,4,THUNDERBOLT
	db 0

	db LANCE,$1
	;gyarados - dragon rage, slam, hydro pump, hyperbeam
	db 1,1,DRAGON_RAGE
	db 1,2,SLAM
	db 1,3,HYDRO_PUMP
	;dragonite - thunder wave, slam, thunderbolt, hyperbeam
	db 2,1,THUNDER_WAVE
	db 2,2,SLAM
	db 2,3,THUNDERBOLT
	;dragonite - surf, slam, barrier, razor wind
	db 3,1,SURF
	db 3,2,SLAM
	db 3,3,BARRIER
	db 3,4,RAZOR_WIND
	;aerodactyl - rock slide, fire blast, razor wind, hyperbeam
	db 4,1,ROCK_SLIDE
	db 4,2,FIRE_BLAST
	db 4,3,RAZOR_WIND
	;salamence - slam, flamethrower, razor wind, rock slide
	db 5,1,SLAM
	db 5,2,FLAMETHROWER
	db 5,3,RAZOR_WIND
	db 5,4,ROCK_SLIDE
	;seadra - rage, slam, surf, blizzard
	DB 6,1,RAGE
	db 6,2,SLAM
	db 6,3,SURF
	db 6,4,BLIZZARD
	db 0

	db SONY3,$1
	;pidgeot
	db 1,1,SKY_ATTACK
	db 1,2,BODY_SLAM
	db 1,3,MIMIC
	db 1,4,DOUBLE_TEAM
	;alakazam - thunderwave, recover, psychic, kinesis
	db 2,1,THUNDER_WAVE
	db 2,4,KINESIS
	;rhydon
	db 3,1,THUNDERBOLT
	db 3,2,EARTHQUAKE
	db 3,3,ROCK_SLIDE
	db 3,4,SURF
	;arcanine - reflect, rest, double edge, flamethrower
	db 4,1,REFLECT
	db 4,2,REST
	db 4,3,DOUBLE_EDGE
	db 4,4,FLAMETHROWER
	;exeggutor - psychic, dream eater, mega drain, hypnosis
	db 5,1,PSYCHIC_M
	db 5,2,DREAM_EATER
	db 5,3,MEGA_DRAIN
	db 5,4,HYPNOSIS
	;blastoise - blizzard, reflect, skull bash, earthquake
	db 6,1,BLIZZARD
	db 6,3,SKULL_BASH
	DB 6,4,EARTHQUAKE
	db 0

	db SONY3,$2
	;pidgeot
	db 1,1,SKY_ATTACK
	db 1,2,TRI_ATTACK
	db 1,3,MIMIC
	db 1,4,DOUBLE_TEAM
	;alakazam - thunderwave, recover, psychic, kinesis
	db 2,1,THUNDER_WAVE
	db 2,4,KINESIS
	;rhydon
	db 3,1,THUNDERBOLT
	db 3,2,EARTHQUAKE
	db 3,3,ROCK_SLIDE
	db 3,4,SURF
	;gyarados - ice beam, body slam, hydro pump, hyperbeam
	db 4,1,ICE_BEAM
	db 4,2,BODY_SLAM
	;arcanine - reflect, earthquake, body slam, flamethrower
	db 5,1,REFLECT
	db 5,2,EARTHQUAKE
	db 5,3,BODY_SLAM
	db 5,4,FLAMETHROWER
	;venusaur - razor leaf, toxic, sleep powder, mega drain
	db 6,2,TOXIC
	db 0

	db SONY3,$3
	;pidgeot
	db 1,1,SKY_ATTACK
	db 1,2,TRI_ATTACK
	db 1,3,MIMIC
	db 1,4,DOUBLE_TEAM
	;alakazam - thunderwave, recover, psychic, reflect
	db 2,1,THUNDER_WAVE
	;rhydon
	db 3,1,THUNDERBOLT
	db 3,2,EARTHQUAKE
	db 3,3,ROCK_SLIDE
	db 3,4,SURF
	;exeggutor - psychic mega drain, dream eater, hypnosis
	db 4,1,PSYCHIC_M
	db 4,2,MEGA_DRAIN
	db 4,3,DREAM_EATER
	db 4,4,HYPNOSIS
	;gyarados - ice beam, body slam, hydro pump, hyperbeam
	db 5,1,ICE_BEAM
	db 5,2,BODY_SLAM
	;charizard - razor wind, slash, flamethrower, fire spin
	db 6,1,RAZOR_WIND
	db 6,3,FLAMETHROWER
	db 6,4,FIRE_SPIN
	db 0

	;prof oak's pokemon
	db PROF_OAK,$1
	;tauros - body slam, earthquake, thunderbolt, hyperbeam
	db 1,2,EARTHQUAKE
	db 1,3,THUNDERBOLT
	db 1,4,HYPER_BEAM
	;exeggutor - reflect, stomp, solarbeam, hypnosis
	;arcanine - bite, fire blast, takedown, flamethrower
	db 3,2,FIRE_BLAST
	;blastoise - bite, withdraw, blizzard, hydro pump
	db 4,3,BLIZZARD
	;gyarados - thunderbolt, ice beam, hydro pump, hyper beam
	db 5,1,THUNDERBOLT
	db 5,2,ICE_BEAM
	db 0
	
	db PROF_OAK,$2
	;tauros - tail whip, earthquake, thunderbolt, hyperbeam
	db 1,2,EARTHQUAKE
	db 1,3,THUNDERBOLT
	db 1,4,HYPER_BEAM
	;exeggutor - reflect, stomp, solarbeam, hypnosis
	;arcanine - bite, fire blast, takedown, flamethrower
	db 3,2,FIRE_BLAST
	;venusaur - razor leaf, growth, body slam, solar beam
	db 4,3,BODY_SLAM
	;gyarados - thunderbolt, ice beam, hydro pump, hyper beam
	db 5,1,THUNDERBOLT
	db 5,2,ICE_BEAM
	db 0
	
	db PROF_OAK,$3
	;tauros - tail whip, earthquake, thunderbolt, hyperbeam
	db 1,2,EARTHQUAKE
	db 1,3,THUNDERBOLT
	db 1,4,HYPER_BEAM
	;exeggutor - reflect, stomp, solarbeam, hypnosis
	;arcanine - bite, fire blast, takedown, flamethrower
	db 3,2,FIRE_BLAST
	;charizard - toxic, slash, flamethrower, fire spin
	db 4,1,TOXIC
	;gyarados - thunderbolt, ice beam, hydro pump, hyper beam
	db 5,1,THUNDERBOLT
	db 5,2,ICE_BEAM
	db 0
	
	;mr fuji battle
	db GENTLEMAN,$5
	;marowak
	db 1,1,BONEMERANG
	db 1,2,BODY_SLAM
	db 1,3,SEISMIC_TOSS
	db 1,4,BLIZZARD
	;omastar
	db 2,1,HYDRO_PUMP
	db 2,2,ICE_BEAM
	db 2,3,REFLECT
	db 2,4,TOXIC
	;kabutops
	db 3,1,SWORDS_DANCE
	db 3,2,SURF
	db 3,3,SLASH
	db 3,4,DOUBLE_EDGE
	;aerodactyl
	db 4,1,SKY_ATTACK
	db 4,2,REFLECT
	db 4,3,HYPER_BEAM
	db 4,4,SUPERSONIC
	;arcanine
	db 5,1,FIRE_BLAST
	db 5,2,BODY_SLAM
	db 5,3,MIMIC
	db 5,4,HYPER_BEAM
	db 0
	
	;Chief battle
	db CHIEF,$1
	;kangaskhan
	db 1,1,BODY_SLAM
	db 1,2,SUBMISSION
	db 1,3,FIRE_BLAST
	db 1,4,HYPER_BEAM
	;rhydon
	db 2,1,THUNDERBOLT
	db 2,2,ROCK_SLIDE
	db 2,3,SUBSTITUTE
	db 2,4,EARTHQUAKE
	;golduck
	db 3,1,AMNESIA
	db 3,2,BLIZZARD
	db 3,3,SURF
	db 3,4,PSYCHIC_M
	;pinsir
	db 4,1,SLASH
	db 4,2,SWORDS_DANCE
	db 4,3,TWINEEDLE
	db 4,4,BODY_SLAM
	;scyther
	db 5,1,SWORDS_DANCE
	db 5,2,SLASH
	db 5,3,AGILITY
	db 5,4,RAZOR_WIND
	;tauros
	db 6,1,HYPER_BEAM
	db 6,2,DOUBLE_EDGE
	db 6,3,STOMP
	db 6,4,REST
	db 0
	
	;Seiga battle
	db JR_TRAINER_F,$18
	;clefable
	db 1,1,PSYCHIC_M
	db 1,2,SING
	db 1,3,METRONOME
	db 1,4,DOUBLE_EDGE
	;gengar
	db 2,1,THUNDERBOLT
	db 2,2,NIGHT_SHADE
	db 2,3,MEGA_DRAIN
	db 2,4,CONFUSE_RAY
	;victreebel
	db 3,1,SWORDS_DANCE
	db 3,2,RAZOR_LEAF
	db 3,3,SLEEP_POWDER
	db 3,4,BODY_SLAM
	;ninetales
	db 4,1,FIRE_BLAST
	db 4,2,REFLECT
	db 4,3,HYPER_BEAM
	db 4,4,CONFUSE_RAY
	;kangaskhan
	db 5,1,EARTHQUAKE
	db 5,2,ROCK_SLIDE
	db 5,3,SUBMISSION
	db 5,4,DIZZY_PUNCH
	;blastoise
	db 6,1,SKULL_BASH
	db 6,2,BLIZZARD
	db 6,3,SEISMIC_TOSS
	db 6,4,MIMIC
	db 0
	
	;Red battle
	db JR_TRAINER_M,$9
	;lapras
	db 1,1,BLIZZARD
	db 1,2,THUNDERBOLT
	db 1,3,BODY_SLAM
	db 1,4,CONFUSE_RAY
	;venusaur
	db 2,1,RAZOR_LEAF
	db 2,2,SLEEP_POWDER
	db 2,3,BODY_SLAM
	db 2,4,SWORDS_DANCE
	;charizard
	db 3,1,FIRE_BLAST
	db 3,2,EARTHQUAKE
	db 3,3,SWORDS_DANCE
	db 3,4,HYPER_BEAM
	;blastoise
	db 4,1,SKULL_BASH
	db 4,2,BLIZZARD
	db 4,3,BODY_SLAM
	db 4,4,EARTHQUAKE
	;snorlax
	db 5,1,HYPER_BEAM
	db 5,2,REST
	db 5,3,BODY_SLAM
	db 5,4,EARTHQUAKE
	;pikachu
	db 6,1,THUNDER
	db 6,2,THUNDER_WAVE
	db 6,3,SURF
	db 6,4,DOUBLE_TEAM
	db 0
	
	;multi missingno superboss battle
	db CHIEF,$3
	db 1,1,LEECH_SEED
	db 1,2,TOXIC
	db 1,3,SUPER_FANG
	db 1,4,NIGHT_SHADE
	db 2,1,EARTHQUAKE
	db 2,2,HYPER_BEAM
	db 2,3,CONFUSE_RAY
	db 2,4,SPORE
	db 3,1,PSYCHIC_M
	db 3,2,BLIZZARD
	db 3,3,THUNDER_WAVE
	db 3,4,REST
	db 0
	
	db $ff
