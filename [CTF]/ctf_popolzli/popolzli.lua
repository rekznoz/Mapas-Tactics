addEventHandler("onClientExplosion", getRootElement(),
	function(x,y,z)
		vehicle = getPedOccupiedVehicle(getLocalPlayer())
		if (vehicle and getElementModel(vehicle) == 432) then
			vx,vy,vz = getElementPosition(vehicle)
			if (getDistanceBetweenPoints3D(x,y,z,vx,vy,vz) < 16) then
				setElementHealth(vehicle, 249)
			end
		end
	end
)