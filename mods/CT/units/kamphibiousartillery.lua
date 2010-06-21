	unitDef = {
	  unitname            = [[kamphibiousartillery]],
	  name                = [[Tatakau Type Tank]],
	  description         = [[Siege Artillery - Medium mobile artillery.  Fires inaccurate missiles.]],
	  acceleration        = 0.04,
	  bmcode              = [[1]],
	  brakeRate           = 0.2,
	  buildCostEnergy     = 220,
	  buildCostMetal      = 220,
	  builder             = false,
	  buildPic            = [[kamphibiousartillery.png]],
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
	  explodeAs           = [[BIG_UNITEX]],
	  footprintX          = 3,
	  footprintZ          = 3,
	  idleAutoHeal        = 0,
	  leaveTracks         = true,
	  maneuverleashlength = [[640]],
	  mass                = 110,
	  maxDamage           = 1100,
	  maxSlope            = 18,
	  maxVelocity         = 1,
	  minWaterDepth       = 0,
	  minCloakDistance    = 75,
	  movementClass       = [[TANK3]],
	  moveState           = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[TERRAFORM SATELLITE SUB]],
	  objectName          = [[kamphibiousartillery.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[BIG_UNITEX]],

	  sfxtypes            = {
	
	    explosiongenerators = {
	      [[custom:JANUSMUZZLE]],
	      [[custom:JANUSBACK]],
	    },
	
	  },

	  side                = [[NKG]],
	  sightDistance       = 484,
	  smoothAnim          = true,
	  steeringmode        = [[1]],
	  TEDClass            = [[TANK]],
	  trackOffset         = 3,
	  trackStrength       = 6,
	  trackStretch        = 1,
	  trackType           = [[StdTank]],
	  trackWidth          = 24,
	  turninplace         = 0,
	  turnRate            = 350,
	  workerTime          = 0,
          script              = [[kamphibiousartillery.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Rocket]],
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Rocket = {
	      name                    = [[Missile Barrage]],
	      areaOfEffect            = 48,
	      burst                   = 3,
	      burstrate               = 0.08,
	      craterMult              = 0.25,
	
	      damage                  = {
		Cruiser = 100,
		Building = 100,
		Mech = 100,
		Tank = 100,
		Aircraft = 100,
		Ship = 100,
		Sub = 5,
	      },
	
	      model                   = [[bsmallmissile.s3o]],
	      dance                   = 20,
	      wobble                  = 7000,
	      edgeEffectiveness       = 0.5,
	      explosionGenerator      = [[custom:MEDMISSILE_EXPLOSION]],
	      flightTime              = 2.5,
	      interceptedByShieldType = 1,
	      lineOfSight             = true,
	      range                   = 440,
	      reloadtime              = 10,
	      smokeTrail              = true,
	      soundHit                = [[rockhit]],
	      soundStart              = [[rapidrocket3]],
	      tolerance               = 500,
	      trajectoryHeight        = 1,
	      turret                  = true,
	      weaponType              = [[MissileLauncher]],
	      weaponVelocity          = 250,
	      startVelocity           = 100,
	      weaponAcceleration      = 100,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Siege Artillery]],
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
	      description      = [[Debris - Siege Artillery]],
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
	
	return lowerkeys({ kamphibiousartillery = unitDef })