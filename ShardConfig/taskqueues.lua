--[[
 Task Queues!
]]--
math.randomseed( os.time() )
math.random(); math.random(); math.random()

taskqueues = {
	bflagshipbase = {
			
		"beningeer1",
		"beningeer1",
		"bdefensemech",
		"bdefensemech",
		"bdefensemech",
		"bdefensemech",
		"bdefensemech",
		"bdefensemech",
		"bdefensemech",
		"beningeer1",
		"bdefensemech",
		"bdefensemech",
		"bdefensemech",
		"bdefensemech",
		"beningeer1",
		"breztank",
	},
	beningeer1 = {
		(function()
			local r = math.random(0,2)
			if r == 0 then
				return "bairport"
			elseif r == 1 then
				return "bmechfactory"
			else
				return "btankfactory"
			else
				return "bsupportfactory"
			else
				return "bsubpens"
			else
				return "bshipyard"
			end
		end),

		"bpowerplant",
		"bpowerplant",
		"bpowerplant",
		"bpowerplant",
		"bpowerplant",
		"bpowerplant",
		"bmex",
		"bmex",
		"bnuclearpower",
		"bjammertower",
		"bradartower",
		"bnuclearpower",
		"bgatlingturret",
		"blandturret",
		"bmex",
		"blandnavalturret",
		"blandturret",
		"bairturret",
		},

bairport = {
		"bfighter",
		"bfighter",
		"bfighter",
		"brocketplane",
		"brocketplane",
		"brocketplane",
		"bbomber",
		"bradarplane",
		},

bmechfactory = {
		"bengineer1",
		"bbasicmech",
		"bbasicmech",
		"bbasicmech",
		"bbasicmech",
		"bsnipermech",
		"bsnipermech",
		"bflyingmech",
		"bflyingmech",
		"bmissilemech",
		"bmissilemech",
		"bsiegemech",
		},
btankfactory = {
		"bengineer1",
		"bassaulttank",
		"bmissiletank",
		"bartillery",
		"bsiegeartillery",
		"bradartank",
		"breztank",
		},

	armcom = {
		"armsolar",
		"armmex",
		"armsolar",
		"armmex",
		"armmex",
		"armlab",
		"armllt",
		"armrad",
		"armsolar",
		"armsolar",
		"armsolar",
		"armsolar",
		"armmex",
		"armsolar",
		"armmex",
		"armmex",
		"armllt",
		"armlab",
		"armrad",
		"armsolar",
		"armsolar",
		"armsolar",
		},
	armck = {
		"armsolar",
		"armmex",
		"armsolar",
		"armmex",
		"armmex",
		"armlab",
		"armllt",
		"armrad",
		"armsolar",
		"armsolar",
		"armsolar",
		"armsolar",
		"armmex",
		"armsolar",
		"armmex",
		"armmex",
		"armllt",
		"armlab",
		"armrad",
		"armsolar",
		"armsolar",
		"armsolar",
		},
	corlab = {
		"corck",
		"corck",
		"corak",
		"corak",
		"corak",
		"corak",

		"corck",
		"corak",

		"corck",		
		"corthud",
		"corthud",
		"corthud",

		},
corvp = {
		"corcv",

"cormlv",		"corgator",
		"corgator",
		"corgator",
		"corraid",
		"corcv",
		"corraid",
		"corraid",
		"corgator",
		"corraid",
		"corraid",
		"corcv",
		"corcv",
		"corraid",
		"corgator",
		"corgator",
		"corgator",
		"corraid",
		"corraid",
		},

corap = {
		"corca",
		"corveng",
		"corveng",
		"bladew",
		"bladew",
		"corca",
		"bladew",
		"bladew",

"corca",

"corveng",

"corveng",

"corshad",
"corshad",
"corshad",
				
		},	armlab = {
		"armck",
		"armck",
		"armck",
		"armpw",
		"armpw",
		"armpw",
		"armpw",
		"armpw",
		"armpw",
		"armpw",
		"armpw",
		"armpw",
		"armpw",
		"armpw",
		"armpw",
		"armpw",
		"armpw",
		"armpw",
		"armpw",
		"armpw",
		"armpw",
		},
}
