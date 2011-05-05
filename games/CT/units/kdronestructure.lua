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
    [[ktridroneroller]],
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
  footprintX                    = 8,
  footprintZ                    = 8,
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
  yardMap                       = [[occcccco cccccccc cccccccc cccccccc cccccccc cccccccc cccccccc occcccco]],
  script                        = [[kdronestructure.lua]],



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Ground Drone Structure]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 6375,
      energy           = 0,
      featureDead      = [[DEAD2]],
      footprintX       = 8,
      footprintZ       = 8,
      metal            = 200,
      object           = [[wrecks/kdronestructurewreck.s3o]],
      reclaimable      = true,
      reclaimTime      = 6375,
    },


    DEAD2 = {
      description      = [[Debris - Ground Drone Structure]],
      blocking         = false,
      category         = [[heaps]],
      damage           = 4250,
      energy           = 0,
      footprintX       = 8,
      footprintZ       = 8,
      metal            = 100,
      object           = [[b8x8heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,
    },


  },



}



return lowerkeys({ kdronestructure = unitDef })
