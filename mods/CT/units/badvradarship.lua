	unitDef = {
	  unitname            = [[badvradarship]],
	  name                = [[Wakaru Class Radar Ship]],
	  description         = [[Advanced Radar Ship - Advanced radar and sonar equipped vessel. - Build Limit: 10]],
	  acceleration        = 0.05,
	  bmcode              = [[1]],
	  brakeRate           = 0.06,
	  buildCostEnergy     = 400,
	  buildCostMetal      = 320,
	  builder             = false,
	  buildPic            = [[badvradarship.png]],
	  buildTime           = 24,
	  canAttack           = false,
	  canGuard            = true,
	  canFight            = false,
	  canMove             = true,
	  canPatrol           = true,
	  canstop             = [[1]],
	  category            = [[SHIP]],
	  corpse              = [[DEAD]],
          reclaimable         = false,
	
	  defaultmissiontype  = [[Standby]],
	  explodeAs           = [[BIG_UNIT]],
          floater             = true,
	  footprintX          = 5,
	  footprintZ          = 5,
          collisionVolumeOffsets = [[0 0 0]],
          collisionVolumeScales  = [[48 64 128]],
          collisionVolumeTest    = 1,
          collisionVolumeType    = [[box]],
	  idleAutoHeal        = 0,
	  maneuverleashlength = [[640]],
	  mass                = 375,
	  maxDamage           = 3500,
	  maxVelocity         = 2.5,
	  minCloakDistance    = 75,
	  minWaterDepth       = 5,
	  movementClass       = [[BOAT3]],
	  moveState           = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[TERRAFORM LAND SINK SHIP SATELLITE SWIM FLOAT SUB HOVER]],
	  objectName          = [[badvradarship.s3o]],
          radarDistance       = 2500,
          sonarDistance       = 2500,
	  seismicSignature    = 4,
	  selfDestructAs      = [[BIG_UNIT]],
	  side                = [[NKG]],
	  sightDistance       = 400,
	  smoothAnim          = true,
	  steeringmode        = [[1]],

	  sounds			= {
	      select = {
		"ct/shipbell",
		},
	      ok = {
		"ct/shipbell",
		},
	  },

	  TEDClass            = [[SHIP]],
	  turnRate            = 416,
	  workerTime          = 0,
          waterline           = 4,
	  unitRestricted      = 10,
          script              = [[badvradarship.lua]],
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Advanced Radar Ship]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 2625,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 160,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Advanced Radar Ship]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 1750,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 5,
	      footprintZ       = 5,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 80,
	      object           = [[b5x5heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ badvradarship = unitDef })