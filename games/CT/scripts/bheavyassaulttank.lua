	-- by KR
	
	--pieces
	local body = piece "body"
	local turret = piece "turret"
	local barrel = piece "barrel"
	local flare = piece "flare"

	--signals
	local SIG_AIM = 1
	local ct_cannon_tank = SFX.CEG
	
	function script.Create()
	       
	end
	
	local function RestoreAfterDelay(unitID)
		Sleep(2500)
		Turn(turret, y_axis, 0, math.rad(90))
        	Turn(barrel, x_axis, 0, math.rad(50))
	end

	function script.QueryWeapon1() return flare end
	
	function script.AimFromWeapon1() return turret end
	
	function script.AimWeapon1( heading, pitch )
		Signal(SIG_AIM)
		SetSignalMask(SIG_AIM)
        	Turn(turret, y_axis, heading, math.rad(90))
        	Turn(barrel, x_axis, -pitch, math.rad(50))
        	WaitForTurn(turret, y_axis)
        	WaitForTurn(barrel, x_axis)
		StartThread(RestoreAfterDelay)
		return true
	end
	
	function script.FireWeapon1()
		EmitSfx(flare, ct_cannon_tank)
	end
	
	function script.Killed(recentDamage, maxHealth)
		return 0
	end