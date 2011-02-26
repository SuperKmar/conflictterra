	unitDef = {
	  unitname            = [[badvradarplane]],
	  name                = [[Obou Type Radar Plane]],
	  description         = [[Long Range Radar Plane - New radar plane with long ranged radar. - Build Limit: 20]],
          amphibious          = false,
	  buildCostEnergy     = 500,
	  buildCostMetal      = 500,
          builder             = false,
	  buildPic            = [[badvradarplane.png]],
	  buildTime           = 24,
	  canAttack           = false,
          canDropFlare        = false,
          canFly              = true,
	  canFight            = false,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
	  canstop             = [[1]],
          canSubmerge         = false,
	  category            = [[FIXEDWING]],
          collide             = false,
	  corpse              = [[DEAD]],
          cruiseAlt           = 400,
          reclaimable         = false,
	
          energyUse           = 1.5,
	  explodeAs           = [[SMALL_UNIT]],
          floater             = false,
          footprintx          = 5,
	  footprintZ          = 5,
	  idleAutoHeal        = 0,
	  mass                = 150,
          maxAcc              = 0.5,
	  maxDamage           = 375,
	  maxVelocity         = 6,
	  minCloakDistance    = 75,
	  noAutoFire          = false,
	  noChaseCategory     = [[MINERALS LAND SINK HOVER FIXEDWING GUNSHIP SHIP FLOAT SUB]],
	  objectName          = [[badvradarplane.s3o]],
          radarDistance       = 2500,
	  seismicSignature    = 0,
	  selfDestructAs      = [[SMALL_UNIT]],
	  side                = [[NKG]],
	  sightDistance       = 400,

	  sounds			= {
	      select = {
		"argh/Argh_Jet.wav",
		},

	      ok = {
		"argh/Argh_Jet.wav",
		},
	  },

	  smoothAnim          = true,
	  unitRestricted      = 20,
          script              = [[badvradarplane.lua]],
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Advanced Radar Plane]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 281,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 200,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Advanced Radar Plane]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 175,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 5,
	      footprintZ       = 5,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 100,
	      object           = [[b5x5heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 187.5,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ badvradarplane = unitDef })