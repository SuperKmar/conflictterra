-- $Id: icon_generator.lua 4354 2009-04-11 14:32:28Z licho $
-----------------------------------------------------------------------
-----------------------------------------------------------------------
--
--  Icon Generator Config File
--

--// Info
if (info) then
  local ratios      = {["5to4"]=(4/5)} --{["16to10"]=(10/16), ["1to1"]=(1/1), ["5to4"]=(4/5)} --, ["4to3"]=(3/4)}
  local resolutions = {{128,128}} --{{128,128},{64,64}}
  local schemes     = {""}

  return schemes,resolutions,ratios
end

-----------------------------------------------------------------------
-----------------------------------------------------------------------

--// filename ext
imageExt = ".png"

--// render into a fbo in 4x size
renderScale = 4

--// faction colors (check (and needs) LuaRules/factions.lua)
factionTeams = {
  arm     = 0,   --// arm
  core    = 1,   --// core
  chicken = 2,   --// chicken
  unknown = 2,   --// unknown
}
factionColors = {
  arm     = {0.0,0.0,1.0},   --// arm
  core    = {1.0,0.0,0.0},   --// core
  chicken = {1.0,0.8,0.2},   --// chicken
  unknown = {1.0,0.0,0.0},   --// unknown
}


-----------------------------------------------------------------------
-----------------------------------------------------------------------

--// render options textured
textured = (scheme~="bw")
lightAmbient = {1.1,1.1,1.1}
lightDiffuse = {0.4,0.4,0.4}
lightPos     = {-0.2,0.4,0.5}

--// Ambient Occlusion & Outline settings
aoPower     = ((scheme=="bw") and 1.5) or 1
aoContrast  = ((scheme=="bw") and 2.5) or 1
aoTolerance = 0
olContrast  = ((scheme=="bw") and 5) or 10
olTolerance = 0

--// halo (white)
halo  = false --(scheme~="bw")


-----------------------------------------------------------------------
-----------------------------------------------------------------------

--// backgrounds
background = true
local function Greater30(a)     return a>30;  end
local function GreaterEq25(a)   return a>=25; end
local function GreaterZero(a)   return a>0;   end
local function GreaterEqZero(a) return a>=0;  end
local function GreaterFour(a)   return a>4;   end
local function LessEqZero(a)    return a<=0;  end

