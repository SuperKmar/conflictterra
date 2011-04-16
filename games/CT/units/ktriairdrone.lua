local ktriairdrone = {
	name                = [[Tri Air Drone]],
	description         = [[The Tri Air Drone is a long range flying siege unit. Can only attack ground.]],
    acceleration        = 0.06,
    brakerate           = 1.5,
    buildpic            = [[ktriairdrone.png]],
	buildCostEnergy     = 400,
	buildCostMetal      = 400,
    buildDistance       = 150,
    builder             = false,
	buildTime           = 15,
    canAssist           = true,
	CanAttack 			= 1,
	CanCapture			= 0,
    canGuard            = true,
	canMove		  	    = true,
	canPatrol           = true,
    canReclaim          = true,
	canStop             = true,
	category            = [[GUNSHIP]],
    canFly              = true,
	corpse              = [[DEAD]],
    cruiseAlt           = 50,
	reclaimable         = false,

    energyMake          = 1,
	explodeAs           = [[SMALL_UNIT]],
    footprintx          = 2,
	footprintZ          = 2,
	hoverAttack         = true,
	idleAutoHeal        = 1,
	leaveTracks         = false,
	mass                = 80,
	maxDamage           = 1000,
    maxSlope            = 99999999,
	maxVelocity         = 4,
    maxWaterDepth       = 10000,
    metalMake           = 0,
	minCloakDistance    = 75,
	movementClass       = [[kdrone]],
	moverate1           = [[3]],
    noChaseCategory     = [[MINERALS GUNSHIP FIXEDWING SUB]],
	objectName          = "ktriairdrone.s3o",
    onoffable           = false,
    seismicSignature    = 4,
    selfDestructAs      = [[SMALL_UNIT]],
    side                = [[Drone]],
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

	weapons             = {
	
	    {
	      def                = [[Laser]],
	      badTargetCategory  = [[SINK FLOAT]],
	      onlyTargetCategory = [[SWIM LAND SINK FLOAT SHIP HOVER]],
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
		Cruiser = 50,
		Building = 25,
		Mech = 50,
		Tank = 50,
		Aircraft = 50,
		Ship = 50,
		Sub = 50
	      },

	      beamTime                = 0.5,
	      duration                = 5,
	      energypershot           = 0,
	      interceptedByShieldType = 1,
	      heightMod               = 0.5,
	      lineOfSight             = true,
	      range                   = 800,
	      reloadtime              = 0.4,
	      rgbColor                = [[0 1 0]],
	      soundStart              = [[ct/pew1]],
	      targetMoveError         = 0,
	      thickness               = 5,
	      tolerance               = 100,
	      turret                  = true,
	      weaponType              = [[BeamLaser]],
	      weaponVelocity          = 2000,
	    },
	
	  },
	  
	smoothAnim          = true,
    terraformSpeed      = 300,
	reclaimSpeed        = 300,
	turnInPlace         = 1,
	turnRate            = 800,
	showNanospray	    = 1,
	Resurrectspeed      =100,
	workerTime          = 1,
	script		    = "ktriairdrone.lua",

	featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Tri Air Drone]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 262,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      metal            = 50,
	      object           = [[wrecks/ktriairdronewreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 70,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Tri Air Drone]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 175,
	      energy           = 0,
	      footprintX       = 2,
	      footprintZ       = 2,
	      metal            = 25,
	      object           = [[b2x2heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 70,
	    },

  	  },

	}


return lowerkeys({ ["ktriairdrone"] = ktriairdrone })