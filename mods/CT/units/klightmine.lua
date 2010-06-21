unitDef = {

  unitname                      = [[klightmine]],
  name                          = [[Medium Yield Power Plant]],
  description                   = [[Nuclear Power - Compact nuclear reactor provides power but also explodes upon destruction.  Adds +45 energy.]],
  amphibious                    = false,
  acceleration                  = 0,
  activateWhenBuilt             = true,
  bmcode                        = [[0]],
  brakeRate                     = 0,
  buildCostEnergy               = 1000,
  buildCostMetal                = 1000,
  builder                       = false,

  buildPic                      = [[klightmine.png]],
  buildTime                     = 90,
  category                      = [[SINK]],
  corpse                        = [[DEAD]],
  reclaimable                   = false,

  collisionVolumeOffsets        = [[0 0 0]],
  collisionVolumeScales         = [[64 50 64]],
  collisionVolumeTest           = 1,
  collisionVolumeType           = [[box]],

  energyMake                    = 0,
  energyUse                     = -45,
  explodeAs                     = [[ATOMIC_BLAST]],
  footprintX                    = 4,
  footprintZ                    = 4,
  idleAutoHeal                  = 0,
  mass                          = 500,
  maxDamage                     = 5000,
  maxSlope                      = 18,
  maxVelocity                   = 0,
  maxWaterDepth                 = 0,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[klightmine.s3o]],

  onoffable                     = true,
  seismicSignature              = 4,
  selfDestructAs                = [[ATOMIC_BLAST]],
  side                          = [[NKG]],
  sightDistance                 = 273,
  smoothAnim                    = true,
  TEDClass                      = [[ENERGY]],
  turnRate                      = 0,
  workerTime                    = 0,
  yardMap                       = [[oooo oooo oooo oooo]],
  script                        = [[klightmine.lua]],



  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Nuclear Power]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 8000,
      energy           = 0,
      featureDead      = [[DEAD2]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[40]],
      hitdensity       = [[100]],
      metal            = 275,
      object           = [[bgenericwreckage.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,

      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    DEAD2 = {
      description      = [[Debris - Nuclear Power]],
      blocking         = false,

      category         = [[heaps]],
      damage           = 8000,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 4,
      footprintZ       = 4,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 275,
      object           = [[b4x4heap.s3o]],
      reclaimable      = true,
      reclaimTime      = 275,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],

    },


  },



}



return lowerkeys({ klightmine = unitDef })
