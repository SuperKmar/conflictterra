unitDef = {

  unitname                      = [[bsupportfactory]],
  name                          = [[Support Factory]],
  description                   = [[Builds auxiliary units, such as supply vehicles and a hover transport.]],
  amphibious                    = false,
  acceleration                  = 0,
  activateWhenBuilt             = false,
  bmcode                        = [[0]],
  brakeRate                     = 0,
  buildCostEnergy               = 200,
  buildCostMetal                = 200,
  builder                       = true,

  buildoptions                  = {

	[[bminer]],
	[[breztank]],
	[[benergytruck]],
  },



  buildPic                      = [[bsupportfactory.png]],
  buildTime                     = 25,
  canMove                       = true,
  canPatrol                     = true,
  canstop                       = [[1]],
  canBeAssisted                 = false,
  category                      = [[SINK]],
  corpse                        = [[DEAD]],
  reclaimable                   = false,

  energyMake                    = 0,
  energyUse                     = 0,
  explodeAs                     = [[LARGE_BUILDING]],
  footprintX                    = 8,
  footprintZ                    = 8,
  idleAutoHeal                  = 0,
  mass                          = 275,
  maxDamage                     = 8500,
  maxSlope                      = 15,
  maxVelocity                   = 0,
  maxWaterDepth                 = 0,
  metalMake                     = 0,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[bsupportfactory.s3o]],

  seismicSignature              = 4,
  selfDestructAs                = [[LARGE_BUILDING]],
  showNanoSpray                 = false,
  side                          = [[NKG]],
  sightDistance                 = 250,

	  sounds			= {
	      select = {
		"argh/Argh_TankSound",
		},
	      ok = {
		"argh/Argh_TankSound",
		},
	  },

  smoothAnim                    = true,
  TEDClass                      = [[PLANT]],
  turnRate                      = 0,
  workerTime                    = 1,
  yardMap                       = [[cccccooo cooooooo cooooooo oooccooo ooccccoo ooccccoo ooccccoo cccccccc ]],
  script                        = [[bsupportfactory.lua]],




  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Supply Factory]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 6375,
      energy           = 0,
      featureDead      = [[DEAD2]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 7,
      footprintZ       = 6,
      height           = [[40]],
      hitdensity       = [[100]],
      metal            = 300,
      object           = [[bgenericwreckage.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,

      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    DEAD2 = {
      description      = [[Debris - Supply Factory]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 4250,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 16,
      footprintZ       = 16,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 150,
      object           = [[b16x16heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],

    },


  },



}



return lowerkeys({ bsupportfactory = unitDef })
