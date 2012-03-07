local ktriairdrone = {
	name                = [[Tri Air Drone]],
	description         = [[Shoots a long range beam of deadly plasma at ground units.]],
    acceleration        = 0.06,
    brakerate           = 1.5,
    buildpic            = [[ktriairdrone.png]],
	buildCostEnergy     = 500,
	buildCostMetal      = 500,
    buildDistance       = 150,
    builder             = false,
	buildTime           = 20,
    canAssist           = true,
	CanAttack 			= true,
	CanCapture			= false,
    canGuard            = true,
	canMove		  	    = true,
	canPatrol           = true,
    canReclaim          = true,
	canStop             = true,
	category            = [[GUNSHIP]],
    canFly              = true,
	corpse              = [[DEAD]],
    cruiseAlt           = 200,
	collide             = true,
	reclaimable         = false,

    energyMake          = 1,
	explodeAs           = [[DRONE_AIR_UNIT]],
    footprintx          = 3,
	footprintZ          = 3,
	hoverAttack         = true,
	idleAutoHeal        = 1,
	leaveTracks         = false,
	mass                = 80,
	maxDamage           = 800,
    maxSlope            = 99999999,
	maxVelocity         = 4,
    maxWaterDepth       = 10000,
    metalMake           = 0,
    noChaseCategory     = [[MINERALS GUNSHIP FIXEDWING CRUISER SUB]],
	objectName          = "ktriairdrone.s3o",
    onoffable           = false,
    seismicSignature    = 4,
    selfDestructAs      = [[DRONE_AIR_UNIT]],
    side                = [[Drone]],
    sightDistance       = 500,
	
	sounds              = {
	      select = {
		"golgotha/vehicle_done_44khz",
		},
	      ok = {
		"golgotha/vehicle_done_44khz",
		},
	  },
	  
	  sfxtypes          = {
	
	    explosiongenerators = {
		"custom:ct_drone_binder_tri",
	    },
	
	  },	  

	smoothAnim          = true,
    terraformSpeed      = 300,
	reclaimSpeed        = 300,
	turnInPlace         = 1,
	turnRate            = 800,
	showNanospray	    = 1,
	Resurrectspeed      = 100,
	workerTime          = 1,
	script		    = "ktriairdrone.lua",

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
	      coreThickness           = 1,
	      collideFriendly         = false,
	      craterMult              = 0.25,
	
	      damage                  = {
		Cruiser = 12,
		Building = 12,
		Mech = 12,
		Tank = 12,
		Aircraft = 12,
		Ship = 12,
		Sub = 12,

		Meteor = 0,
		Drone = 12,
		Spare1 = 12,
		Spare2 = 12,
		Spare3 = 12,
	      },

	      beamTime                = 0.1,
	      explosionGenerator      = [[custom:ct_impact_beam_green]],		  
	      duration                = 5,
	      energypershot           = 0,
	      interceptedByShieldType = 1,
	      heightMod               = 0.5,
	      lineOfSight             = true,
	      range                   = 700,
	      reloadtime              = 0.1,
	      rgbColor                = [[0 1 0]],
	      soundStart              = [[ct/pew1]],
	      sweepFire               = true,
	      targetMoveError         = 0,
	      thickness               = 5,
	      tolerance               = 100,
	      turret                  = true,
	      weaponType              = [[BeamLaser]],
	      weaponVelocity          = 2000,
	    },
	
	  },	
	
	featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Tri Air Drone]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 400,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      metal            = 250,
	      object           = [[wrecks/ktriairdronewreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 7500,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Tri Air Drone]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 200,
	      energy           = 0,
	      footprintX       = 2,
	      footprintZ       = 2,
	      metal            = 125,
	      object           = [[b2x2heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 3750,
	    },

  	  },

	}


return lowerkeys({ ["ktriairdrone"] = ktriairdrone })
