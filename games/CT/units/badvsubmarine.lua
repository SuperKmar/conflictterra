	unitDef = {
	  unitname            = [[badvsubmarine]],
	  name                = [[Osui Class Submarine]],
	  description         = [[Advanced Submarine - Advanced submarine that fires four torpedoes. - Build Limit: 10]],
	  acceleration        = 0.02,
          activateWhenBuilt   = true,
	  brakeRate           = 0.23,
	  buildCostEnergy     = 600,
	  buildCostMetal      = 480,
	  builder             = false,
	  buildPic            = [[badvsubmarine.png]],
	  buildTime           = 36,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canStop             = true,
	  category            = [[SUB]],
          collisionVolumeOffsets = [[0 0 -8]],
          collisionVolumeScales  = [[50 50 200]],
          collisionVolumeTest    = 1,
          collisionVolumeType    = [[box]],
	  corpse              = [[DEAD]],
          reclaimable         = false,
	
	  explodeAs           = [[MEDIUM_UNIT]],
	  footprintX          = 5,
	  footprintZ          = 5,
	  idleAutoHeal        = 0,
	  mass                = 300,
	  maxDamage           = 2500,
	  maxVelocity         = 2.25,
	  minCloakDistance    = 75,
	  minWaterDepth       = 45,
	  movementClass       = [[SubBOAT5x5]],
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS LAND SINK HOVER FIXEDWING GUNSHIP]],
	  objectName          = [[badvsubmarine.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[MEDIUM_UNIT]],
	  side                = [[NKG]],
	  sightDistance       = 500,
	  smoothAnim          = true,

	  sounds			= {
	      select = {
		"ct/sonarbing",
		},
	      ok = {
		"ct/sonarbing",
		},
	  },

          sonarDistance       = 500,
	  turnRate            = 225,
          waterline           = 45,
	  unitRestricted      = 10,
          script              = [[badvsubmarine.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Torpedo]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 45,
	      onlyTargetCategory = [[SWIM SUB FLOAT SHIP]],
	    },
	
	
	    {
	      def                = [[Torpedo]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 45,
	      onlyTargetCategory = [[SWIM SUB FLOAT SHIP]],
	    },

	    {
	      def                = [[Torpedo]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 45,
	      onlyTargetCategory = [[SWIM SUB FLOAT SHIP]],
	    },

	    {
	      def                = [[Torpedo]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 45,
	      onlyTargetCategory = [[SWIM SUB FLOAT SHIP]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Torpedo = {
	      name                    = [[Torpedo]],
	      areaOfEffect            = 16,
	      avoidFriendly           = false,
	      burnblow                = true,
	      collideFriendly         = false,
	      craterMult              = 0.25,
	
	      damage                  = {
		default = 400,
		Cruiser = 400,
		Building = 400,
		Mech = 400,
		Tank = 400,
		Aircraft = 400,
		Ship = 400,
		Sub = 400,
	      },
	
	      explosionGenerator      = [[custom:PLASMA_Expl]],
	      interceptedByShieldType = 1,
	      impulseFactor           = 0,
	      lineOfSight             = true,
	      model                   = [[btorpedo.s3o]],
	      range                   = 500,
	      reloadtime              = 3,
	      soundHit                = [[argh/Argh_LargeExplosion]],
	      soundStart              = [[evolutionRTS/torpedolaunch]],
	      startVelocity           = 140,
	      tolerance               = 42767,
	      tracks                  = true,
	      turnRate                = 8000,
	      turret                  = false,
	      waterWeapon             = true,
	      weaponAcceleration      = 15,
	      weaponTimer             = 4,
	      weaponType              = [[TorpedoLauncher]],
	      weaponVelocity          = 140,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Advanced Submarine]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 1875,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 240,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Advanced Submarine]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 1250,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 5,
	      footprintZ       = 5,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 120,
	      object           = [[b5x5heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ badvsubmarine = unitDef })