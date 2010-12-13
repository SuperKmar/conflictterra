local kdronewarrior = {
	name                = [[Drone Warrior]],
	description         = [[The Drone Warrior is a power attacking unit.]],
    acceleration        = 0.06,
    brakerate           = 1.5,
    buildpic            = [[kdronewarrior.png]],
	buildCostEnergy     = 150,
	buildCostMetal      = 300,
    buildDistance       = 150,
    builder             = true,
	buildoptions		= {
        [[kdronewarrior]],            
	},

	buildTime           = 15,
    canAssist           = true,
	CanAttack 			=1,
	CanCapture			=1,
    canGuard            = true,
	canMove		  	    = true,
	canPatrol           = true,
    canReclaim          = true,
	canstop             = [[1]],
	category            = [[LAND]],
    corpse              = [[DEAD]],
    reclaimable         = false,
    defaultmissiontype  = [[Standby]],
    energyMake          = 1,
	explodeAs           = [[SMALL_UNIT]],
    footprintx          = 2,
	footprintZ          = 2,
	idleAutoHeal        = 1,
	leaveTracks         = false,
	maneuverleashlength = [[640]],
	mass                = 80,
	maxDamage           = 100,
    maxSlope            = 99999999,
	maxVelocity         = 3,
    maxWaterDepth       = 10000,
    metalMake           = 0,
	minCloakDistance    = 75,
	movementClass       = [[kdrone]],
    noChaseCategory     = [[MINERALS]],
	objectName          = "kdronewarrior.s3o",
    onoffable           = false,
    seismicSignature    = 4,
    selfDestructAs      = [[SMALL_UNIT]],
    side                = [[Drone]],
    sightDistance       = 600,
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
		"custom:buildersparks",
	    },
	
	  },

	weapons             = {
	
	    {
	      def                = [[Laser]],
	      badTargetCategory  = [[GUNSHIP SINK FLOAT]],
	      onlyTargetCategory = [[SWIM LAND SHIP SINK FLOAT GUNSHIP HOVER]],
	    },
	
	  },
	
	
	weaponDefs             = {
	
	    Laser = {
	      name                    = [[Burst Laser]],
	      areaOfEffect            = 8,
	      coreThickness           = 0.5,
	      collideFriendly         = false,
	      craterMult              = 0.25,
	
	      damage                  = {
		Cruiser = 100,
		Building = 100,
		Mech = 100,
		Tank = 100,
		Aircraft = 100,
		Ship = 100,
		Sub = 100,
	      },
	
	      duration                = 0.02,
	      energypershot           = 0,
	      interceptedByShieldType = 1,
	      heightMod               = 0.5,
	      lineOfSight             = true,
	      range                   = 150,
	      reloadtime              = 0.5,
	      rgbColor                = [[0 1 0]],
	      soundStart              = [[ct/pew1]],
	      targetMoveError         = 0.15,
	      thickness               = 1,
	      tolerance               = 10000,
	      turret                  = true,
	      weaponType              = [[LaserCannon]],
	      weaponVelocity          = 1500,
	    },
	
	  },
	  
	smoothAnim          = true,
	steeringmode        = [[1]],
    terraformSpeed      = 300,
	reclaimSpeed        = 300,
	trackOffset         = 12,
	trackStrength       = 5,
	trackStretch        = 1,
	trackType           = [[StdTank]],
	trackWidth          = 15,
	turninplace         = 0,
	turnInPlace         = 0,
	turnRate            = 560,
	showNanospray	    = 1,
	Resurrectspeed      =100,
	workerTime          = 1,
	script		    = "kdronewarrior.lua",

	featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Drone Engineer]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 262,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 3,
	      footprintZ       = 3,
	      height           = [[20]],
	      hitdensity       = [[100]],
	      metal            = 50,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 70,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Drone Engineer]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 175,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 25,
	      object           = [[b2x2heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 70,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },

  	  },

	}


return lowerkeys({ ["kdronewarrior"] = kdronewarrior })