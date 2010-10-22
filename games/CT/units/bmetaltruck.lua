	unitDef = {
	  unitname            = [[bmetaltruck]],
	  name                = [[Tetsuda Type Supply Truck]],
	  description         = [[Metal Supply Truck - Supply truck that provides 25 metal storage.  Can morph into an immobile depot that provides more metal storage.]],
	  acceleration        = 0.04,
	  activateWhenBuilt   = true,
	  bmcode              = [[1]],
	  brakeRate           = 0.02,
	  buildCostEnergy     = 200,
	  buildCostMetal      = 160,
	  builder             = false,
	  reclaimable         = false,

	  buildPic            = [[bmetaltruck.png]],
	  buildTime           = 40,
	  canAttack           = false,
	  canGuard            = false,
	  canMove             = true,
	  canPatrol           = false,
          canReclaim          = false,
	  canFight            = false,
	  canstop             = [[1]],
	  category            = [[LAND]],
	  corpse              = [[DEAD]],
	
	  defaultmissiontype  = [[Standby]],
          energyMake          = 0,
	  energyStorage       = 0,
	  energyUse           = 0,
	  explodeAs           = [[MEDIUM_UNIT]],
          footprintx          = 4,
	  footprintZ          = 4,
	  idleAutoHeal        = 0,
	  leaveTracks         = true,
	  maneuverleashlength = [[640]],
	  mass                = 200,
	  maxDamage           = 1150,
	  maxSlope            = 18,
	  maxVelocity         = 2,
	  maxWaterDepth       = 22,
          metalMake           = 0,
	  metalStorage        = 25,
	  minCloakDistance    = 75,
	  movementClass       = [[MedTANK]],
	  moveState           = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS LAND SINK HOVER FIXEDWING GUNSHIP SHIP FLOAT SUB]],
	  objectName          = [[bmetaltruck.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[MEDIUM_UNIT]],
	  side                = [[NKG]],
	  sightDistance       = 400,
	  smoothAnim          = true,

	  sounds			= {
	      select = {
		"argh/Argh_TankSound",
		},
	      ok = {
		"argh/Argh_TankSound",
		},
	  },

	  steeringmode        = [[1]],
	  TEDClass            = [[TANK]],
	  trackOffset         = 3,
	  trackStrength       = 6,
	  trackStretch        = 1,
	  trackType           = [[StdTank]],
	  trackWidth          = 24,
	  turninplace         = 0,
	  turnRate            = 550,
          script              = [[bmetaltruck.lua]],
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Metal Supply Truck]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 862,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 80,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Metal Supply Truck]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 575,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 4,
	      footprintZ       = 4,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 40,
	      object           = [[b4x4heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ bmetaltruck = unitDef })
