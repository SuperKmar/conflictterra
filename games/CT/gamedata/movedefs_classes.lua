	local moveDefs = {

	        Engineer2x2 = {
	                footprintx = 2,
	                footprintz = 2,
	                maxwaterdepth = 30,
	                maxslope = 36,
					slopemod = 0.1,
					depthmod = 0.1,
					minwaterdepth = 10,
					heatproduced = 60,
					heatmapping = 1,
					heatmod = 50,
	                crushstrength = 50,
	        },
			
	        Engineer3x3 = {
	                footprintx = 3,
	                footprintz = 3,
	                maxwaterdepth = 30,
	                maxslope = 36,
					slopemod = 0.1,
					depthmod = 0.1,
					minwaterdepth = 10,
					heatproduced = 60,
					heatmapping = 1,
					heatmod = 50,					
	                crushstrength = 50,
	        },			

	        Mech3x3 = {
	                footprintx = 3,
	                footprintz = 3,
	                maxwaterdepth = 22,
	                maxslope = 36,
					slopemod = 0.1,
					depthmod = 0.1,
					minwaterdepth = 10,
					heatproduced = 60,
					heatmapping = 1,
					heatmod = 50,
	                crushstrength = 50,
	        },
	
	        Mech4x4 = {
	                footprintx = 4,
	                footprintz = 4,
	                maxwaterdepth = 22,
	                maxslope = 36,
					slopemod = 0.1,
					depthmod = 0.1,
					minwaterdepth = 10,
					heatproduced = 60,
					heatmapping = 0,
					heatmod = 50,					
	                crushstrength = 50,
	        },
			
	        Mech6x6 = {
	                footprintx = 6,
	                footprintz = 6,
	                maxwaterdepth = 22,
	                maxslope = 36,
					slopemod = 0.1,
					depthmod = 0.1,
					minwaterdepth = 10,
					heatproduced = 60,
					heatmapping = 0,
					heatmod = 50,
	                crushstrength = 500,
	        },			

	        TANK2x2 = {
	                footprintx = 2,
	                footprintz = 2,
	                maxwaterdepth = 22,
	                maxslope = 18,
					slopemod = 0.2,
					depthmod = 0.1,
					minwaterdepth = 10,
					heatproduced = 60,
					heatmapping = 1,
					heatmod = 50,					
	                crushstrength = 50,
	        },
			
	        TANK3x3 = {
	                footprintx = 3,
	                footprintz = 3,
	                maxwaterdepth = 22,
	                maxslope = 18,
					slopemod = 0.2,
					depthmod = 0.1,
					minwaterdepth = 10,
					heatproduced = 60,
					heatmapping = 1,
					heatmod = 50,						
	                crushstrength = 50,
	        },			

	        TANK4x4 = {
	                footprintx = 4,
	                footprintz = 4,
	                maxwaterdepth = 22,
	                maxslope = 18,
					slopemod = 0.2,
					depthmod = 0.1,
					minwaterdepth = 10,
					heatproduced = 60,
					heatmapping = 0,
					heatmod = 50,
	                crushstrength = 500,
	        },

	        TANK5x5 = {
	                footprintx = 5,
	                footprintz = 5,
	                maxwaterdepth = 22,
	                maxslope = 18,
					slopemod = 0.2,
					depthmod = 0.1,
					minwaterdepth = 10,
					heatproduced = 60,
					heatmapping = 0,
					heatmod = 50,
	                crushstrength = 1000,
	        },

	        SHIP3x3 = {
	                footprintx = 3,
	                footprintz = 3,
	                minwaterdepth = 5,
					maxslope = 60,
					slopemod = 0.07,
					depthmod = 0.1,
					heatproduced = 60,
					heatmapping = 1,
					heatmod = 50,					
	                crushstrength = 50,
	        },

	        SHIP4x4 = {
	                footprintx = 4,
	                footprintz = 4,
	                minwaterdepth = 5,
					maxslope = 60,
					slopemod = 0.07,
					depthmod = 0.1,
					heatproduced = 60,
					heatmapping = 1,
					heatmod = 50,					
	                crushstrength = 50,
	        },

	        SHIP5x5 = {
	                footprintx = 5,
	                footprintz = 5,
	                minwaterdepth = 5,
					maxslope = 60,
					slopemod = 0.07,
					depthmod = 0.1,
					heatproduced = 60,
					heatmapping = 1,
					heatmod = 50,					
	                crushstrength = 50,
	        },
			
	        SHIP6x6 = {
	                footprintx = 6,
	                footprintz = 6,
	                minwaterdepth = 5,
					maxslope = 60,
					slopemod = 0.07,
					depthmod = 0.1,
					heatproduced = 60,
					heatmapping = 1,
					heatmod = 50,
	                crushstrength = 50,
	        },			

	        SHIP7x7 = {
	                footprintx = 7,
	                footprintz = 7,
	                minwaterdepth = 10,
					maxslope = 60,
					slopemod = 0.07,
					depthmod = 0.1,
					heatproduced = 60,
					heatmapping = 1,
					heatmod = 50,					
	                crushstrength = 500,
	        },
			
	        SHIP8x8 = {
	                footprintx = 8,
	                footprintz = 8,
	                minwaterdepth = 10,
					maxslope = 60,
					slopemod = 0.07,
					depthmod = 0.1,
					heatproduced = 60,
					heatmapping = 1,
					heatmod = 50,					
	                crushstrength = 500,
	        },			

	        SHIP10x10 = {
	                footprintx = 10,
	                footprintz = 10,
	                minwaterdepth = 15,
					maxslope = 60,
					slopemod = 0.07,
					depthmod = 0.1,
					heatproduced = 60,
					heatmapping = 1,
					heatmod = 50,					
	                crushstrength = 1000,
	        },

	        HOVER2x2 = {
	                footprintx = 2,
	                footprintz = 2,
	                maxwaterdepth = 22,
	                maxslope = 18,
					slopemod = 0.2,
					depthmod = 0.1,
					minwaterdepth = 10,
					heatproduced = 60,
					heatmapping = 1,
					heatmod = 50,
	                crushstrength = 50,
	        },

	        HOVER4x4 = {
	                footprintx = 4,
	                footprintz = 4,
	                maxwaterdepth = 22,
	                maxslope = 18,
					slopemod = 0.2,
					depthmod = 0.1,
					minwaterdepth = 10,
					heatproduced = 60,
					heatmapping = 1,
					heatmod = 50,
	                crushstrength = 500,
	        },

	        HOVER8x8 = {
	                footprintx = 8,
	                footprintz = 8,
	                maxwaterdepth = 22,
	                maxslope = 18,
					slopemod = 0.2,
					depthmod = 0.1,
					minwaterdepth = 10,
					heatproduced = 60,
					heatmapping = 1,
					heatmod = 50,
	                crushstrength = 1000,
	        },

	        SubBOAT4x4 = {
	                footprintx = 4,
	                footprintz = 4,
	                minwaterdepth = 45,
	                crushstrength = 500,
					maxslope = 60,
					slopemod = 0.07,
					depthmod = 0.1,
					heatproduced = 60,
					heatmapping = 1,
					heatmod = 50,
	                subMarine = 1,
	        },
			
	        SubBOAT5x5 = {
	                footprintx = 5,
	                footprintz = 5,
	                minwaterdepth = 45,
	                crushstrength = 500,
					maxslope = 60,
					slopemod = 0.07,
					depthmod = 0.1,
					heatproduced = 60,
					heatmapping = 1,
					heatmod = 50,					
	                subMarine = 1,
	        },			
 		
		kdrone = {
	                footprintx = 3,
	                footprintz = 3,
	                maxwaterdepth = 99999999,
	                maxslope = 99999999,
					slopemod = 4,
					depthmod = 0.1,
					minwaterdepth = 10,
					heatproduced = 60,
					heatmapping = 1,
					heatmod = 50,
	                crushstrength = 50,
	        },	
	}
	
	--------------------------------------------------------------------------------
	--------------------------------------------------------------------------------
	
	-- convert from map format to the expected array format
	
	local array = {}
	local i = 1
	for k,v in pairs(moveDefs) do
	        array[i] = v
	        v.name = k
	        i = i + 1
	end
	
	
	--------------------------------------------------------------------------------
	--------------------------------------------------------------------------------
	
	return array