local bscoutmech = {
	name                = [[Hashiba Scout Mech]],
	description         = [[Recon Mech - Very fast, lightly armored reconnaissance mech.  Unarmed and radar equipped.  Can build temporary camera towers.]],
        acceleration        = 0.5,
        brakerate           = 1.5,
        buildpic            = [[bscoutmech.png]],
	buildCostEnergy     = 100,
	buildCostMetal      = 100,
        buildDistance       = 220,
        builder             = true,

	buildoptions            = {
                [[bcameratower]],	                
        },

	buildTime           = 10,
        canAssist           = false,
	canFight            = false,
        canGuard            = true,
	canMove		    = true,
	canPatrol           = true,
        canReclaim          = true,
	canRepair           = false,
	canStop             = true,
	category            = [[LAND]],
        corpse              = [[DEAD]],
        reclaimable         = false,

        energyMake          = 0,
	explodeAs           = [[SMALL_UNIT]],
        footprintx          = 3,
	footprintZ          = 3,
	idleAutoHeal        = 0,
	leaveTracks         = false,
	mass                = 70,
	maxDamage           = 350,
        maxSlope            = 36,
	maxVelocity         = 7,
        maxWaterDepth       = 22,
        metalMake           = 0,
	minCloakDistance    = 75,
	movementClass       = [[Mech3x3]],
        noChaseCategory     = [[MINERALS LAND SINK HOVER FIXEDWING GUNSHIP SHIP FLOAT SUB]],
	objectName          = "bscoutmech.s3o",
        seismicSignature    = 4,
        selfDestructAs      = [[SMALL_UNIT]],
        side                = [[NKG]],
        sightDistance       = 750,

	  sounds			= {
	      select = {
		"golgotha/vehicle_done_44khz",
		},
	      ok = {
		"golgotha/vehicle_done_44khz",
		},
	  },

	smoothAnim          = true,
        terraformSpeed      = 300,
	reclaimSpeed        = 300,
        radarDistance       = 750,
	turnInPlace         = 1,
	turnRate            = 1000,
	showNanospray	    = 0,
	workerTime          = 1,
	upright             = true,
	script		    = "bscoutmech.lua",

	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Scout Mech]],
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
	      description      = [[Debris - Scout Mech]],
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


return lowerkeys({ ["bscoutmech"] = bscoutmech })