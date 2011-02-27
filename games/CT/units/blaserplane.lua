	unitDef = {
	  unitname            = [[blaserplane]],
	  name                = [[Suzaku Type Fighter]],
	  description         = [[Anti-Cruiser Fighter - New fighter model armed with  beam weaponry that cuts through cruisers.]],
	  amphibious          = false,
	  buildCostEnergy     = 150,
	  buildCostMetal      = 150,
	  buildPic            = [[blaserplane.png]],
	  buildTime           = 15,
	  canAttack           = true,
	  canDropFlare        = false,
	  canFly              = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canStop             = true,
	  canSubmerge         = false,
	  category            = [[FIXEDWING]],
	  collide             = false,
	  corpse              = [[DEAD]],
	  cruiseAlt           = 200,
	  reclaimable         = false,
	
	  explodeAs           = [[SMALL_UNIT]],
	  floater             = false,
	  footprintx          = 2,
	  footprintZ          = 2,
	  frontToSpeed        = 0.5,
	  idleAutoHeal        = 0,
	  mass                = 150,
          maxAcc              = 0.3,
	  maxDamage           = 750,
	  maxVelocity         = 11,
	  minCloakDistance    = 75,
	  noChaseCategory     = [[MINERALS LAND SINK HOVER SHIP FLOAT SUB]],
	  objectName          = [[blaserplane.s3o]],
	  seismicSignature    = 0,
	  selfDestructAs      = [[SMALL_UNIT]],

	  sounds			= {
	      select = {
		"argh/Argh_Jet.wav",
		},

	      ok = {
		"argh/Argh_Jet.wav",
		},
	  },

	  side                = [[NKG]],
	  sightDistance       = 750,
	  smoothAnim          = true,
	  speedToFront        = 0.5,
	  turnRate            = 300,
	  turnRadius          = 1000,
	  script              = [[blaserplane.lua]],
	
	  weapons             = {
	
	    {
	      def                = [[Laser]],
	      badTargetCategory  = [[FIXEDWING]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 45,
	      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    Laser = {
	      name                    = [[Burst Laser]],
	      areaOfEffect            = 8,
	      coreThickness           = 0.5,
	      collideFriendly         = false,
	      craterMult              = 0.25,
	
	      damage                  = {
		Cruiser = 125,
		Building = 10,
		Mech = 10,
		Tank = 10,
		Aircraft = 10,
		Ship = 10,
		Sub = 10,
	      },
	
	      duration                = 0.01,
	      energypershot           = 0,
	      explosionGenerator      = [[custom:megapartgun]],
	      interceptedByShieldType = 1,
	      heightMod               = 0.5,
	      range                   = 1000,
	      reloadtime              = 0.25,
	      rgbColor                = [[1 0 0]],
	      soundStart              = [[ct/pew1]],
	      targetMoveError         = 0.07,
	      thickness               = 4,
	      tolerance               = 2000,
	      turret                  = false,
	      weaponType              = [[LaserCannon]],
	      weaponVelocity          = 2000,
	    },
	
	  },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Laser Plane]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 412,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 120,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Laser Plane]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 275,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 60,
	      object           = [[b2x2heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ blaserplane = unitDef })