	db  70, 120,  65, 125,  45,  85 ; 510 BST
	;   hp  atk  def  spd  sat  sdf

	db DARK, ICE
	db 45 ; catch rate
	db 199 ; base exp
	db GRIP_CLAW ; item 1
	db QUICK_CLAW ; item 2
	dn FEMALE_50, 3 ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/weavile/front.dimensions"
if DEF(FAITHFUL)
	abilities_for WEAVILE, PRESSURE, PRESSURE, PICKPOCKET
else
	abilities_for WEAVILE, PRESSURE, TECHNICIAN, PICKPOCKET
endc
	db MEDIUM_SLOW ; growth rate
	dn FIELD, FIELD ; egg groups

	; ev_yield
	ev_yield   0,   1,   0,   1,   0,   0
	;         hp, atk, def, spd, sat, sdf

	; tmhm
	tmhm CURSE, CALM_MIND, TOXIC, HAIL, HIDDEN_POWER, SUNNY_DAY, HONE_CLAWS, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, IRON_TAIL, RETURN, DIG, SHADOW_BALL, ROCK_SMASH, DOUBLE_TEAM, REFLECT, SWIFT, AERIAL_ACE, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, FOCUS_BLAST, FALSE_SWIPE, X_SCISSOR, DARK_PULSE, SHADOW_CLAW, POISON_JAB, AVALANCHE, GIGA_IMPACT, SWORDS_DANCE, CUT, SURF, STRENGTH, WHIRLPOOL, COUNTER, DEFENSE_CURL, DOUBLE_EDGE, DREAM_EATER, ENDURE, HEADBUTT, ICE_PUNCH, ICY_WIND, KNOCK_OFF, SLEEP_TALK, SWAGGER
	; end
