local kdroneminer = {
	name                = [[Drone Petard]],
	description         = [[The Drone Petard is a walking bomb that deals higher damage to buildings.]],
    acceleration        = 0.06,
    brakerate           = 1.5,
    buildpic            = [[kdroneminer.png]],
	buildCostEnergy     = 500,
	buildCostMetal      = 500,
    buildDistance       = 150,
    builder             = false,


	buildTime           = 15,
    canAssist           = true,
	CanAttack 			= 1,
	CanCapture			= false,
    canGuard            = true,
	canMove		  	    = true,
	canPatrol           = true,
    canReclaim          = true,
	canstop             = [[1]],
	category            = [[LAND]],
    corpse              = [[DEAD]],
	kamikaze			= true,
	kamikazeDistance	= 80,
    reclaimable         = false,
    defaultmissiontype  = [[Standby]],
    energyMake          = 0,
	explodeAs           = [[DRONE_PETARD]],
    footprintx          = 2,
	footprintZ          = 2,
	idleAutoHeal        = 1,
	leaveTracks         = false,
	maneuverleashlength = [[640]],
	mass                = 80,
	maxDamage           = 250,
    maxSlope            = 99999999,
	maxVelocity         = 4,
    maxWaterDepth       = 10000,
    metalMake           = 0,
	minCloakDistance    = 75,
	movementClass       = [[kdrone]],
    noChaseCategory     = [[MINERALS]],
	objectName          = "kdroneminer.s3o",
    onoffable           = false,
    seismicSignature    = 4,
    selfDestructAs      = [[DRONE_PETARD]],
    side                = [[Drone]],
    sightDistance       = 300,
	sounds			= {
	      select = {
		"golgotha/vehicle_done_44khz",
		},
	      ok = {
		"golgotha/vehicle_done_44khz",
		},
	  },


	


		weapons             = {
	
	    {
	      def                = [[Mine]],
	      badTargetCategory  = [[GUNSHIP SINK FLOAT]],
	      onlyTargetCategory = [[SWIM LAND SHIP SINK FLOAT GUNSHIP HOVER]],
	    },
	
	  },
	
		
	weaponDefs             = {
	
	    Mine = {
	      name                    = [[Mine]],
	      areaOfEffect            = 8,
	      collideFriendly         = false,
	      craterMult              = 0.25,
		  range                   = 200,
	
	      damage                  = {
		Cruiser = 10,
		Building = 1000,
		Mech = 10,
		Tank = 10,
		Aircraft = 10,
		Ship = 10,
		Sub = 10,
	      },
	
	      
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
	script		    = "kdroneengineer.lua",

	featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Drone Petard]],
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
	      description      = [[Debris - Drone Petard]],
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


return lowerkeys({ ["kdroneminer"] = kdroneminer })