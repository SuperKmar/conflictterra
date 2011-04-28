	-- by KR
	
	--pieces
	local body = piece "body"

        local lbigwing = piece "lbigwing"
        local lsmallwing = piece "lsmallwing"
        local ltinywing = piece "ltinywing"

        local nozzle = piece "nozzle"
	local flare1 = piece "flare1"

        local rbigwing = piece "rbigwing"
        local rsmallwing = piece "rsmallwing"
        local rtinywing = piece "rtinywing"

	--signals
	local SIG_AIM = 1
	
	function script.Create()
	       
	end

	function script.Activate()
		Turn(body, x_axis, 0.5, 1)
		Turn(lbigwing, x_axis, 1, 1)
		Turn(rbigwing, x_axis, 1, 1)
		Turn(lsmallwing, x_axis, 1, 1)
		Turn(rsmallwing, x_axis, 1, 1)
		Turn(ltinywing, x_axis, 0.5, 1)
		Turn(rtinywing, x_axis, 0.5, 1)
	end

	function script.Deactivate()
		Turn(body, x_axis, 0, 1)
		Turn(lbigwing, x_axis, 0, 1)
		Turn(rbigwing, x_axis, 0, 1)
		Turn(lsmallwing, x_axis, 0, 1)
		Turn(rsmallwing, x_axis, 0, 1)
		Turn(ltinywing, x_axis, 0, 1)
		Turn(rtinywing, x_axis, 0, 1)
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
        	Turn(nozzle, x_axis, 0, math.rad(50))
	end

	function script.QueryWeapon1() return flare1 end
	
	function script.AimFromWeapon1() return body end
	
	function script.AimWeapon1( heading, pitch )
		Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(nozzle, x_axis, -pitch, math.rad(50))
        	WaitForTurn(nozzle, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
	end
	
	function script.Killed(recentDamage, maxHealth)
		return 0
	end