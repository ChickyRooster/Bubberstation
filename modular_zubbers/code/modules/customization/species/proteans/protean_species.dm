

/datum/species/protean
	id = SPECIES_PROTEAN
	examine_limb_id = SPECIES_PROTEAN

	name = "Protean"

	sexes = TRUE // We do in fact sexes
	digitigrade_customization = DIGITIGRADE_OPTIONAL

	exotic_blood = /datum/reagent/medicine/nanite_slurry
	meat = /obj/item/stack/sheet/iron

	mutanttongue = /obj/item/organ/internal/tongue/protean

	mutantbrain = /obj/item/organ/internal/brain/protean
	mutantheart = /obj/item/organ/internal/heart/protean
	mutantstomach = /obj/item/organ/internal/stomach/protean

	mutantliver = null
	mutantlungs = null
	mutantappendix = null


	changesource_flags = MIRROR_BADMIN | WABBAJACK | MIRROR_MAGIC | MIRROR_PRIDE | ERT_SPAWN | RACE_SWAP | SLIME_EXTRACT

	bodypart_overrides = list(
		BODY_ZONE_HEAD = /obj/item/bodypart/head/mutant/protean,
		BODY_ZONE_CHEST = /obj/item/bodypart/chest/mutant/protean,
		BODY_ZONE_L_ARM = /obj/item/bodypart/arm/left/mutant/protean,
		BODY_ZONE_R_ARM = /obj/item/bodypart/arm/right/mutant/protean,
		BODY_ZONE_L_LEG = /obj/item/bodypart/leg/left/mutant/protean,
		BODY_ZONE_R_LEG = /obj/item/bodypart/leg/right/mutant/protean,
	)

	inherent_traits = list(
		// Default station species ones
		TRAIT_ADVANCEDTOOLUSER,
		TRAIT_CAN_STRIP,
		TRAIT_LITERATE,
		TRAIT_MUTANT_COLORS,

		// Species exclusives
		// Needed to keep only the exclusive organs and not die randomly
		TRAIT_NOBREATH,
		TRAIT_LIVERLESS_METABOLISM,

		// Extra cool stuff
		TRAIT_RADIMMUNE,
		TRAIT_GENELESS,
		TRAIT_NO_HUSK,
		TRAIT_NO_DNA_SCRAMBLE,
		TRAIT_EASYDISMEMBER,
		TRAIT_RDS_SUPPRESSED,
		TRAIT_MADNESS_IMMUNE,
		)

	inherent_biotypes = MOB_ROBOTIC | MOB_HUMANOID

/mob/living/carbon/human/species/protean
	race = /datum/species/protean

/datum/species/protean/on_species_gain(mob/living/carbon/human/human_who_gained_species, datum/species/old_species, pref_load)
	. = ..()
