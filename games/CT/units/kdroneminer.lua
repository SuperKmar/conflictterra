local kdroneminer = {
	name                = [[Drone Engineer]],
	description         = [[The Drone Engineer is an agressive builder and can put of a fight in large swarms.]],
    acceleration        = 0.06,
    brakerate           = 1.5,
    buildpic            = [[kdroneminer.png]],
	buildCostEnergy     = 100,
	buildCostMetal      = 100,
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
customParams = {
		is_miner=1,	--used by minig: if the unit can mine is_mineable=1 ressources
		max_cargo=25,	--used by mining: how much metal the unit can carry at once before having to return to a drop off
	},

    reclaimable         = false,
    defaultmissiontype  = [[Standby]],
    energyMake          = 0,
	explodeAs           = [[SMALL_UNIT]],
    footprintx          = 2,
	footprintZ          = 2,
	idleAutoHeal        = 1,
	leaveTracks         = false,
	maneuverleashlength = [[640]],
	mass                = 80,
	maxDamage           = 100,
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
    selfDestructAs      = [[SMALL_UNIT]],
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
	
	
         weapons             = {
        
            {
              def                = [[Rock_Drill]],
              mainDir            = [[0 0 1]],
              maxAngleDif        = 180,
              onlyTargetCategory = [[MINERALS]],
            },
        
          },
        
        
          weaponDefs          = {
        
            Rock_Drill = {
              name                    = [[Rock Drill]],
              areaOfEffect            = 8,
              avoidFriendly           = 0,
              craterMult              = 0.25,
              accuracy                = 0,
	      collideFriendly         = false,
        
              damage                  = {
                Cruiser = 1,
                Building = 1,
                Mech = 1,
                Tank = 1,
                Aircraft = 1,
                Ship = 1,
                Sub = 1,
              },
        
              explosionGenerator      = [[custom:resmining]],
              interceptedByShieldType = 1,
              lineOfSight             = true,
              range                   = 90,
              reloadtime              = 0.2,
              rgbColor                = [[1 0.95 0.4]],
              separation              = 2,
              size                    = 0.4,
              soundStart              = [[tp/swoosh]],
              soundStartVolume        = 0.5,
              soundTrigger            = true,
              stages                  = 50,
              targetBorder            = 1,
              tolerance               = 8000,
              turret                  = true,
              weaponType              = [[Cannon]],
              weaponVelocity          = 7500,


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


return lowerkeys({ ["kdroneminer"] = kdroneminer })