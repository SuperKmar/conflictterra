	unitDef = {
	  unitname            = [[badvrocketbattleship]],
	  name                = [[Sasaki Class Battleship]],
	  description         = [[Advanced Rocket Battleship - Naval vessel that attacks with three missile barrages. - Build Limit: 5]],
	  acceleration        = 0.03,
	  bmcode              = [[1]],
	  brakeRate           = 0.03,
	  buildCostEnergy     = 2300,
	  buildCostMetal      = 1840,
	  builder             = false,
	  buildPic            = [[badvrocketbattleship.png]],
	  buildTime           = 32,
	  canAttack           = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canstop             = [[1]],
	  category            = [[SHIP]],
	  corpse              = [[DEAD]],
          reclaimable         = false,
	
	  defaultmissiontype  = [[Standby]],
	  explodeAs           = [[BIG_UNIT]],
          floater             = true,
	  footprintX          = 6,
	  footprintZ          = 6,
          collisionVolumeOffsets = [[0 8 0]],
          collisionVolumeScales  = [[80 80 256]],
          collisionVolumeTest    = 1,
          collisionVolumeType    = [[box]],
	  idleAutoHeal        = 0,
	  maneuverleashlength = [[640]],
	  mass                = 2300,
	  maxDamage           = 5000,
	  maxVelocity         = 1.5,
	  minCloakDistance    = 75,
	  minWaterDepth       = 15,
	  movementClass       = [[BOAT6]],
	  moveState           = 0,
	  noAutoFire          = false,
	  noChaseCategory     = [[FIXEDWING SATELLITE GUNSHIP SUB]],
	  objectName          = [[badvrocketbattleship.s3o]],
	  seismicSignature    = 4,
	  selfDestructAs      = [[BIG_UNIT]],
	  side                = [[NKG]],
	  sightDistance       = 440,
	  smoothAnim          = true,
	  steeringmode        = [[1]],
	  TEDClass            = [[SHIP]],
	  turnRate            = 90,
	  workerTime          = 0,
          waterline           = 5,
	  unitRestricted      = 5,
          script              = [[badvrocketbattleship.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Rocket]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },

	    {
	      def                = [[Rocket]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },

	    {
	      def                = [[Rocket]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },

	    {
	      def                = [[Rocket]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },

	    {
	      def                = [[Rocket]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },

	    {
	      def                = [[Rocket]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },

	    {
	      def                = [[Rocket]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },

	    {
	      def                = [[Rocket]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
	    },

	    {
	      def                = [[Rocket]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 180,
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
	      explosionGenerator      = [[custom:PLASMA_Expl]],
	      flightTime              = 2.5,
	      interceptedByShieldType = 1,
	      lineOfSight             = true,
	      range                   = 440,
	      reloadtime              = 10,
	      smokeTrail              = true,
	      soundHit                = [[argh/Argh_LargeExplosion]],
	      soundStart              = [[nexuiz/rocket_fire]],
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
	      description      = [[Wreckage - Advanced Rocket Battleship]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 3750,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 920,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Advanced Rocket Battleship]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 2500,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 6,
	      footprintZ       = 6,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 460,
	      object           = [[b6x6heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ badvrocketbattleship = unitDef })