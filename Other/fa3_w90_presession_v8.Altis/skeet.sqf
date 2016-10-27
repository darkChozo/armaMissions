if (!isServer) exitWith {};

while {true} do {
	_skeet = createVehicle ["Skeet_Clay_F",_this modelToWorld [0,.7,.5],[],0,"CAN_COLLIDE"];
	_skeet setVelocity (vectorDir _this vectorAdd [.05 - random .1,.05 - random .1,.7 + random .1] vectorMultiply 13);
	_skeet spawn {sleep 5; deleteVehicle _this};
	sleep 5;
};