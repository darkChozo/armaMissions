if (!isServer) exitWith {};

while {true} do {
	{
		vehicle _x setVehicleAmmo 1;
		if (!("30Rnd_556x45_Stanag" in magazines _x)) then {
			_x addMagazines ["30Rnd_556x45_Stanag",4];
		};
		if (!("RPG32_F" in magazines _x) && _x hasWeapon "launch_RPG32_F") then {
			_x addMagazines ["RPG32_F",2];
		};
	} forEach units _this;
	
	sleep 10;
};