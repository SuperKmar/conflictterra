	unitDef = {
	  unitname            = [[bflagship2]],
	  name                = [[Oda Class Cruiser]],
	  description         = [[Flagship - Centerpiece of NKG fleet.  Able to unload and become a Mobile Headquarters.  Can also upgrade once into a Battle Flagship.  Fires powerful missiles. - Build Limit: 1]],
	  acceleration        = 0.16,
	  activateWhenBuilt   = true,
          airStrafe           = 0,
          amphibious          = true,
          bankscale           = [[1.5]],
	  bmcode              = [[0]],
	  brakeRate           = 1.88,
	  buildCostEnergy     = 1800,
	  buildCostMetal      = 1440,
	  builder             = false,
	  reclaimable         = false,



	  buildPic            = [[bflagship2.png]],
          buildRange3D        = false,
	  buildTime           = 60,
	  canAttack           = true,
          canFly              = true,
	  canGuard            = true,
	  canMove             = true,
	  canPatrol           = true,
          canReclaim          = true,
	  canstop             = [[1]],
          canSubmerge         = false,
	  category            = [[GUNSHIP]],
          collisionVolumeOffsets = [[0 0 0]],
          collisionVolumeScales  = [[125 150 300]],
          collisionVolumeTest    = 1,
          collisionVolumeType    = [[box]],
          collide             = false,
          commander           = true,
	  corpse              = [[DEAD]],
          cruiseAlt           = 175,
	
	  defaultmissiontype  = [[VTOL_standby]],
          energyMake          = 7.2,
	  energyStorage       = 980,
	  energyUse           = 0,
	  explodeAs           = [[GUNSHIPEX]],
          floater             = true,
          footprintx          = 7,
	  footprintZ          = 7,
	  hoverAttack         = true,
	  idleAutoHeal        = 0,
	  maneuverleashlength = [[1280]],
	  mass                = 2500,
	  maxDamage           = 5000,
	  maxVelocity         = 4,
          metalMake           = 3,
	  metalStorage        = 980,
	  minCloakDistance    = 100,
	  noAutoFire          = false,
	  noChaseCategory     = [[TERRAFORM SATELLITE FIXEDWING GUNSHIP HOVER SHIP SWIM SUB LAND FLOAT SINK]],
	  norestrict          = [[1]],
	  objectName          = [[bflagship2.s3o]],
	  seismicSignature    = 0,
	  selfDestructAs      = [[GUNSHIPEX]],
          showNanospray       = 0,
	  showPlayerName      = true,
	  side                = [[NKG]],
	  sightDistance       = 750,
	  smoothAnim          = true,
	  steeringmode        = [[1]],
	  TEDClass            = [[VTOL]],
	  turnRate            = 300,
	  workerTime          = 12,
	  upright             = true,
	  unitRestricted      = 1,
          script              = [[bflagship2.lua]],



	
	  weapons             = {
	
	    {
	      def                = [[AA]],
	      badTargetCategory  = [[GUNSHIP]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 90,
	      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	    },

	    {
	      def                = [[Ground]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 90,
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER]],
	    },

	    {
	      def                = [[AA]],
	      badTargetCategory  = [[GUNSHIP]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 90,
	      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
	    },

	    {
	      def                = [[Ground]],
	      mainDir            = [[0 0 1]],
	      maxAngleDif        = 90,
	      onlyTargetCategory = [[LAND SINK SHIP SWIM FLOAT HOVER]],
	    },
	
	  },
	
	
	  weaponDefs          = {
	
	    AA         = {
	      name                    = [[Homing AA Missile]],
	      areaOfEffect            = 48,
	      avoidFriendly           = true,
	      canattackground         = false,
	      cylinderTargetting      = 1,
	      craterMult              = 0.25,
	
	      damage                  = {
		Cruiser = 200,
		Building = 20,
		Mech = 20,
		Tank = 20,
		Aircraft = 200,
		Ship = 20,
		Sub = 10,
	      },
	
	      explosionGenerator      = [[custom:WEAPEXP_PUFF]],
	      flightTime              = 3,
	      interceptedByShieldType = 1,
	      lineOfSight             = true,
	      model                   = [[baamissile.s3o]],
	      range                   = 530,
	      reloadtime              = 4.5,
	      smokedelay              = [[0.1]],
	      smokeTrail              = true,
	      soundHit                = [[argh/Argh_LargeExplosion]],
	      soundStart              = [[evolutionRTS/aircraft_missile_01]],
	      startVelocity           = 200,
	      tolerance               = 22000,
	      tracks                  = true,
	      turnRate                = 30000,
	      weaponAcceleration      = 550,
	      weaponTimer             = 5,
	      weaponType              = [[MissileLauncher]],
	      weaponVelocity          = 750,
	    },

	    Ground = {
	      name                    = [[Air-to-Ground Missile]],
	      areaOfEffect            = 160,
	      craterMult              = 0.25,
	
	      damage                  = {
		Cruiser = 650,
		Building = 650,
		Mech = 650,
		Tank = 650,
		Aircraft = 650,
		Ship = 650,
		Sub = 45,
	      },
	
	      model                   = [[bsmallmissile.s3o]],
	      edgeEffectiveness       = 0.5,
	      explosionGenerator      = [[custom:xamelimpact]],
	      flightTime              = 4,
	      interceptedByShieldType = 1,
	      lineOfSight             = true,
	      range                   = 800,
	      reloadtime              = 6,
	      smokeTrail              = true,
	      soundHit                = [[argh/Argh_LargeExplosion]],
	      soundStart              = [[nexuiz/rocket_fire]],
	      tolerance               = 8000,
	      trajectoryHeight        = 0.5,
	      tracks                  = false,
	      turret                  = false,
	      weaponType              = [[MissileLauncher]],
	      weaponVelocity          = 400,
	      startVelocity           = 400,
	      weaponAcceleration      = 70,
	    },

          },
	
	
	  featureDefs         = {
	
	    DEAD  = {
	      description      = [[Wreckage - Flagship]],
	      blocking         = false,
	      category         = [[corpses]],
	      damage           = 160,
	      energy           = 0,
	      featureDead      = [[DEAD2]],
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 2,
	      footprintZ       = 2,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 15,
	      object           = [[bgenericwreckage.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	
	    DEAD2 = {
	      description      = [[Debris - Flagship]],
	      blocking         = false,
	      category         = [[heaps]],
	      damage           = 160,
	      energy           = 0,
	      featurereclamate = [[SMUDGE01]],
	      footprintX       = 7,
	      footprintZ       = 7,
	      height           = [[4]],
	      hitdensity       = [[100]],
	      metal            = 15,
	      object           = [[b7x7heap.s3o]],
	      reclaimable      = true,
	      reclaimTime      = 15,
	      seqnamereclamate = [[TREE1RECLAMATE]],
	      world            = [[All Worlds]],
	    },
	
	  },
	
	}
	
	return lowerkeys({ bflagship2 = unitDef })
