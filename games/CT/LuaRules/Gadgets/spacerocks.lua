--BUG: rocks fly on endlessly on /luarules reload or when gadget is killed for whatever reason

function gadget:GetInfo()
  return {
    name      = "Space Rock",
    desc      = "Spawns rocks from space.",
    author    = "oksnoop2 heavily modded by knorke yo!",
    date      = "4/24/2010",
    license   = "GNU GPL, v2 or later",
    layer     = 0,
    enabled   = true,  --  loaded by default?
  }
end


if not gadgetHandler:IsSyncedCode() then
  return false -- no unsynced code
end


----- Settings -----------------------------------------------------------------
local meteorDefName  = {} --{"bmeteor_big", "bmeteor"} --meteor unit name in flight -> add impactunitname="unitname" tag to a unitdef to make i spawn as a meteor
local meteorInterval = 120	--2000 	-- time between the arrival of meteor storms, in seconds
local meteorNumber = 5		--how many meteors per meteor storm
local meteorSpread = 300	--how far apart meteors drop (meteors storms cover a square with a sidelength of meteorSpread)
local fallGravity = 1
local meteorSpawnHeight = 5000
local min_distance_to_units = 100	--how far away from player units a meteor must impact to leave a rock (as not to block units or factories)
local burnEffect1 = "firetrail2" -- CEG used for the meteor trail, needs to be visible out of los
local burnEffect2 = "buildersparks"
local slidespeed = 30
local debug = true
----------------------------------------------------------------------------------
local meteors = {} -- meteor set

function make_meteorDefName_table ()
if (debug) then Spring.Echo ("spacerocks.lua: looking for spacerocks unitdefs") end
	for id,unitDef in pairs(UnitDefs) do
		local cp = UnitDefs[id].customParams
		if (cp) then
			if (cp.impactunitname) then
				local resname = unitDef.name
				if (debug) then Spring.Echo ("spacerocks.lua: found unitdef with impactunitname tag:" .. resname) end
				table.insert (meteorDefName, resname)
			end
		end
	end
