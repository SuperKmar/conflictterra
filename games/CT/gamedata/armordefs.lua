local armorDefs = {

  Cruiser  =  {
    "bflagship2",
    "bbattleflagship",
    "bbattlecruiser",
    "btransportcarrier2",
-----
    "bsupplydepotmobile",
-----
    "bmechcruiser",
    "btankcruiser",
    "baircruiser",
    "badvmechcruiser",
    "badvtankcruiser",
    "badvaircruiser",
  },

  Building  =  {
    "bflagshipbase2",
    "bflagshipbaseai",
-----
    "bsupplydepot",
    "bmex",
    "bpowerplant",
    "bseamex",
    "bseapowerplant",
-----
    "bcameratower",
    "bradartower",
    "bjammertower",
    "blandturret",
    "bairturret",
    "blandnavalturret",
    "bgatlingturret",
    "bmechturret",
    "bsearadartower",
    "btorpedoturret",
-----
    "badvmex",
    "badvpowerplant",
-----
    "badvradartower",
    "badvjammertower",
    "badvlandturret",
    "badvairturret",
    "badvlandnavalturret",
    "badvgatlingturret",
    "badvmechturret",
    "badvsearadartower",
    "badvtorpedoturret",
-----
    "bbeacon",
    "bmechcruiserfactory",
    "btankcruiserfactory",
    "baircruiserfactory",
    "badvmechcruiserfactory",
    "badvtankcruiserfactory",
    "badvaircruiserfactory",
    "bshipyard",
    "badvshipyard",
    "bsubpens",
    "badvsubpens",
    "badvbeacon",
    "bexperimentalpad",
-----
    "blanddefship",
    "blanddefmobileship",
    "bairdefship",
    "bairdefmobileship",
    "bnavydefship",
    "bnavydefmobileship",
    "bsupplydepotai",
-----
    "kgrounddronestructure",	
    "kmex",
    "kdroneminingtower",
    "kairdronestructure",	
  },

  Mech  =  {
    "bengineer",
    "bscoutmech",
    "bbasicmech",
    "bsnipermech",
    "bsiegemech",
    "bmissilemech",
    "bantitankmech",
-----
    "bengineer2",
    "bheavymech",
    "bheavysiegemech",
    "bheavymissilemech",
    "bhovermech",
    "badvhovermech",
    "bheavyassaultmech",
-----
    "kdroneengineer",
    "kdronewarrior",
    "klightdrone",
    "kdronebehemoth",
	

  },

  Tank = {
    "bminer",
    "bassaulttank",
    "bmissiletank",
    "bartillery",
    "baabuggy",
    "bscoutvehicle",
    "breztank",
-----
    "bheavyassaulttank",
    "bvhsa",
    "bheavymissiletank",
    "bempcannon",
    "baatruck",
    "baatruckturret",
-----
    "kdroneroller",
    "ktridroneroller",
  },

  Aircraft = {
    "bflyingmech",
    "bheavyflyingmech",
-----
    "bfighter",
    "bbomber",
    "brocketplane",
    "bscoutplane",
-----
    "badvfighter",
    "badvbomber",
    "badvrocketplane",
    "blaserplane",
-----
    "kairdrone",
    "kdiairdrone",
    "ktriairdrone",
-----
    "pnfighter",		
  },

  Ship = {
    "bseaengineer1",
    "benergysupplyboat",
    "bbattleship",
    "brocketbattleship",
    "bartilleryship",
    "baaship",
    "bradarship",
-----
    "bseaengineer2",
    "badvbattleship",
    "badvrocketbattleship",
    "blras",
    "badvaaship",
    "badvradarship",
  },

  Sub = {
    "bsubmarine",
    "baasub",
-----
    "badvsubmarine",
    "badvaasub",
  },

  Meteor = {
    "bmeteorimpact",
    "bmeteorimpact_big",
    "bminerals",
  },

  Drone = {
  },

  Spare1 = {
  },

  Spare2 = {
  },

  Spare3 = {
  },

}

for categoryName, categoryTable in pairs(armorDefs) do
  local t = {}
  for _, unitName in pairs(categoryTable) do
    t[unitName] = 1
  end
  armorDefs[categoryName] = t
end

return armorDefs