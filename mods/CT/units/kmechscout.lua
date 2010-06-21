	unitDef = {
	  unitname            = [[kmechscout]],
	  name                = [[Mech Scout]],
	  description         = [[Mech Scout]],
	  acceleration        = 0.36,
	  bmcode              = [[1]],
	  brakeRate           = 0.2,
	  buildCostEnergy     = 65,
	  buildCostMetal      = 65,
	  builder             = false,
	  buildPic            = [[kmechscout.png]],
	  buildTime           = 15,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canstop             = [[1]],
	  category            = [[LAND]],
	  corpse              = [[DEAD]],
          reclaimable         = false,
	
	  defaultmissiontype  = [[Standby]],
	  explodeAs           = [[SMALL_UNITEX]],
	  footprintX          = 3,
	  footprintZ          = 3,
	  idleAutoHeal        = 0,
	  maneuverleashlength = [[640]],
	  mass                = 32.5,
	  maxDamage           = 500,
	  maxSlope            = 36,
	  maxVelocity         = 2.5,
	  maxWaterDepth       = 22,
	  minCloakDistance    = 75,
	  movementClass       = [[KBOT2]],
	  noAutoFire          = false,
	  noChaseCategory     = [[TERRAFORM FIXEDWING SATELLITE SUB]],
	  objectName          = [[kmechscout.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[SMALL_UNITEX]],

	  sfxtypes            = {
	
	    explosiongenerators = {
	      [[custom:emg_shells_l]],
	      [[custom:flashmuzzle1]],
	    },
	
	  },

	  side                = [[NKG]],
	  sightDistance       = 300,
	  smoothAnim          = true,
	  steeringmode        = [[2]],
	  TEDClass            = [[KBOT]],
	  turninplace         = 0,
	  turnRate            = 1250,
	  upright             = true,
	  workerTime          = 0,
          script              = [[kmechscout.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Machine_Gun]],
	      badTargetCategory  = [[FIXEDWING GUNSHIP]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[FIXEDWING LAND SINK SHIP SWIM FLOAT GUNSHIP HOVER]],
	    },

	    {
	      def                = [[Machine_Gun]],
	      badTargetCategory  = [[FIXEDWING GUNSHIP]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[FIXEDWING LAND SINK SHIP SWIM FLOAT GUNSHIP HOVER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Machine_Gun = {
	      name                    = [[Rapid Fire Cannon]],
	      areaOfEffect            = 8,
	      craterMult              = 0.25,
	      accuracy                = 200,
	
	      damage                  = {
		Cruiser = 15,
		Building = 15,
		Mech = 15,
		Tank = 15,
		Aircraft = 15,
		Ship = 15,
		Sub = 1,
	      },
	
	      explosionGenerator      = [[custom:EMG_HIT]],
	      interceptedByShieldType = 1,
	      lineOfSight             = true,
	      range                   = 300,
	      reloadtime              = 0.2,
	      rgbColor                = [[1 0.95 0.4]],
	      separation              = 2,
              size                    = 1.25,
	      soundStart              = [[ct/bmachinegunfire]],
	      soundStartVolume        = 0.5,
	      soundTrigger            = true,
	      stages                  = 50,
	      sprayAngle              = 1180,
	      tolerance               = 8000,
	      turret                  = true,
	      weaponType              = [[Cannon]],
	      weaponVelocity          = 750,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Basic Mech]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 160,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 15,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Basic Mech]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 160,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 3,
	      footprintZ       = 3,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 15,
	      object           = [[b3x3heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ kmechscout = unitDef })