if (meteorDefName == nil or #meteorDefName == 0) then
	Spring.Echo ("spacerocks: no unitdefs with impactunitname tag found, no meteors will drop.")
	gadgetHandler:RemoveGadget() 
	end
end



local function Impact (meteorID)
	local nearunits = Spring.GetUnitNearestEnemy  (meteorID, min_distance_to_units, false)		
	local x, y, z = Spring.GetUnitPosition(meteorID)
	local h = Spring.GetGroundHeight(x, z)
	local cp = UnitDefs[Spring.GetUnitDefID(meteorID)].customParams
	
	--slide down slopes
	local gnx,gny,gnz = Spring.GetGroundNormal (x,z)
	local mx = x+(gnx*slidespeed)
	local mz = z+(gnz*slidespeed)
	Spring.MoveCtrl.SetPosition (meteorID, mx, h,mz)	
	--Spring.MoveCtrl.SetRotationOffset (meteorID,0,0,0)
	--Spring.MoveCtrl.SetRotationVelocity (meteorID, gnx, 0, gnz) --this doesnt really work
	if (math.abs (x-mx) > 3 or math.abs (z-mz) > 3) then return end --danger: depending on terrain and too high slidespeed, unit might jump between two positions and never come to rest
	
	--	if (cp) then Spring.Echo ("has custom para") else Spring.Echo ("has NO custom para") end
	if (h > 0 and nearunits==nil and cp) then	--only leave a rock if the meteor landed on land and not too near units. otherwise just explode (so it does not block factories etc)	
--		Spring.Echo ("yo")
--		Spring.Echo (cp)
		--for i,v in ipairs(cp) do Spring.Echo(i .. "="..v) end
		local remains_name = UnitDefs[Spring.GetUnitDefID(meteorID)].customParams.impactunitname		
		if (remains_name ~= nil) then
--			Spring.Echo ("exploding into" .. remains_name)
			local remains = Spring.CreateUnit (remains_name, x,y,z, math.random(0,3), Spring.GetGaiaTeamID())  --leave a crashed meteor thing at the impact site
			Spring.SetUnitAlwaysVisible(remains, true)
			Spring.GiveOrderToUnit(remains, CMD.ONOFF, { 0 }, {} )
		end			
	end
	meteors[meteorID] = nil -- remove meteor from the meteor set
	Spring.DestroyUnit(meteorID) -- make meteor explode
end


local function MeteorStorm (stormX,stormY, a, n)
	for i = 1, n, 1 do
		--pick a spawn point for the meteor, randomly spread near the meteor storms location
		local mh = Spring.GetGroundHeight(stormX, stormY) + meteorSpawnHeight+math.random (0,i*500)
		local mx =stormX+math.random(-a/2,a/2)
		local mz =stormY+math.random(-a/2,a/2)
		local meteortype =  math.random(table.getn(meteorDefName))	--select a random type of meteor
		local meteorID = Spring.CreateUnit(meteorDefName[meteortype], mx, mh, mz, "n", Spring.GetGaiaTeamID()) -- will ignore Y and spawn at ground level
		meteors[meteorID] = true -- put it in the meteor set
		Spring.SetUnitAlwaysVisible(meteorID, true)
		Spring.MoveCtrl.Enable(meteorID) -- tell spring we'll take care of moving the meteor
		Spring.MoveCtrl.SetPosition (meteorID,mx,mh,mz)
		Spring.MoveCtrl.SetGravity(meteorID, fallGravity*math.random(1,1.5)) -- make gravity affect the meteor
		Spring.MoveCtrl.SetRotationVelocity (meteorID, math.random (-0.2,0.2),math.random (-0.2,0.2),math.random (-0.05,0.05))   --spinning and tumbling!
	end
end

function gadget:GameFrame(frame)
--Spring.SpawnCEG(burnEffect2, 10,300 , 10)
--Spring.SpawnCEG(burnEffect1, 50,300 , 10,0,1,0,5)
--if (frame % 90 == 0) then Spring.SpawnCEG(burnEffect1, 100,300,10) end
	if frame > 1 and frame % (30 * meteorInterval) == 0 then 
		-- pick a random location for the meteor storm
		local meteorSpawnX = math.random(Game.mapSizeX)
		local meteorSpawnZ = math.random(Game.mapSizeZ)
		Spring.Echo ("Incoming Meteor Storm! Coordinates: [" .. meteorSpawnX .. " : " .. meteorSpawnZ .."]")
		MeteorStorm (meteorSpawnX, meteorSpawnZ, meteorSpread, meteorNumber)
	end
  for meteorID in pairs(meteors) do  -- loop through every meteor in the meteor set
    local x, y, z = Spring.GetUnitPosition(meteorID)
    local h = Spring.GetGroundHeight(x, z)
    if y < h+15 then -- if the meteor below ground level
		Spring.MoveCtrl.SetGravity(meteorID, 0)
		Impact (meteorID)
    else -- above ground, show the meteor trail
      Spring.SpawnCEG(burnEffect1, x+math.random(-20,20), y, z+math.random(-20,20))
--      Spring.SpawnCEG(burnEffect2, x, y, z)
    end
  end
end


function gadget:UnitDestroyed(unitID, unitDefID, teamID, attackerID)
--for testing: if cheating is enabled you can summon meteor storms by selfdestructing bmex
	if (Spring.IsCheatingEnabled()==true and string.find (UnitDefs[unitDefID].name, "bmex") ~= nil) then 
		local x, y, z = Spring.GetUnitPosition(unitID)
		MeteorStorm (x, z, meteorSpread, 6)
		end
--triggering meteor storms (ie for missions)
	if (string.find (UnitDefs[unitDefID].name, "tptrigger_meteorstorm")) then
		local x, y, z = Spring.GetUnitPosition(unitID)
		MeteorStorm (x, z, meteorSpread, 6)
		end	
--blocking random meteor storms (ie for missions)
		if (string.find (UnitDefs[unitDefID].name, "tptrigger_nometeorstorms")) then
		meteorInterval = 999999999
		Spring.Echo ("spacerocks.lua: no random meteor storms")
		end		
end

function gadget:Initialize()
	make_meteorDefName_table ()
end