if (isServer) then {
	for "_i" from -2.2 to -1.1  step .9 do {
		_box = "Land_WoodenCrate_01_F" createVehicle position _this;
		_box attachTo [_this,[0,_i,-.4]];
		_box setDir 90;
	};
	_this addMPEventHandler ["MPKilled",{{deleteVehicle _x} forEach attachedObjects (_this select 0)}];
};

for "_i" from 0 to 3 do {
	_this lockTurret [[_i],true];
};
