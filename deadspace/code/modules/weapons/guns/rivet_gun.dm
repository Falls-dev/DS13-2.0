/obj/item/gun/ballistic/automatic/pistol/rivet
	name = "711-MarkCL Rivet Gun"
	desc = "The latest refinement from Timson Tools' long line of friendly tools."
	icon = 'deadspace/icons/obj/weapons/ds13guns48x32.dmi'
	icon_state = "rivetgun"
	inhand_icon_state = "rivetgun"
	lefthand_file = 'deadspace/icons/mob/onmob/items/lefthand_guns.dmi'
	righthand_file = 'deadspace/icons/mob/onmob/items/righthand_guns.dmi'
	w_class = WEIGHT_CLASS_NORMAL
	mag_type = /obj/item/ammo_box/magazine/rivet
	slot_flags = ITEM_SLOT_BELT|ITEM_SLOT_POCKETS
	burst_size = 1
	bolt = /datum/gun_bolt/open
	show_bolt_icon = FALSE
	fire_sound= 'deadspace/sound/weapons/guns/fire/rivet_fire.ogg'
	load_sound = 'deadspace/sound/weapons/guns/interaction/rivet_magin.ogg'
	eject_sound = 'deadspace/sound/weapons/guns/interaction/rivet_magout.ogg'

/obj/item/gun/ballistic/automatic/pistol/rivet/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.3 SECONDS)

/obj/item/gun/ballistic/automatic/pistol/rivet/no_mag
	spawnwithmagazine = FALSE

/**
Magazines
*/

/obj/item/ammo_box/magazine/rivet
	name = "rivet magazine"
	icon = 'deadspace/icons/obj/ammo.dmi'
	icon_state = "rivet"
	ammo_type = /obj/item/ammo_casing/caseless/rivet
	caliber = CALIBER_RIVET
	max_ammo = 16
	multiple_sprites = AMMO_BOX_FULL_EMPTY

/**
Ammo casings for the mags
*/

/obj/item/ammo_casing/caseless/rivet
	name = "rivet"
	desc = "A spent rivet."
	icon_state = "762-casing"
	caliber = CALIBER_RIVET
	projectile_type = /obj/projectile/bullet/rivet

/obj/projectile/bullet/rivet
	name = "rivet bullet"
	icon = 'deadspace/icons/obj/projectiles.dmi'
	icon_state = "rivet"
	damage = 12
	armor_penetration = 10
	wound_falloff_tile = -10
	dismemberment = 5
	embedding = list(embed_chance=25, fall_chance=2, jostle_chance=2, ignore_throwspeed_threshold=TRUE, pain_stam_pct=0.4, pain_mult=3, jostle_pain_mult=5, rip_time=1 SECONDS)
