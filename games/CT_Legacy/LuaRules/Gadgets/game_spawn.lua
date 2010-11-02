--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--
--  file:    game_spawn.lua
--  brief:   spawns start unit and sets storage levels
--  author:  Tobi Vollebregt
--
--  Copyright (C) 2010.
--  Licensed under the terms of the GNU GPL, v2 or later.
--
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

function gadget:GetInfo()
	return {
		name      = "Spawn",
		desc      = "spawns start unit and sets storage levels",
		author    = "Tobi Vollebregt",
		date      = "January, 2010",
		license   = "GNU GPL, v2 or later",
		layer     = 0,
		enabled   = true,
	}
end

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

-- synced only
if (not gadgetHandler:IsSyncedCode()) then
	return false
end
local ressource_name = "bminerals"
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

local modOptions = Spring.GetModOptions()

--local function SpawnRessources ()
	
--end

local function SpawnRessourceField (x,z,  number, spread)
	for i = 0, number, 1 do
		local sx = x+math.random (-spread,spread)
		local sz = z+math.random (-spread,spread)
		local sh = Spring.GetGroundHeight(sx, sz)
		local res = Spring.CreateUnit(ressource_name, sx, sh, sz, math.random(0,3), Spring.GetGaiaTeamID())
		Spring.GiveOrderToUnit(res, CMD.ONOFF, { 0 }, {} )
--		Spring.SetUnitNeutral (res, true)
		Spring.SetUnitAlwaysVisible(res, true)
		end
end

local function GetStartUnit(teamID)
	-- get the team startup info
	local side = select(5, Spring.GetTeamInfo(teamID))
	local startUnit
	if (side == "") then
		-- startscript didn't specify a side for this team
		local sidedata = Spring.GetSideData()
		if (sidedata and #sidedata > 0) then
			startUnit = sidedata[1 + teamID % #sidedata].startUnit
		end
	else
		startUnit = Spring.GetSideData(side)
	end
	return startUnit
end

local function SpawnStartUnit(teamID)
	local startUnit = string.lower(GetStartUnit(teamID))
	if (startUnit and startUnit ~= "") then
		local teamNum,leader,isDead,isAiTeam,side,allyTeam = Spring.GetTeamInfo(teamID)
		if isAiTeam then
			if startUnit=="bflagship2" then
				startUnit="bflagshipbase"
			end
		end
		-- spawn the specified start unit
		local x,y,z = Spring.GetTeamStartPosition(teamID)
		x, z = 8*math.floor((x+4)/8), 8*math.floor((z+4)/8)
		y = Spring.GetGroundHeight(x, z)
		local facing = math.abs(Game.mapSizeX/2 - x) > math.abs(Game.mapSizeZ/2 - z)
			and ((x>Game.mapSizeX/2) and "west" or "east")
			or ((z>Game.mapSizeZ/2) and "north" or "south")
		local unitID = Spring.CreateUnit(startUnit, x, y, z, facing, teamID)
		if unitID then
			-- set the *team's* lineage root
			Spring.SetUnitLineage(unitID, teamID, true)
		end
	end

	-- set start resources, either from mod options or custom team keys
	local teamOptions = select(7, Spring.GetTeamInfo(teamID))
	local m = teamOptions.startmetal  or modOptions.startmetal  or 1000
	local e = teamOptions.startenergy or modOptions.startenergy or 1000

	-- using SetTeamResource to get rid of any existing resource without affecting stats
	-- using AddTeamResource to add starting resource and counting it as income
	if (m and tonumber(m) ~= 0) then
		-- remove the pre-existing storage
		--   must be done after the start unit is spawned,
		--   otherwise the starting resources are lost!
		Spring.SetTeamResource(teamID, "ms", 99999999999999999999999)
		Spring.SetTeamResource(teamID, "m", 0)
		Spring.AddTeamResource(teamID, "m", tonumber(m))
	end
	if (e and tonumber(e) ~= 0) then
		-- remove the pre-existing storage
		--   must be done after the start unit is spawned,
		--   otherwise the starting resources are lost!
		Spring.SetTeamResource(teamID, "es", tonumber(e))
		Spring.SetTeamResource(teamID, "e", 0)
		Spring.AddTeamResource(teamID, "e", tonumber(e))
	end
end


function gadget:GameStart()
	if getfenv(0).AllowUnsafeChanges then
		getfenv(0).AllowUnsafeChanges("USE AT YOUR OWN PERIL")
	end
	local gaiaTeamID = Spring.GetGaiaTeamID()
	for _,teamID in ipairs(Spring.GetTeamList()) do
		if teamID~=gaiaTeamID then -- don't spawn a start unit for the Gaia team
			if #Spring.GetTeamUnits(teamID)==0 then -- only if the engine hasn't already spawned a start unit
				SpawnStartUnit(teamID)
			end
		end
	end
	--SpawnRessources()  HACK: should be done by the map
	
--	SpawnRessourceField (2500,1500, 12, 300)
--	SpawnRessourceField (5200,2000, 12, 300)
--	SpawnRessourceField (3000,6000, 12, 300)
--	SpawnRessourceField (5500,6000, 12, 300)
--	SpawnRessourceField (3100,4600, 5, 100)
--	SpawnRessourceField (4500,3200, 5, 100)
	
	if getfenv(0).AllowUnsafeChanges then
		getfenv(0).AllowUnsafeChanges("Any string to turn it off")
	end
end