backgrounds = {
  {check={name="ecommander"},							texture="LuaRules/Images/IconGenBkgs/allterrcon.png"},

  {check={name="eexperimentalfac"},							texture="LuaRules/Images/IconGenBkgs/factory.png"},
  {check={name="eexkrabgroth"},							texture="LuaRules/Images/IconGenBkgs/allterrgeneral.png"},
  
  {check={name="eminifac"},							texture="LuaRules/Images/IconGenBkgs/factory.png"},
  {check={name="eallterrengineer"},							texture="LuaRules/Images/IconGenBkgs/allterrcon.png"},
  {check={name="eallterrriot"}, 								texture="LuaRules/Images/IconGenBkgs/allterrgeneral.png"},
  {check={name="eallterrheavy"},							texture="LuaRules/Images/IconGenBkgs/allterrgeneral.png"},
  {check={name="eallterrlight"},							texture="LuaRules/Images/IconGenBkgs/allterrgeneral.png"},
  {check={name="eallterrmed"},							texture="LuaRules/Images/IconGenBkgs/allterrgeneral.png"},
  {check={name="eallterrshield"},							texture="LuaRules/Images/IconGenBkgs/allterrgeneral.png"},
  {check={name="eallterrassault"},							texture="LuaRules/Images/IconGenBkgs/allterrgeneral.png"},

  {check={name="eamphibfac"},							texture="LuaRules/Images/IconGenBkgs/uwfactory.png"},
  {check={name="eamphibengineer"},							texture="LuaRules/Images/IconGenBkgs/amphibcon.png"},
  {check={name="eamphibarty"},							texture="LuaRules/Images/IconGenBkgs/amphibgeneral.png"},
  {check={name="eamphibbuggy"}, 								texture="LuaRules/Images/IconGenBkgs/amphibgeneral.png"},
  {check={name="eamphibdrone"},							texture="LuaRules/Images/IconGenBkgs/amphibgeneral.png"},
  {check={name="eamphibmedtank"},							texture="LuaRules/Images/IconGenBkgs/amphibgeneral.png"},
  {check={name="eamphibriot"}, 								texture="LuaRules/Images/IconGenBkgs/amphibgeneral.png"},
  {check={name="eamphibrock"},							texture="LuaRules/Images/IconGenBkgs/amphibgeneral.png"},
  {check={name="esubmarine"},							texture="LuaRules/Images/IconGenBkgs/amphibgeneral.png"},
  
  {check={name="eairplant"},							texture="LuaRules/Images/IconGenBkgs/factory.png"},
  {check={name="eairengineer"},							texture="LuaRules/Images/IconGenBkgs/aircon.png"},
  {check={name="escout"}, 								texture="LuaRules/Images/IconGenBkgs/airgeneral.png"},
  {check={name="ebomber"}, 								texture="LuaRules/Images/IconGenBkgs/airgeneral.png"},
  {check={name="efighter"},							texture="LuaRules/Images/IconGenBkgs/airgeneral.png"},
  {check={name="egunship2"},							texture="LuaRules/Images/IconGenBkgs/airgeneral.png"},
  {check={name="etransport"},							texture="LuaRules/Images/IconGenBkgs/airgeneral.png"},
  {check={name="esubplane"},							texture="LuaRules/Images/IconGenBkgs/airgeneral.png"},
  {check={name="edrone"},							texture="LuaRules/Images/IconGenBkgs/airgeneral.png"},
  
  {check={name="ecommandfactory"},							texture="LuaRules/Images/IconGenBkgs/factory.png"},
  {check={name="ebasefactory"},							texture="LuaRules/Images/IconGenBkgs/factory.png"},
  {check={name="eorb"},							texture="LuaRules/Images/IconGenBkgs/hovercon.png"},
  {check={name="eengineer5"},							texture="LuaRules/Images/IconGenBkgs/hovercon.png"},
  {check={name="eaatank"},							texture="LuaRules/Images/IconGenBkgs/hovergeneral.png"},
  {check={name="eartytank"}, 								texture="LuaRules/Images/IconGenBkgs/hovergeneral.png"},
  {check={name="ebomb"},							texture="LuaRules/Images/IconGenBkgs/hovergeneral.png"},
  {check={name="efatso2"},							texture="LuaRules/Images/IconGenBkgs/hovergeneral.png"},
  {check={name="eflametank"}, 								texture="LuaRules/Images/IconGenBkgs/hovergeneral.png"},
  {check={name="eheavytank3"},							texture="LuaRules/Images/IconGenBkgs/hovergeneral.png"},
  {check={name="elighttank3"},							texture="LuaRules/Images/IconGenBkgs/hovergeneral.png"},
  {check={name="emediumtank3"},							texture="LuaRules/Images/IconGenBkgs/hovergeneral.png"},
  {check={name="emissiletank"},							texture="LuaRules/Images/IconGenBkgs/hovergeneral.png"},
  {check={name="eriottank2"}, 								texture="LuaRules/Images/IconGenBkgs/hovergeneral.png"},
  
  {check={name="eaaturret"},							texture="LuaRules/Images/IconGenBkgs/building.png"},
  {check={name="ebarricade"},							texture="LuaRules/Images/IconGenBkgs/building.png"},
  {check={name="efusion2"}, 								texture="LuaRules/Images/IconGenBkgs/building.png"},
  {check={name="egeothermal"},							texture="LuaRules/Images/IconGenBkgs/building.png"},
  {check={name="eheavyturret2"},							texture="LuaRules/Images/IconGenBkgs/building.png"},
  {check={name="ejammer2"}, 								texture="LuaRules/Images/IconGenBkgs/building.png"},
  {check={name="elightturret2"},							texture="LuaRules/Images/IconGenBkgs/building.png"},
  {check={name="elrpc"},							texture="LuaRules/Images/IconGenBkgs/building.png"},
  {check={name="emaker"},							texture="LuaRules/Images/IconGenBkgs/building.png"},
  {check={name="emetalextractor"},							texture="LuaRules/Images/IconGenBkgs/building.png"},
  {check={name="eradar2"}, 								texture="LuaRules/Images/IconGenBkgs/building.png"},
  {check={name="eshieldgen"}, 								texture="LuaRules/Images/IconGenBkgs/building.png"},
  {check={name="esilo"}, 								texture="LuaRules/Images/IconGenBkgs/building.png"},
  {check={name="esolar2"}, 								texture="LuaRules/Images/IconGenBkgs/building.png"},
  {check={name="estorage"}, 								texture="LuaRules/Images/IconGenBkgs/building.png"},
  
  {check={name="euwfusion2"}, 								texture="LuaRules/Images/IconGenBkgs/uwbuilding.png"},
  {check={name="euwmetalextractor"}, 								texture="LuaRules/Images/IconGenBkgs/uwbuilding.png"},
  {check={name="euwsolar2"}, 								texture="LuaRules/Images/IconGenBkgs/uwbuilding.png"},
  {check={name="euwstorage"}, 								texture="LuaRules/Images/IconGenBkgs/uwbuilding.png"},
  
  {check={name="randagorm"}, 								texture="LuaRules/Images/IconGenBkgs/random.png"},
  {check={name="randartturilo"}, 								texture="LuaRules/Images/IconGenBkgs/random.png"},
  {check={name="randcactus"}, 								texture="LuaRules/Images/IconGenBkgs/random.png"},
  {check={name="randespire"}, 								texture="LuaRules/Images/IconGenBkgs/random.png"},
  {check={name="randrock"}, 								texture="LuaRules/Images/IconGenBkgs/random.png"},
  {check={name="randsnowtree"}, 								texture="LuaRules/Images/IconGenBkgs/random.png"},
  {check={name="randtree"}, 								texture="LuaRules/Images/IconGenBkgs/random.png"},
  {check={name="rand0adbush"}, 								texture="LuaRules/Images/IconGenBkgs/random.png"},
  {check={name="rand0adsnowtree"}, 								texture="LuaRules/Images/IconGenBkgs/random.png"},
  {check={name="randartturiwinterlo"}, 								texture="LuaRules/Images/IconGenBkgs/random.png"},
  {check={name="randbehartlo"}, 								texture="LuaRules/Images/IconGenBkgs/random.png"},
  {check={name="randbehetree"}, 								texture="LuaRules/Images/IconGenBkgs/random.png"},

  {check={name="goldtree"}, 								texture="LuaRules/Images/IconGenBkgs/goldtree.png"},

  
  
  {check={},                                                 texture="LuaRules/Images/IconGenBkgs/catchall.png"},
}


