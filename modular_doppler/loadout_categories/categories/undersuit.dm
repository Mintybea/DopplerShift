/datum/loadout_category/undersuit
	category_name = "Undersuit"
	category_ui_icon = FA_ICON_SHIRT
	type_to_generate = /datum/loadout_item/undersuit
	tab_order = /datum/loadout_category/suit::tab_order + 1

/*
*	LOADOUT ITEM DATUMS FOR THE UNDERSUIT SLOT
*/

/datum/loadout_item/undersuit
	abstract_type = /datum/loadout_item/undersuit

/datum/loadout_item/undersuit/pre_equip_item(datum/outfit/outfit, datum/outfit/outfit_important_for_life, mob/living/carbon/human/equipper, visuals_only = FALSE) // don't bother storing in backpack, can't fit
	if(initial(outfit_important_for_life.uniform))
		return TRUE

/datum/loadout_item/undersuit/insert_path_into_outfit(datum/outfit/outfit, mob/living/carbon/human/equipper, visuals_only = FALSE, override_items = LOADOUT_OVERRIDE_BACKPACK)
	if(override_items == LOADOUT_OVERRIDE_BACKPACK && !visuals_only)
		if(outfit.uniform)
			LAZYADD(outfit.backpack_contents, outfit.uniform)
		outfit.uniform = item_path
	else
		outfit.uniform = item_path

/*
*	DOPPLER STANDARD UNIFORM OPTIONS
*/

/datum/loadout_item/undersuit/doppler_uniform
	name = "Doppler Uniform"
	item_path = /obj/item/clothing/under/misc/doppler_uniform/standard

/datum/loadout_item/undersuit/doppler_uniform/overalls
	name = "Doppler Uniform w/ Overalls"
	item_path = /obj/item/clothing/under/misc/doppler_uniform/standard/overalls

/datum/loadout_item/undersuit/doppler_uniform/cozy
	name = "Cozy Doppler Uniform"
	item_path = /obj/item/clothing/under/misc/doppler_uniform/standard/cozy

/datum/loadout_item/undersuit/doppler_uniform/cozy/overalls
	name = "Cozy Doppler Uniform w/ Overalls"
	item_path = /obj/item/clothing/under/misc/doppler_uniform/standard/cozy/overalls

/datum/loadout_item/undersuit/doppler_uniform/suit
	name = "Doppler Suit"
	item_path = /obj/item/clothing/under/misc/doppler_uniform/standard/suit

/datum/loadout_item/undersuit/doppler_uniform/suit/overalls
	name = "Doppler Suit w/ Overalls"
	item_path = /obj/item/clothing/under/misc/doppler_uniform/standard/suit/overalls

/datum/loadout_item/undersuit/doppler_uniform/suit/overalls/random
	name = "Random Doppler Suit w/ Overalls"
	item_path = /obj/item/clothing/under/misc/doppler_uniform/standard/suit/overalls/colored

/*
*	FANCYPANTS
*/

/datum/loadout_item/undersuit/pants
	name = "Pants"
	item_path = /obj/item/clothing/under/pants

/datum/loadout_item/undersuit/pants/shorts
	name = "Shorts"
	item_path = /obj/item/clothing/under/shorts

/datum/loadout_item/undersuit/pants/slacks
	name = "Slacks"
	item_path = /obj/item/clothing/under/pants/slacks

/datum/loadout_item/undersuit/pants/jeans
	name = "Jeans"
	item_path = /obj/item/clothing/under/pants/jeans

/datum/loadout_item/undersuit/pants/jeans/shorts
	name = "Jean Shorts"
	item_path = /obj/item/clothing/under/shorts/jeanshorts

/datum/loadout_item/undersuit/pants/track
	name = "Track Pants"
	item_path = /obj/item/clothing/under/pants/track

/datum/loadout_item/undersuit/pants/camo
	name = "Camo Pants"
	item_path = /obj/item/clothing/under/pants/camo

/*
*	BUTTONDOWNS
*/

/datum/loadout_item/undersuit/buttondown
	name = "Buttondown"
	item_path = /obj/item/clothing/under/costume/buttondown

/datum/loadout_item/undersuit/buttondown/slacks
	name = "Buttondown w/ Slacks"
	item_path = /obj/item/clothing/under/costume/buttondown/slacks

/datum/loadout_item/undersuit/buttondown/shorts
	name = "Buttondown w/ Shorts"
	item_path = /obj/item/clothing/under/costume/buttondown/shorts

/datum/loadout_item/undersuit/buttondown/skirt
	name = "Buttondown w/ Skirt"
	item_path = /obj/item/clothing/under/costume/buttondown/skirt


/*
*	DRESSES
*/

/datum/loadout_item/undersuit/dress
	name = "Dress"
	item_path = /obj/item/clothing/under/dress

/datum/loadout_item/undersuit/dress/evening
	name = "Evening Dress"
	item_path = /obj/item/clothing/under/dress/eveninggown

/datum/loadout_item/undersuit/dress/sun
	name = "Sun Dress"
	item_path = /obj/item/clothing/under/dress/sundress

/datum/loadout_item/undersuit/dress/striped
	name = "Striped Dress"
	item_path = /obj/item/clothing/under/dress/striped

/datum/loadout_item/undersuit/dress/tango
	name = "Tango Dress"
	item_path = /obj/item/clothing/under/dress/tango

/datum/loadout_item/undersuit/dress/skirt
	name = "Skirt Dress"
	item_path = /obj/item/clothing/under/dress/skirt

/datum/loadout_item/undersuit/dress/skirt/plaid
	name = "Plaid Skirt Dress"
	item_path = /obj/item/clothing/under/dress/skirt/plaid

/datum/loadout_item/undersuit/dress/skirt/turtle
	name = "Turtle-Skirt Dress"
	item_path = /obj/item/clothing/under/dress/skirt/turtleskirt

/datum/loadout_item/undersuit/dress/sailor
	name = "Heretical Dress"
	item_path = /obj/item/clothing/under/dress/sailor

/datum/loadout_item/undersuit/dress/tutu
	name = "Pink Tutu"
	item_path = /obj/item/clothing/under/dress/doppler/pinktutu

/datum/loadout_item/undersuit/dress/flower
	name = "Flower Dress"
	item_path = /obj/item/clothing/under/dress/doppler/flower

/datum/loadout_item/undersuit/dress/penta
	name = "Pentagram Dress"
	item_path = /obj/item/clothing/under/dress/doppler/pentagram

/datum/loadout_item/undersuit/dress/strapless
	name = "Strapless Dress"
	item_path = /obj/item/clothing/under/dress/doppler/strapless
