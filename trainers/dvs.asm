GetTrainerDVsAndPersonality: ; 270c4
; Return the DVs and Personality of OtherTrainerClass in bc
	push hl

	call CheckUniqueDVTrainerPokemon
	jr z, .done

	ld a, [OtherTrainerClass]
	dec a
	ld c, a
	ld b, 0

	ld hl, TrainerClassDVsAndPersonality
rept 2
	add hl, bc
endr

	ld b, h
	ld c, l

.done
	pop hl
	ret
; 270d6

TrainerClassDVsAndPersonality: ; 270d6
	;   HP  Def  SAt  Ability
	;  Atk  Spd  SDf  Nature   Gender
	db PERFECT_DVS,   ABILITY_1 | QUIRKY, FEMALE ; kay
	db PERFECT_DVS,   ABILITY_1 | QUIRKY, MALE   ; cal
	db $CC, $CC, $CC, ABILITY_1 | QUIRKY, MALE   ; falkner
	db $CC, $CC, $CC, ABILITY_1 | QUIRKY, MALE   ; bugsy
	db $DD, $DD, $DD, ABILITY_1 | QUIRKY, FEMALE ; whitney
	db $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; morty
	db $EE, $EE, $EE, ABILITY_1 | QUIRKY, MALE   ; chuck
	db $EE, $EE, $EE, ABILITY_1 | QUIRKY, FEMALE ; jasmine
	db PERFECT_DVS,   ABILITY_1 | QUIRKY, MALE   ; pryce
	db PERFECT_DVS,   ABILITY_1 | QUIRKY, FEMALE ; clair
	db PERFECT_DVS,   ABILITY_1 | QUIRKY, MALE   ; will
	db PERFECT_DVS,   ABILITY_1 | QUIRKY, MALE   ; koga
	db PERFECT_DVS,   ABILITY_1 | QUIRKY, MALE   ; bruno
	db PERFECT_DVS,   ABILITY_1 | QUIRKY, FEMALE ; karen
	db PERFECT_DVS,   ABILITY_1 | QUIRKY, MALE   ; champion
	db PERFECT_DVS,   ABILITY_1 | QUIRKY, MALE   ; brock
	db PERFECT_DVS,   ABILITY_1 | QUIRKY, FEMALE ; misty
	db PERFECT_DVS,   ABILITY_1 | QUIRKY, MALE   ; lt surge
	db PERFECT_DVS,   ABILITY_1 | QUIRKY, FEMALE ; erika
	db PERFECT_DVS,   ABILITY_1 | QUIRKY, FEMALE ; janine
	db PERFECT_DVS,   ABILITY_1 | QUIRKY, FEMALE ; sabrina
	db PERFECT_DVS,   ABILITY_1 | QUIRKY, MALE   ; blaine
	db PERFECT_DVS,   ABILITY_1 | QUIRKY, MALE   ; blue
	db PERFECT_DVS,   ABILITY_1 | QUIRKY, MALE   ; red
	db PERFECT_DVS,   ABILITY_1 | QUIRKY, FEMALE ; leaf
	db PERFECT_DVS,   ABILITY_1 | QUIRKY, MALE   ; rival1
	db PERFECT_DVS,   ABILITY_1 | QUIRKY, MALE   ; rival2
	db $66, $66, $66, ABILITY_1 | QUIRKY, MALE   ; youngster
	db $66, $66, $66, ABILITY_1 | QUIRKY, MALE   ; bug catcher
	db $77, $77, $77, ABILITY_1 | QUIRKY, MALE   ; camper
	db $77, $77, $77, ABILITY_1 | QUIRKY, FEMALE ; picnicker
	db $88, $88, $88, ABILITY_1 | QUIRKY, FEMALE ; twins
	db $88, $88, $88, ABILITY_1 | QUIRKY, MALE   ; fisher
	db $88, $88, $88, ABILITY_1 | QUIRKY, MALE   ; bird keeper
	db $99, $99, $99, ABILITY_1 | QUIRKY, MALE   ; hiker
	db $AA, $AA, $AA, ABILITY_1 | QUIRKY, MALE   ; gruntm
	db $AA, $AA, $AA, ABILITY_1 | QUIRKY, FEMALE ; gruntf
	db $BB, $B8, $BB, ABILITY_1 | QUIRKY, MALE   ; jessie&james
	db $AA, $AA, $AA, ABILITY_1 | QUIRKY, MALE   ; pokefanm
	db $AA, $AA, $AA, ABILITY_1 | QUIRKY, FEMALE ; pokefanf
	db $DD, $BB, $DB, ABILITY_1 | QUIRKY, MALE   ; officerm
	db $7B, $DB, $FF, ABILITY_1 | QUIRKY, FEMALE ; officerf
	db $BB, $BB, $BB, ABILITY_1 | QUIRKY, MALE   ; pokemaniac
	db $BB, $BB, $BB, ABILITY_1 | QUIRKY, MALE   ; super nerd
	db $BB, $BB, $BB, ABILITY_1 | QUIRKY, FEMALE ; lass
	db $CC, $CC, $CC, ABILITY_1 | QUIRKY, FEMALE ; beauty
	db $CC, $CC, $CC, ABILITY_1 | QUIRKY, MALE   ; firebreather
	db $CC, $CC, $CC, ABILITY_1 | QUIRKY, MALE   ; juggler
	db $CC, $CC, $CC, ABILITY_1 | QUIRKY, MALE   ; schoolboy
	db $CC, $CC, $CC, ABILITY_1 | QUIRKY, FEMALE ; schoolgirl
	db $AA, $CC, $EE, ABILITY_1 | QUIRKY, MALE   ; psychic
	db $AA, $CC, $EE, ABILITY_1 | QUIRKY, FEMALE ; hex maniac
	db $CC, $CC, $CC, ABILITY_1 | QUIRKY, MALE   ; sage
	db $CC, $CC, $CC, ABILITY_1 | QUIRKY, FEMALE ; medium
	db $DD, $DD, $DD, ABILITY_1 | QUIRKY, FEMALE ; kimono girl
	db $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; elder
	db $CC, $CC, $CC, ABILITY_1 | QUIRKY, FEMALE ; sr&jr
	db $CC, $CC, $CC, ABILITY_1 | QUIRKY, MALE   ; couple
	db $CC, $CC, $CC, ABILITY_1 | QUIRKY, MALE   ; gentleman
	db $CC, $CC, $CC, ABILITY_1 | QUIRKY, MALE   ; rich boy
	db $DD, $DD, $DD, ABILITY_1 | QUIRKY, FEMALE ; breeder
	db $CC, $CC, $CC, ABILITY_1 | QUIRKY, FEMALE ; cowgirl
	db $CC, $CC, $CC, ABILITY_1 | QUIRKY, MALE   ; sailor
	db $CC, $CC, $CC, ABILITY_1 | QUIRKY, MALE   ; swimmerm
	db $CC, $CC, $CC, ABILITY_1 | QUIRKY, FEMALE ; swimmerf
	db $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; burglar
	db $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; pi
	db $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; scientist
	db $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; boarder
	db $DD, $DD, $DD, ABILITY_1 | QUIRKY, FEMALE ; skier
	db $FF, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; blackbelt
	db $FF, $DD, $DD, ABILITY_1 | QUIRKY, FEMALE ; battle girl
	db $DF, $DF, $DD, ABILITY_1 | QUIRKY, MALE   ; dragon tamer
	db $DD, $DD, $DD, ABILITY_1 | QUIRKY, FEMALE ; teacher
	db $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; guitaristm
	db $DD, $DD, $DD, ABILITY_1 | QUIRKY, FEMALE ; guitaristf
	db $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; biker
	db $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; roughneck
	db $EE, $EE, $EE, ABILITY_1 | QUIRKY, MALE   ; cooltrainerm
	db $EE, $EE, $EE, ABILITY_1 | QUIRKY, FEMALE ; cooltrainerf
	db $EE, $EE, $EE, ABILITY_1 | QUIRKY, MALE   ; ace duo
	db PERFECT_DVS,   ABILITY_1 | QUIRKY, MALE   ; veteranm
	db PERFECT_DVS,   ABILITY_1 | QUIRKY, FEMALE ; veteranf
	db $CC, $CC, $CC, ABILITY_1 | QUIRKY, MALE   ; proton
	db $DD, $DD, $DD, ABILITY_1 | QUIRKY, MALE   ; petrel
	db PERFECT_DVS,   ABILITY_1 | QUIRKY, MALE   ; archer
	db $EE, $EE, $EE, ABILITY_1 | QUIRKY, FEMALE ; ariana
	db PERFECT_DVS,   ABILITY_1 | QUIRKY, MALE   ; pokemon prof
	db PERFECT_DVS,   ABILITY_1 | QUIRKY, MALE   ; mysticalman
	db $BB, $BB, $BB, ABILITY_1 | QUIRKY, FEMALE ; lyra
	db PERFECT_DVS,   ABILITY_1 | QUIRKY, FEMALE ; lorelei
	db PERFECT_DVS,   ABILITY_1 | QUIRKY, FEMALE ; agatha
	db $EE, $EE, $EE, ABILITY_1 | QUIRKY, FEMALE ; yellow
	db $EE, $EE, $EE, ABILITY_1 | QUIRKY, MALE   ; walker
	db PERFECT_DVS,   ABILITY_1 | QUIRKY, MALE   ; bill
	db PERFECT_DVS,   ABILITY_1 | QUIRKY, MALE   ; lawrence
	db PERFECT_DVS,   ABILITY_1 | QUIRKY, MALE   ; giovanni
	db PERFECT_DVS,   ABILITY_1 | QUIRKY, MALE   ; steven
	db PERFECT_DVS,   ABILITY_1 | QUIRKY, FEMALE ; cynthia
	db PERFECT_DVS,   ABILITY_1 | QUIRKY, MALE   ; towertycoon
	db PERFECT_DVS,   ABILITY_1 | QUIRKY, FEMALE ; valerie
	db $EE, $EE, $EE, ABILITY_1 | QUIRKY, FEMALE ; rei
	db $00, $00, $00, ABILITY_1 | QUIRKY, MALE   ; omastar fossil
	db $00, $00, $00, ABILITY_1 | QUIRKY, MALE   ; kabutops fossil
	db $00, $00, $00, ABILITY_1 | QUIRKY, MALE   ; aerodactyl fossil
	db $00, $00, $00, ABILITY_1 | QUIRKY, MALE   ; meteorite
; 2715c

INCLUDE "trainers/unique_dvs.asm"