-----------------------------------------------------------------------
-----------------------------------------------------------------------

--// default settings for rendering
--//zoom   := used to make all model icons same in size (DON'T USE, it is just for auto-configuration!)
--//offset := used to center the model in the fbo (not in the final icon!) (DON'T USE, it is just for auto-configuration!)
--//rot    := facing direction
--//angle  := topdown angle of the camera (0 degree = frontal, 90 degree = topdown)
--//clamp  := clip everything beneath it (hide underground stuff)
--//scale  := render the model x times as large and then scale down, to replaces missing AA support of FBOs (and fix rendering of very tine structures like antennas etc.))
--//unfold := unit needs cob to unfolds
--//move   := send moving cob events (works only with unfold)
--//attack := send attack cob events (works only with unfold)
--//shotangle := vertical aiming, useful for arties etc. (works only with unfold+attack)
--//wait   := wait that time in gameframes before taking the screenshot (default 300) (works only with unfold)
--//border := free space around the final icon (in percent/100)
--//empty  := empty model (used for fake units in CA)
--//attempts := number of tries to scale the model to fit in the icon

defaults = {border=0.05, angle=45, rot="right", clamp=-10000, scale=1.5, empty=false, attempts=10, wait=450, zoom=1.0, offset={0,0,0}, unfold=true,};


-----------------------------------------------------------------------
-----------------------------------------------------------------------

--// per unitdef settings
unitConfigs = {

  [UnitDefNames.eartytank.id]  = { wait = 30 },
  [UnitDefNames.ebasefactory.id]  = { wait = 30 },
  [UnitDefNames.ebomber.id]  = { wait = 30 },
  [UnitDefNames.eengineer4.id]  = { wait = 30 },
  [UnitDefNames.efatso2.id]  = { wait = 30 },
  [UnitDefNames.efighter.id]  = { wait = 30 },
  [UnitDefNames.eflametank.id]  = { wait = 30 },
  [UnitDefNames.efusion2.id]  = { wait = 30 },
  [UnitDefNames.egeothermal.id]  = { wait = 30 },
  [UnitDefNames.egunship2.id]  = { wait = 30 },
  [UnitDefNames.eheavytank3.id]  = { wait = 30 },
  [UnitDefNames.eheavyturret2.id]  = { wait = 30 },
  [UnitDefNames.ejammer2.id]  = { wait = 30 },
  [UnitDefNames.elighttank3.id]  = { wait = 30 },
  [UnitDefNames.elightturret2.id]  = { wait = 30 },
  [UnitDefNames.emediumtank3.id]  = { wait = 30 },
  [UnitDefNames.emetalextractor.id]  = { wait = 30 },
  [UnitDefNames.emissiletank.id]  = { wait = 30 },
  [UnitDefNames.eradar2.id]  = { wait = 30 },
  [UnitDefNames.eriottank2.id]  = { wait = 30 },
  [UnitDefNames.escout.id]  = { wait = 30 },
  [UnitDefNames.esolar2.id]  = { wait = 30 },
  [UnitDefNames.estorage.id]  = { wait = 30 },
  [UnitDefNames.etransport.id]  = { wait = 30 },

}


for i=1,#UnitDefs do
   --unitConfigs[i] = defaults

  if (UnitDefs[i].canFly) then
    if (unitConfigs[i]) then
      if (unitConfigs[i].unfold ~= false) then
        unitConfigs[i].unfold = true
        unitConfigs[i].move   = true
      end
    else
      unitConfigs[i] = {unfold = true, move = true}
    end
  elseif (UnitDefs[i].canKamikaze) then
    if (unitConfigs[i]) then
      if (not unitConfigs[i].border) then
        unitConfigs[i].border = 0.156
      end
    else
      unitConfigs[i] = {border = 0.156}
    end
  end
end