local bengineer1 = {
	name                = [[Engineer Support Mech AI]],
	description         = [[Utilitarian vehicle designed to construct buildings and defensive structures.  Unarmed.]],
        acceleration        = 0.06,
        brakerate           = 1.5,
        buildpic            = [[bengineermkii.png]],
	buildCostEnergy     = 140,
	buildCostMetal      = 112,
        buildDistance       = 220,
        builder             = true,

	buildoptions            = {
                [[bsupplydepotai]],
                [[bpowerplant]],
                [[bbeacon]],
                [[bradartower]],
                [[bjammertower]],
                [[blandturret]],
                [[bairturret]],
                [[bgatlingturret]],
                [[bmechturret]],
                [[btankcruiserfactory]],
                [[baircruiserfactory]],
                [[bmechcruiserfactory]],
                [[badvtankcruiserfactory]],
                [[badvaircruiserfactory]],
                [[badvmechcruiserfactory]],	                
				
        },

	buildTime           = 15,
        canAssist           = false,
	canFight            = false,
        canGuard            = true,
	canMove		    = true,
	canPatrol           = true,
        canReclaim          = true,
	canstop             = [[1]],
	category            = [[LAND]],
        corpse              = [[DEAD]],
        reclaimable         = false,

	defaultmissiontype  = [[Standby]],
        energyMake          = 0,
	explodeAs           = [[SMALL_UNIT]],
        footprintx          = 2,
	footprintZ          = 2,
	idleAutoHeal        = 0,
	leaveTracks         = true,
	maneuverleashlength = [[640]],
	mass                = 70,
	maxDamage           = 350,
        maxSlope            = 36,
	maxVelocity         = 2,
        maxWaterDepth       = 22,
        metalMake           = 0.25,
	minCloakDistance    = 75,
	movementClass       = [[Engineer2x2]],
        noChaseCategory     = [[MINERALS LAND SINK HOVER FIXEDWING GUNSHIP SHIP FLOAT SUB]],
	objectName          = "bengineermkii.s3o",
        onoffable           = false,
        seismicSignature    = 4,
        selfDestructAs      = [[SMALL_UNIT]],
        side                = [[NKG]],
        sightDistance       = 500,

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

	smoothAnim          = true,
	steeringmode        = [[1]],
	TEDClass            = [[TANK]],
        terraformSpeed      = 300,
	reclaimSpeed        = 300,
	repairSpeed         = 0.5,
	trackOffset         = 12,
	trackStrength       = 5,
	trackStretch        = 1,
	trackType           = [[StdTank]],
	trackWidth          = 15,
	turninplace         = 0,
	turnInPlace         = 0,
	turnRate            = 560,
	showNanospray	    = 0,
	workerTime          = 1,
	script		    = "bengineermkii.lua",

	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Engineer]],
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
	      metal            = 56,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 70,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Engineer]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 175,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 28,
	      object           = [[b2x2heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 70,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },

  	  },

	}


return lowerkeys({ ["bengineer1"] = bengineer1 })