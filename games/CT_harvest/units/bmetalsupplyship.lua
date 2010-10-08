	unitDef = {
	  unitname            = [[bmetalsupplyship]],
	  name                = [[Takeda Class Supply Cruiser]],
	  description         = [[Metal Supply Cruiser - Supply cruiser that provides 50 metal storage.  Can morph into an immobile depot that provides more metal storage.]],
	  acceleration        = 0.16,
	  activateWhenBuilt   = true,
          airStrafe           = 0,
          amphibious          = false,
          bankscale           = [[1.5]],
	  bmcode              = [[0]],
	  brakeRate           = 1.88,
	  buildCostEnergy     = 800,
	  buildCostMetal      = 640,
	  builder             = false,
	  reclaimable         = false,



	  buildPic            = [[bmetalsupplyship.png]],
	  buildTime           = 60,
	  canAttack           = false,
          canFly              = true,
	  canFight            = false,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
          canReclaim          = false,
	  canstop             = [[1]],
          canSubmerge         = false,
	  category            = [[GUNSHIP]],
          collide             = true,
	  corpse              = [[DEAD]],
          cruiseAlt           = 175,
	
	  defaultmissiontype  = [[VTOL_standby]],
          energyMake          = 0,
	  energyStorage       = 0,
	  energyUse           = 0,
	  explodeAs           = [[BIG_UNIT]],
          floater             = true,
          footprintx          = 7,
	  footprintZ          = 7,
	  hoverAttack         = true,
	  idleAutoHeal        = 0,
	  maneuverleashlength = [[1280]],
	  mass                = 2500,
	  maxDamage           = 4000,
	  maxVelocity         = 1.5,
          metalMake           = 0,
	  metalStorage        = 50,
	  minCloakDistance    = 100,
	  noAutoFire          = false,
	  noChaseCategory     = [[TERRAFORM SATELLITE FIXEDWING GUNSHIP HOVER SHIP SWIM SUB LAND FLOAT SINK]],
	  norestrict          = [[1]],
	  objectName          = [[bmetalsupplyship.s3o]],
	  seismicSignature    = 0,
	  selfDestructAs      = [[BIG_UNIT]],
          showNanospray       = 0,
	  side                = [[NKG]],
	  sightDistance       = 600,
	  smoothAnim          = true,
	  steeringmode        = [[1]],

	  sounds			= {
	      select = {
		"ct/cruiserengine",
		},
	      ok = {
		"ct/cruiserengine",
		},
	  },

	  TEDClass            = [[VTOL]],
	  turnRate            = 300,
	  workerTime          = 1,
	  upright             = true,
          script              = [[bmetalsupplyship.lua]],
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Metal Supply Cruiser]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 3000,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 320,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Metal Supply Cruiser]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 2000,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 7,
	      footprintZ       = 7,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 160,
	      object           = [[b7x7heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ bmetalsupplyship = unitDef })
