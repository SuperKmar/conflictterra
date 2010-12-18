local armorDefs = {

  Cruiser  =  {
    "bflagship2",
    "bbattleflagship",
    "bbattlecruiser",
    "btransportcarrier2",
    "bsupplydepotmobile",
    "benergysupplyship",
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
    "bsupplydepot",
    "bmex",
    "bpowerplant",
    "bnuclearpower",
    "bseamex",
    "bseapowerplant",
    "bradartower",
    "bjammertower",
    "blandturret",
    "bairturret",
    "blandnavalturret",
    "bgatlingturret",
    "bmechturret",
    "bsearadartower",
    "btorpedoturret",
    "badvmex",
    "badvpowerplant",
    "badvnuclearpower",
    "badvradartower",
    "badvjammertower",
    "badvlandturret",
    "badvairturret",
    "badvlandnavalturret",
    "badvgatlingturret",
    "badvmechturret",
    "badvsearadartower",
    "badvtorpedoturret",
    "bshieldgen",
    "bbeacon",
    "bmechcruiserfactory",
    "btankcruiserfactory",
    "baircruiserfactory",
    "badvmechcruiserfactory",
    "badvtankcruiserfactory",
    "badvaircruiserfactory",
    "benergytruckdepot",
    "bsupportfactory",
    "bshipyard",
    "badvshipyard",
    "bsubpens",
    "badvsubpens",
    "badvbeacon",
    "benergysupplyshipdepot",
    "bexperimentalpad",
    "blanddefship",
    "blanddefmobileship",
    "bairdefship",
    "bairdefmobileship",
    "bnavydefship",
    "bnavydefmobileship",
	"bsupplydepotai",
	"kdronestructure",	
	"kmex",	
  },

  Mech  =  {
    "bengineer1",
    "bminer",
    "bbasicmech",
    "bsnipermech",
    "bsiegemech",
    "bmissilemech",
    "bantitankmech",
    "bengineer2",
    "bheavymech",
    "bheavysiegemech",
    "bheavymissilemech",
    "bhovermech",
    "badvhovermech",
    "bheavyassaultmech",
    "kdroneengineer",
	"kdronewarrior",

  },

  Tank = {
    "benergytruck",
    "bassaulttank",
    "bmissiletank",
    "bartillery",
    "baabuggy",
    "bradartank",
    "breztank",
    "bheavyassaulttank",
    "bvhsa",
    "badvradartank",
    "bheavymissiletank",
    "bempcannon",
    "bempcannonturret",
    "baatruck",
    "baatruckturret",
  },

  Aircraft = {
    "bflyingmech",
    "bheavyflyingmech",
    "bfighter",
    "bbomber",
    "brocketplane",
    "bradarplane",
    "badvfighter",
    "badvbomber",
    "badvrocketplane",
    "badvradarplane",
    "blaserplane",
    "kairdrone",	
  },

  Ship = {
    "bseaengineer1",
    "benergysupplyboat",
    "bbattleship",
    "brocketbattleship",
    "bartilleryship",
    "baaship",
    "bradarship",
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
    "badvsubmarine",
    "badvaasub",
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