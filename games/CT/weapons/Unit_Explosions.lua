--------------------------------------------------------------------------------

unitDeaths = {

CAMERA_EXPLOSION = {
   name					= "Camera Tower Explosion",
   ballistic			= 1,
   turret				= 1,
   impulseFactor		= 0,
   range				= 480,
   reloadtime			= 3.6,
   weaponvelocity		= 250,
   areaofeffect			= 8,
   --soundstart			= "golgotha/generic.wav",
   --soundhit			= "golgotha/generic.wav",
   --explosiongenerator	= "custom:FACTORY_EXPLOSION_SMALL",
	      damage                  = {
		default = 10,  
		Cruiser = 10,
		Building = 10,
		Land = 10,
		Aircraft = 10,
		Ship = 10,
		Sub = 10,

		Meteor = 0,
		Drone = 10,
		Spare1 = 10,
		Spare2 = 10,
		Spare3 = 10,		
	      },
  },

  
SMALL_BUILDING = {
   name					= "Small building",
   ballistic			= 1,
   turret				= 1,
   impulseFactor		= 0,
   range				= 480,
   reloadtime			= 3.6,
   weaponvelocity		= 250,
   areaofeffect			= 205,
   soundstart			= "golgotha/generic.wav",
   soundhit				= "golgotha/generic.wav",
   explosiongenerator	= "custom:ct_explosion_building_small",
	      damage                  = {
		default = 100,  		  
		Cruiser = 100,
		Building = 100,
		Land = 100,
		Aircraft = 100,
		Ship = 100,
		Sub = 100,

		Meteor = 0,
		Drone = 100,
		Spare1 = 100,
		Spare2 = 100,
		Spare3 = 100,		
	      },
  },

  
MEDIUM_BUILDING = {
   name					= "Medium building",
   ballistic			= 1,
   turret				= 1,
   impulseFactor		= 0,
   range				= 480,
   reloadtime			= 3.6,
   weaponvelocity		= 250,
   areaofeffect			= 325,
   soundstart			= "golgotha/generic.wav",
   soundhit				= "golgotha/generic.wav",
   explosiongenerator	= "custom:ct_explosion_building_medium",
	      damage                  = {
		default = 150,  		  
		Cruiser = 150,
		Building = 150,
		Land = 150,
		Aircraft = 150,
		Ship = 150,
		Sub = 150,

		Meteor = 0,
		Drone = 150,
		Spare1 = 150,
		Spare2 = 150,
		Spare3 = 150,		
	      },
  },

  
LARGE_BUILDING = {

   name					= "Large building",
   ballisti				= 1,
   turret				= 1,
   impulseFactor		= 0,
   range				= 480,
   reloadtime			= 3.6,
   weaponvelocity		= 250,
   areaofeffect			= 400,
   soundstart			= "golgotha/generic.wav",
   soundhit				= "golgotha/generic.wav",
   explosiongenerator	= "custom:ct_explosion_building_large",
	      damage                  = {
		default = 200,  		  
		Cruiser = 200,
		Building = 200,
		Land = 200,
		Aircraft = 200,
		Ship = 200,
		Sub = 200,

		Meteor = 0,
		Drone = 200,
		Spare1 = 200,
		Spare2 = 200,
		Spare3 = 200,		
	      },
  },

  
VOLATILE_BUILDING = {
   name					= "Volatile building",
   ballistic			= 1,
   turret				= 1,
   impulseFactor		= 0,
   range				= 480,
   reloadtime			= 3.6,
   weaponvelocity		= 250,
   areaofeffect			= 420,
   soundstart			= "golgotha/generic.wav",
   soundhit				= "golgotha/generic.wav",
   explosiongenerator	= "custom:ct_explosion_building_large",
	      damage                  = {
		default = 1000,  		  
		Cruiser = 1000,
		Building = 1000,
		Land = 1000,
		Aircraft = 1000,
		Ship = 1000,
		Sub = 1000,

		Meteor = 0,
		Drone = 1000,
		Spare1 = 1000,
		Spare2 = 1000,
		Spare3 = 1000,		
	      },
  },

  
SMALL_UNIT = {

   name					= "Small Unit",
   ballistic			= 1,
   turret				= 1,
   impulseFactor		= 0,
   range				= 480,
   reloadtime			= 3.6,
   weaponvelocity		= 250,
   areaofeffect			= 75,
   soundstart			= "golgotha/old_generic.wav",
   soundhit				= "golgotha/old_generic.wav",
   explosiongenerator	= "custom:SMALL_UNIT_Expl",
	      damage                  = {
		default = 50,  		  
		Cruiser = 50,
		Building = 50,
		Land = 50,
		Aircraft = 50,
		Ship = 50,
		Sub = 50,

		Meteor = 0,
		Drone = 50,
		Spare1 = 50,
		Spare2 = 50,
		Spare3 = 50,		
	      },
  },


MEDIUM_UNIT = {

   name					= "Medium Unit",
   ballistic			= 1,
   turret				= 1,
   impulseFactor		= 0,
   range				= 480,
   reloadtime			= 3.6,
   weaponvelocity		= 250,
   areaofeffect			= 95,
   soundstart			= "golgotha/old_generic.wav",
   soundhit				= "golgotha/old_generic.wav",
   explosiongenerator	= "custom:SMALL_UNIT_Expl",
	      damage                  = {
		default = 100,  		  
		Cruiser = 100,
		Building = 100,
		Land = 100,
		Aircraft = 100,
		Ship = 100,
		Sub = 100,

		Meteor = 0,
		Drone = 100,
		Spare1 = 100,
		Spare2 = 100,
		Spare3 = 100,		
	      },
  },


BIG_UNIT = {

   name					= "Big Unit",
   ballistic			= 1,
   turret				= 1,
   impulseFactor		= 0,
   range				= 480,
   reloadtime			= 3.6,
   weaponvelocity		= 250,
   areaofeffect			= 110,
   soundstart			= "golgotha/old_generic.wav",
   soundhit				= "golgotha/old_generic.wav",
   explosiongenerator	= "custom:MED_UNIT_Expl",
	      damage                  = {
		default = 150,  		  
		Cruiser = 150,
		Building = 150,
		Land = 150,
		Aircraft = 150,
		Ship = 150,
		Sub = 150,

		Meteor = 0,
		Drone = 150,
		Spare1 = 150,
		Spare2 = 150,
		Spare3 = 150,		
	      },
  },
  
LARGE_UNIT = {

   name					= "Large Unit",
   ballistic			= 1,
   turret				= 1,
   impulseFactor		= 0,
   range				= 480,
   reloadtime			= 3.6,
   weaponvelocity		= 250,
   areaofeffect			= 125,
   soundstart			= "golgotha/old_generic.wav",
   soundhit				= "golgotha/old_generic.wav",
   explosiongenerator	= "custom:BIG_UNIT_Expl",
	      damage                  = {
		default = 200,  		  
		Cruiser = 200,
		Building = 200,
		Land = 200,
		Aircraft = 200,
		Ship = 200,
		Sub = 200,

		Meteor = 0,
		Drone = 200,
		Spare1 = 200,
		Spare2 = 200,
		Spare3 = 200,		
	      },
  },  

  
ROCK_IMPACT_SMALL = {

   name					= "Small Rock Impact",
   craterMult			= 5,
   ballistic			= 1,
   turret				= 1,
   impulseFactor		= 0,
   range				= 480,
   reloadtime			= 3.6,
   weaponvelocity		= 250,
   areaofeffect			= 200,
   soundstart			= "golgotha/old_generic.wav",
   soundhit				= "golgotha/old_generic.wav",
   explosiongenerator	= "custom:ct_impact_meteor",
	      damage                  = {
		default = 50,  		  
		Cruiser = 50,
		Building = 50,
		Land = 50,
		Aircraft = 50,
		Ship = 50,
		Sub = 50,

		Meteor = 0,
		Drone = 50,
		Spare1 = 50,
		Spare2 = 50,
		Spare3 = 50,		
	      },
  },

  
ROCK_IMPACT_BIG = {

   name					= "Large Rock Impact",
   craterMult			= 5,
   ballistic			= 1,
   turret				= 1,
   impulseFactor		= 0,
   range				= 480,
   reloadtime			= 3.6,
   weaponvelocity		= 250,
   areaofeffect			= 400,
   soundstart			= "golgotha/generic.wav",
   soundhit				= "golgotha/generic.wav",
   explosiongenerator	= "custom:ct_impact_meteor",
	      damage                  = {
		default = 100,  		  
		Cruiser = 100,
		Building = 100,
		Land = 100,
		Aircraft = 100,
		Ship = 100,
		Sub = 100,

		Meteor = 0,
		Drone = 100,
		Spare1 = 100,
		Spare2 = 100,
		Spare3 = 100,		
	      },
  },


ROCK_MINEDOUT = {

   name					= "Rock Mined Out",
   craterMult			= 0,
   ballistic			= 1,
   turret				= 1,
   impulseFactor		= 0,
   range				= 480,
   reloadtime			= 3.6,
   weaponvelocity		= 250,
   areaofeffect			= 8,
   --soundstart			= "golgotha/old_generic.wav",
   --soundhit			= "golgotha/old_generic.wav",
   explosiongenerator	= "custom:ct_meteor_destruction",
	      damage                  = {
		default = 0,  		  
		Cruiser = 0,
		Building = 0,
		Land = 0,
		Aircraft = 0,
		Ship = 0,
		Sub = 0,

		Meteor = 0,
		Drone = 0,
		Spare1 = 0,
		Spare2 = 0,
		Spare3 = 0,		
	      },
  },
  
  
ROCK_MINEDOUT_BIG = {

   name					= "Rock Mined Out",
   craterMult			= 0,
   ballistic			= 1,
   turret				= 1,
   impulseFactor		= 0,
   range				= 480,
   reloadtime			= 3.6,
   weaponvelocity		= 250,
   areaofeffect			= 8,
   --soundstart			= "golgotha/old_generic.wav",
   --soundhit			= "golgotha/old_generic.wav",
   explosiongenerator	= "custom:ct_meteor_destruction_big",
	      damage                  = {
		default = 0,  		  
		Cruiser = 0,
		Building = 0,
		Land = 0,
		Aircraft = 0,
		Ship = 0,
		Sub = 0,

		Meteor = 0,
		Drone = 0,
		Spare1 = 0,
		Spare2 = 0,
		Spare3 = 0,		
	      },
  },  
  
  NKG_MINE = {
   name					= "Proximity Mine",
   ballistic			= 1,
   turret				= 1,
   impulseFactor		= 0,
   range				= 480,
   reloadtime			= 3.6,
   weaponvelocity		= 250,
   areaofeffect			= 256,
   soundstart			= "golgotha/generic.wav",
   soundhit				= "golgotha/generic.wav",
   explosiongenerator	= "custom:SMALL_UNIT_Expl",
	      damage                  = {
		default = 200,  		  
		Cruiser = 200,
		Building = 200,
		Land = 200,
		Aircraft = 200,
		Ship = 200,
		Sub = 200,

		Meteor = 0,
		Drone = 200,
		Spare1 = 200,
		Spare2 = 200,
		Spare3 = 200,		
	      },
  },

  
LIGHT_MINE = {

   name					= "Small Unit",
   craterMult			= 2000,
   ballistic			= 1,
   turret				= 1,
   impulseFactor		= 0,
   range				= 480,
   reloadtime			= 3.6,
   weaponvelocity		= 250,
   areaofeffect			= 75,
   soundstart			= "golgotha/old_generic.wav",
   soundhit				= "golgotha/old_generic.wav",
   explosiongenerator	= "custom:SMALL_UNIT_Expl",
	      damage                  = {
		default = 100,  		  
		Cruiser = 100,
		Building = 100,
		Land = 100,
		Aircraft = 100,
		Ship = 100,
		Sub = 100,

		Meteor = 0,
		Drone = 100,
		Spare1 = 100,
		Spare2 = 100,
		Spare3 = 100,		
	      },
  },

  
DRONE_PETARD = {

   name					= "Drone Petard",
   collideFriendly		= 0,
   craterMult			= 1,
   ballistic			= 1,
   turret				= 1,
   impulseFactor		= 1,
   range				= 480,
   reloadtime			= 3.6,
   weaponvelocity		= 250,
   areaofeffect			= 400,
   soundstart			= "golgotha/old_generic.wav",
   soundhit				= "golgotha/old_generic.wav",
   explosiongenerator	= "custom:ct_drone_explosion_air",
	      damage                  = {
		default = 10,  		  
		Cruiser = 500,
		Building = 10,
		Land = 10,
		Aircraft = 10,
		Ship = 10,
		Sub = 10,

		Meteor = 0,
		Drone = 10,
		Spare1 = 10,
		Spare2 = 10,
		Spare3 = 10,		
	      },
  },
  
DRONE_AIR_UNIT = {

   name					= "Drone Air Unit",
   ballistic			= 1,
   turret				= 1,
   impulseFactor		= 0,
   range				= 480,
   reloadtime			= 3.6,
   weaponvelocity		= 250,
   areaofeffect			= 75,
   soundstart			= "golgotha/old_generic.wav",
   soundhit				= "golgotha/old_generic.wav",
   explosiongenerator	= "custom:ct_drone_explosion_air",
	      damage                  = {
		default = 50,  		  
		Cruiser = 50,
		Building = 50,
		Land = 50,
		Aircraft = 50,
		Ship = 50,
		Sub = 50,

		Meteor = 0,
		Drone = 50,
		Spare1 = 50,
		Spare2 = 50,
		Spare3 = 50,		
	      },
  },


DRONE_GROUND_UNIT = {

   name					= "Drone Ground Unit",
   ballistic			= 1,
   turret				= 1,
   impulseFactor		= 0,
   range				= 480,
   reloadtime			= 3.6,
   weaponvelocity		= 250,
   areaofeffect			= 95,
   soundstart			= "golgotha/old_generic.wav",
   soundhit				= "golgotha/old_generic.wav",
   explosiongenerator	= "custom:ct_drone_explosion_ground",
	      damage                  = {
		default = 100,  		  
		Cruiser = 100,
		Building = 100,
		Land = 100,
		Aircraft = 100,
		Ship = 100,
		Sub = 100,

		Meteor = 0,
		Drone = 100,
		Spare1 = 100,
		Spare2 = 100,
		Spare3 = 100,		
	      },
  },  
  
DRONE_BUILDING = {
   name					= "Drone building",
   ballistic			= 1,
   turret				= 1,
   impulseFactor		= 0,
   range				= 480,
   reloadtime			= 3.6,
   weaponvelocity		= 250,
   areaofeffect			= 325,
   soundstart			= "golgotha/generic.wav",
   soundhit				= "golgotha/generic.wav",
   explosiongenerator	= "custom:ct_drone_explosion_building",
	      damage                  = {
		default = 150,  		  
		Cruiser = 150,
		Building = 150,
		Land = 150,
		Aircraft = 150,
		Ship = 150,
		Sub = 150,

		Meteor = 0,
		Drone = 150,
		Spare1 = 150,
		Spare2 = 150,
		Spare3 = 150,		
	      },
  },  
}

return lowerkeys(unitDeaths)
