unitDef = {

  unitname                      = [[kdronestructure]],
  name                          = [[Ground Drone Structure]],
  description                   = [[This structure produces energy and creates ground Drones.]],
  amphibious                    = false,
  acceleration                  = 0,
  brakeRate                     = 0,
  buildCostEnergy               = 400,
  buildCostMetal                = 400,
  builder                       = true,
  buildoptions                  = {

    [[kdroneengineer]],
	[[kdronewarrior]],
	[[kdroneroller]],
	[[kdroneminer]],
  },
  
  buildPic                      = [[kdronestructure.png]],
  buildTime                     = 45,
  canMove                       = true,
  canPatrol                     = true,
  canStop                       = true,
  canBeAssisted                 = false,
  category                      = [[SINK]],
  corpse                        = [[DEAD]],
  reclaimable                   = false,
  energyMake                    = 20,
  energyUse                     = 0,
  explodeAs                     = [[LARGE_BUILDING]],
  footprintX                    = 6,
  footprintZ                    = 6,
  idleAutoHeal                  = 0,
  mass                          = 275,
  maxDamage                     = 2500,
  maxSlope                      = 15,
  maxVelocity                   = 0,
  maxWaterDepth                 = 0,
  metalMake                     = 0,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[kdronestructure.s3o]],
  
  seismicSignature              = 4,
  selfDestructAs                = [[LARGE_BUILDING]],
  showNanoSpray                 = false,
  side                          = [[Drone]],
  sightDistance                 = 250,

	  sounds			= {
	      select = {
		"golgotha/vehicle_done_44khz",
		},
	      ok = {
		"golgotha/vehicle_done_44khz",
		},
	  },

  smoothAnim                    = true,
  turnRate                      = 0,
  workerTime                    = 1,
  yardMap                       = [[occccc cccccc cccccc cccccc cccccc ccccco]],
  script                        = [[kdronestructure.lua]],



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Drone Structure]],
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
      metal            = 200,
      object           = [[wrecks/kdronestructurewreck.s3o]],
      reclaimable      = true,
      reclaimTime      = 6375,

      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    DEAD2 = {
      description      = [[Debris - Drone Structure]],
      blocking         = false,
      category         = [[heaps]],
      damage           = 4250,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 6,
      footprintZ       = 6,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 100,
      object           = [[b6x6heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],

    },


  },



}



return lowerkeys({ kdronestructure = unitDef })
