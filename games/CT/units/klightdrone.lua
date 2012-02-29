local klightdrone = {
	name                = [[Anti-Air Cannon Drone]],
	description         = [[This drone is armed with an Anti-Air cannon, making it ideal for destroying aircraft and cruisers.]],
    acceleration        = 1,
    brakerate           = 0.1,
    buildpic            = [[klightdrone.png]],
	buildCostEnergy     = 150,
	buildCostMetal      = 150,
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
	canStop             = true,
	category            = [[LAND]],
    corpse              = [[DEAD]],
    reclaimable         = false,

    energyMake          = 0,
	explodeAs           = [[SMALL_UNIT]],
    footprintx          = 3,
	footprintZ          = 3,
	idleAutoHeal        = 1,
	leaveTracks         = false,
	mass                = 80,
	maxDamage           = 700,
    maxSlope            = 99999999,
	maxVelocity         = 4,
    maxWaterDepth       = 10000,
    metalMake           = 0,
	minCloakDistance    = 75,
	movementClass       = [[kdrone]],
    noChaseCategory     = [[SWIM LAND SHIP SINK FLOAT HOVER MINERALS SUB]],
	objectName          = "klightdrone.s3o",
    onoffable           = false,
    seismicSignature    = 4,
    selfDestructAs      = [[SMALL_UNIT]],
    side                = [[Drone]],
    sightDistance       = 400,
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
	      def                = [[Cannon]],
	      badTargetCategory  = [[CRUISER]],
	      onlyTargetCategory = [[FIXEDWING GUNSHIP CRUISER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Cannon = {
	      name                    = [[Anti-Air Plasma]],
	      areaOfEffect            = 64,
		  burnBlow                = true,
		  canattackground         = false,
	      craterMult              = 0.25,
	
	      damage                  = {
		default = 2,
		Cruiser = 15,
		Building = 2,
		Mech = 2,
		Tank = 2,
		Aircraft = 15,
		Ship = 2,
		Sub = 2,

		Meteor = 0,
		Drone = 2,
		Spare1 = 2,
		Spare2 = 2,
		Spare3 = 2,
	      },
	
		  cegtag                  = [[ct_drone_energyshot]],
	      explosionGenerator      = [[custom:ct_impact_beamshot_green_aa]],
		  projectiles             = 1,
		  sprayangle              = 500,
	      interceptedByShieldType = 1,
	      range                   = 600,
	      reloadtime              = 1,
	      rgbColor                = [[1 0.95 0.4]],
	      separation              = 2,
	      size                    = 0.4,		  
	      soundHit                = [[argh/Argh_MedExplosion]],
	      soundStart              = [[argh/Argh_heavy_machinegun]],
		  stages                  = 50,
	      turret                  = true,
	      weaponType              = [[Cannon]],
	      weaponVelocity          = 2000,
	    },
	
	  },
	smoothAnim          = true,
    terraformSpeed      = 300,
	reclaimSpeed        = 300,
	turnInPlace         = 1,
	turnRate            = 1000,
	showNanospray	    = 1,
	Resurrectspeed      = 100,
	workerTime          = 1,
	script		    = "klightdrone.lua",

	featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Anti-Air Cannon Drone]],
	      blocking         = true,
	      category         = [[corpses]],
	      damage           = 350,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      footprintX       = 3,
	      footprintZ       = 3,
	      metal            = 75,
	      object           = [[wrecks/kdroneminerwreck.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 2100,
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Anti-Air Cannon Drone]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 175,
	      energy           = 0,
	      footprintX       = 3,
	      footprintZ       = 3,
	      metal            = 32,
	      object           = [[b3x3heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 1050,
	    },

  	  },

	}


return lowerkeys({ ["klightdrone"] = klightdrone })
