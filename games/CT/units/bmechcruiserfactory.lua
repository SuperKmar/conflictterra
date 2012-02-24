unitDef = {

  unitname                      = [[bmechcruiserfactory]],
  name                          = [[Deployed Saito Class Cruiser]],
  description                   = [[Produces combat and support mechs.  Can Pack Up  into the Saito Class Cruiser.]],
  amphibious                    = false,
  acceleration                  = 0,
  brakeRate                     = 0,
  buildCostEnergy               = 600,
  buildCostMetal                = 600,
  builder                       = true,

  buildoptions                  = {

	[[bengineer]],
	[[bminer]],
	[[bscoutmech]],
	[[bbasicmech]],
	[[bmissilemech]],
	[[bantitankmech]],
	[[bhovermech]],
	[[bsiegemech]],

	[[bflyingmech]],
	[[bsnipermech]],
	[[bacemech]],
	[[bassaultmech]],
	[[bheavymissilemech]],
        [[badvhovermech]],
	[[bheavysiegemech]],
	[[bheavyflyingmech]],
	[[bheavyassaultmech]],
  },



  buildPic                      = [[bmechcruiserfactory.png]],
  buildTime                     = 45,
  canMove                       = true,
  canPatrol                     = true,
  canStop                       = true,
  canBeAssisted                 = false,
  category                      = [[SINK]],
  collisionVolumeOffsets        = [[0 0 0]],
  collisionVolumeScales         = [[192 160 288]],
  collisionVolumeTest           = 1,
  collisionVolumeType           = [[box]],
  corpse                        = [[DEAD]],
  reclaimable                   = false,

  energyMake                    = 0,
  energyUse                     = 0,
  explodeAs                     = [[LARGE_BUILDING]],
  footprintX                    = 12,
  footprintZ                    = 18,
  idleAutoHeal                  = 0,
  mass                          = 275,
  maxDamage                     = 4500,
  maxSlope                      = 15,
  maxVelocity                   = 0,
  maxWaterDepth                 = 0,
  metalMake                     = 0,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[bmechcruiser.s3o]],

  seismicSignature              = 4,
  selfDestructAs                = [[LARGE_BUILDING]],
  showNanoSpray                 = false,
  side                          = [[NKG]],
  sightDistance                 = 250,

  sounds			= {
	      select = {
		"golgotha/vehicle_done_44khz",
		},
	      ok = {
		"golgotha/vehicle_done_44khz",
		},
  },

  sfxtypes            		= {
	
	    explosiongenerators = {
		"custom:ct_buildlight_green",
		"custom:ct_buildlight_red",
	    },
	
  },

  smoothAnim                    = true,
  workerTime                    = 1,
  yardMap                       = [[oooooooooooo oooooooooooo oooooooooooo oooooooooooo oooooooooooo oooooooooooo oooooooooooo oooooooooooo oooooooooooo oooooooooooo oooooooooooo oooooooooooo cccccccccccc cccccccccccc cccccccccccc cccccccccccc cccccccccccc cccccccccccc]],
  script                        = [[bmechcruiserfactory.lua]],



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Deployed Saito Class Cruiser]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 2250,
      energy           = 0,
      featureDead      = [[DEAD2]],
      footprintX       = 16,
      footprintZ       = 17,
      mass             = 2000,
      metal            = 300,
      object           = [[wrecks/bmechcruiserfactorywreck.s3o]],
      reclaimable      = true,
      reclaimTime      = 9000,
    },


    DEAD2 = {
      description      = [[Debris - Deployed Saito Class Cruiser]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 1125,
      energy           = 0,
      footprintX       = 16,
      footprintZ       = 16,
      mass             = 750,
      metal            = 150,
      object           = [[b16x16heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 4500,
    },


  },



}



return lowerkeys({ bmechcruiserfactory = unitDef })
