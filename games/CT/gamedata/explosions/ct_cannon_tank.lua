--ct_cannon_tank
--Cannon muzzle flare for tanks (with Particles)
--by Sanada

return {
  ["ct_cannon_tank"] = {
	
    ring = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      underwater         = 1,
      useairlos          = true,
      water              = true,
      alwaysVisible      = true,
	  properties = {
        alwaysVisible      = true,
	    airdrag            = 0.95,
        colormap           = [[1 1 0 0.25	    1 0.75 0 0.15     1 0.5 0 0.05]],
        directional        = 1,
        emitrot            = 90,
        emitrotspread      = 0,
        emitvector         = [[dir]],
        gravity            = [[0, 0, 0]],
        numparticles       = 30,
        particlelife       = 7,
        particlelifespread = 4,
        particlesize       = 0.5,
        particlesizespread = 1,
        particlespeed      = 2,
        particlespeedspread = 1,
        pos                = [[0, 0, 0]],
        sizegrowth         = 0.5,
        sizemod            = 1,
        texture            = [[ct_smoke]],
      },
    },
	
    poof = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      underwater         = 1,
      useairlos          = true,
      water              = true,
      alwaysVisible      = true,
	  properties = {
        alwaysVisible      = true,
	    airdrag            = 0.95,
        colormap           = [[1 1 0 0.25	    1 0.75 0 0.15     1 0.5 0 0.05]],
        directional        = 1,
        emitrot            = 10,
        emitrotspread      = 10,
        emitvector         = [[dir]],
        gravity            = [[0, 0, 0]],
        numparticles       = 10,
        particlelife       = 9,
        particlelifespread = 4,
        particlesize       = 0.75,
        particlesizespread = 1,
        particlespeed      = 2,
        particlespeedspread = 1,
        pos                = [[0, 0, 0]],
        sizegrowth         = 1,
        sizemod            = 1,
        texture            = [[ct_smoke]],
      },
    },	
  
  },


}