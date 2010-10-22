local bengineer2 = {
	name                = [[Advanced Engineer Support Mech]],
	description         = [[Newer model of the Engineer Support Mech, capable of constructing more complex buildings.  Unarmed.]],
	acceleration        = 0.36,
        brakerate           = 1.5,
        buildpic            = [[badvengineermkii.png]],
	buildCostEnergy     = 280,
	buildCostMetal      = 224,
        buildDistance       = 220,
        builder             = true,

	buildoptions		= {
                [[badvpowerplant]],
		[[badvnuclearpower]],
		[[badvmechfactory]],
		[[badvtankfactory]],
		[[badvairport]],
		[[badvshipyard]],
		[[badvsubpens]],
                [[bbattlebeacon]],
		[[bexperimentalpad]],
		[[badvradartower]],
		[[badvjammertower]],
		[[badvlandturret]],
		[[badvairturret]],
		[[badvlandnavalturret]],
		[[badvgatlingturret]],
		[[badvmechturret]],
		[[blanddefship]],
		[[bairdefship]],
		[[bnavydefship]],
		[[bshieldgen]],
	},

	buildTime           = 25,
        canAssist           = false,
        canGuard            = true,
	canFight            = false,
	canMove		    = true,
	canPatrol           = true,
        canReclaim          = true,
	canstop             = [[1]],
	category            = [[LAND]],
        corpse              = [[DEAD]],
        reclaimable         = false,

	defaultmissiontype  = [[Standby]],
        energyMake          = 0.25,
	explodeAs           = [[SMALL_UNIT]],
        footprintx          = 3,
	footprintZ          = 3,
	idleAutoHeal        = 0,
	leaveTracks         = false,
	maneuverleashlength = [[640]],
	mass                = 100,
	maxDamage           = 500,
        maxSlope            = 36,
	maxVelocity         = 2.5,
        maxWaterDepth       = 22,
        metalMake           = 0,
	minCloakDistance    = 75,
	movementClass       = [[Engineer]],
        noChaseCategory     = [[TERRAFORM SATELLITE FIXEDWING GUNSHIP HOVER SHIP SWIM SUB LAND FLOAT SINK]],
	objectName          = "badvancedengineermkii.s3o",
        onoffable           = false,
        seismicSignature    = 4,
        selfDestructAs      = [[SMALL_UNIT]],
        side                = [[NKG]],
        sightDistance       = 500,
	smoothAnim          = true,

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

	steeringmode        = [[2]],
	TEDClass            = [[KBOT]],
        terraformSpeed      = 300,
	reclaimSpeed        = 300,
	turninplace         = 0,
	turnInPlace         = 0,
	turnRate            = 1250,
	showNanospray	    = 0,
	workerTime          = 1,
	upright             = true,
	script		    = "badvengineermkii.lua",

	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Advanced Engineer]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 375,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 3,
	      footprintZ       = 3,
	      height           = [[20]],
	      hitdensity       = [[100]],
	      metal            = 112,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 70,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Advanced Engineer]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 250,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 3,
	      footprintZ       = 3,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 56,
	      object           = [[b3x3heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 70,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },

  	  },

	}


return lowerkeys({ ["bengineer2"] = bengineer2 })