	unitDef = {
	  unitname            = [[bacemech]],
	  name                = [[Maeda Combat Mech]],
	  description         = [[Ace Mech - High powered SM armed with dual cannons and powerful beam weapons.  Unlocks Advanced Combat Mechs. - Build Limit: 1]],
	  acceleration        = 1,
	  brakeRate           = 0.1,
	  buildCostEnergy     = 1000,
	  buildCostMetal      = 1000,
	  builder             = false,
	  buildPic            = [[bacemech.png]],
	  buildTime           = 60,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canStop             = true,
	  category            = [[LAND]],
	  corpse              = [[DEAD]],
          reclaimable         = false,

	  customParams = {
	  	ProvideTech   = [[Ace Pilot's Presence]],
	  },
	
	  explodeAs           = [[BIG_UNIT]],
	  footprintX          = 4,
	  footprintZ          = 4,
	  idleAutoHeal        = 0,
	  mass                = 175,
	  maxDamage           = 1250,
	  maxSlope            = 36,
	  maxVelocity         = 5,
	  maxWaterDepth       = 22,
	  minCloakDistance    = 75,
	  movementClass       = [[Mech4x4]],
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP SUB]],
	  objectName          = [[bacemech.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[BIG_UNIT]],

	  side                = [[NKG]],
	  sightDistance       = 600,
	  smoothAnim          = true,

	  sounds			= {
	      select = {
		"golgotha/vehicle_done_44khz",
		},
	      ok = {
		"golgotha/vehicle_done_44khz",
		},
	  },

	  sfxtypes            = {
	
	    explosiongenerators = {
		"custom:ct_cannon_narrow",
		"custom:ct_jumpjet",
	    },
	
	  },

	  turnInPlace         = 1,
	  turnRate            = 1000,
	  upright             = true,
	  unitRestricted      = 1,
          script              = [[bacemech.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Laser]],
	      badTargetCategory  = [[SINK FLOAT]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[SWIM LAND SHIP SINK FLOAT HOVER]],
	    },

	    {
	      def                = [[Laser]],
	      badTargetCategory  = [[SINK FLOAT]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[SWIM LAND SHIP SINK FLOAT HOVER]],
	    },

	    {
	      def                = [[Cannon]],
	      badTargetCategory  = [[SINK FLOAT]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	   Laser = {
	      name                    = [[Beam Laser]],
	      areaOfEffect            = 20,
	      beamTime                = 1,
	      craterMult              = 0.25,
	      accuracy                = 100,
	
	      damage                  = {
		default = 500,
	        Cruiser = 500,
		Building = 500,
	        Mech = 500,
		Tank = 500,
	        Aircraft = 500,
		Ship = 500,
		Sub = 500,

		Meteor = 0,
		Drone = 500,
		Spare1 = 500,
		Spare2 = 500,
		Spare3 = 500,

	      },
	
	      energypershot           = 0,
	      explosionGenerator      = [[custom:megapartgun]],
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      largeBeamLaser          = true,
	      laserFlareSize          = 2,
	      lineOfSight             = true,
	      minIntensity            = 1,
	      range                   = 600,
	      reloadtime              = 4,
	      rgbColor                = [[0 0 1]],
	      soundStart              = [[argh/Argh_PlasmaBreach]],
	      targetMoveError         = 0.3,
	      thickness               = 10,
	      coreThickness           = 0.5,
	      tolerance               = 10000,
	      turret                  = true,
	      weaponType              = [[BeamLaser]],
	      weaponVelocity          = 1400,
	    },

	    Cannon = {
	      name                    = [[Light Cannon]],
	      areaOfEffect            = 32,
	      craterMult              = 0.25,
	      accuracy                = 200,
	
	      damage                  = {
		default = 100,
		Cruiser = 100,
		Building = 100,
		Mech = 100,
		Tank = 100,
		Aircraft = 100,
		Ship = 100,
		Sub = 100,

		Meteor = 0,
		Drone = 100,
		Spare1 = 100,
		Spare2 = 100,
		Spare3 = 100,
	      },
	
	      model                   = [[projectiles/bshell.s3o]],
	      explosionGenerator      = [[custom:PLASMA_Expl]],
	      interceptedByShieldType = 1,
	      range                   = 600,
	      reloadtime              = 1,
	      soundHit                = [[argh/Argh_MedExplosion]],
	      soundStart              = [[argh/Argh_heavy_machinegun]],
	      turret                  = true,
	      weaponType              = [[Cannon]],
	      weaponVelocity          = 750,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Honda Combat Mech MkII]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 625,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 4,
	      footprintZ       = 4,
	      metal            = 500,
	      object           = [[wrecks/bacemechwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 30000,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Honda Combat Mech MkII]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 312,
	      energy           = 0,
	      footprintX       = 4,
	      footprintZ       = 4,
	      metal            = 250,
	      object           = [[b4x4heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15000,
	    },
	
	  },
	
	}
	
	return lowerkeys({ bacemech = unitDef })