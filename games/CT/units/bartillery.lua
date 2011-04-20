	unitDef = {
	  unitname            = [[bartillery]],
	  name                = [[Uma Type Hover Truck]],
	  description         = [[Artillery Hover Truck - Light mobile artillery.  Stronger against buildings than units.]],
	  acceleration        = 0.02,
	  brakeRate           = 0.02,
	  buildCostEnergy     = 350,
	  buildCostMetal      = 350,
	  builder             = false,
	  buildPic            = [[bartillery.png]],
	  buildTime           = 15,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canstop             = [[1]],
	  canHover            = true,
	  category            = [[HOVER]],
	  corpse              = [[DEAD]],
          reclaimable         = false,
	
	  explodeAs           = [[SMALL_UNIT]],
	  footprintX          = 2,
	  footprintZ          = 2,
	  highTrajectory      = 2,
	  idleAutoHeal        = 0,
	  mass                = 80,
	  maxDamage           = 900,
	  maxSlope            = 18,
	  maxVelocity         = 1.75,
	  maxWaterDepth       = 22,
	  minCloakDistance    = 75,
	  movementClass       = [[HOVER2x2]],
	  moveState           = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS FIXEDWING GUNSHIP SUB]],
	  objectName          = [[bartillery.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[SMALL_UNIT]],

	  	    
	  sfxtypes            = {
	
	    explosiongenerators = {
		"custom:orc_machinegun_flash",
		"custom:orc_machinegun_muzzle",
	    },
	
	  },

	  sounds			= {
	      select = {
		"ct/hoverengine",
		},
	      ok = {
		"ct/hoverengine",
		},
	  },

	  side                = [[NKG]],
	  sightDistance       = 750,
	  smoothAnim          = true,
	  turnInPlace         = 1,
	  turnRate            = 1000,
          script              = [[bartillery.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Cannon]],
	      badTargetCategory  = [[SWIM LAND SHIP HOVER]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Cannon = {
	      name                    = [[Artillery Cannon]],
	      areaOfEffect            = 64,
	      craterMult              = 0.25,
	
	      damage                  = {
		default = 200,
		Cruiser = 200,
		Building = 500,
		Mech = 200,
		Tank = 200,
		Aircraft = 200,
		Ship = 200,
		Sub = 200,
	      },
	
	      model                   = [[bshell.s3o]],
	      explosionGenerator      = [[custom:LRPC_Expl]],
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      myGravity               = 0.1,
	      range                   = 1250,
	      reloadtime              = 7.5,
	      soundHit                = [[argh/Argh_MedExplosion]],
	      soundStart              = [[argh/Argh_Whamsound]],
	      turret                  = true,
	      weaponType              = [[Cannon]],
	      weaponVelocity          = 750,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Uma Type Hover Truck]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 450,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      metal            = 175,
	      object           = [[wrecks/bartillerywreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 5100,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Uma Type Hover Truck]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 225,
	      energy           = 0,
	      footprintX       = 2,
	      footprintZ       = 2,
	      metal            = 87,
	      object           = [[b2x2heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 2550,
	    },
	
	  },
	
	}
	
	return lowerkeys({ bartillery = unitDef })