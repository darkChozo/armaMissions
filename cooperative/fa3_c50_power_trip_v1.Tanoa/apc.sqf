_this animate ["HideTurret",1];
_this lockTurret [[0],true];
{_this removeWeaponTurret [_x,[0]]} forEach (_this weaponsTurret [0]);
{_this setObjectTexture [_x,'#(argb,8,8,3)color(0.242,0.25,0.25,0.5)'];} forEach [0,1];


[_this] execVM "dc_vanillaDesant\init.sqf";

_logos = [];
{
	_logo = "UserTexture1m_F" createVehicleLocal [0,0,0];
	_logo attachTo [_this,_x select 0];
	_logo setVectorDirAndUp (_x select 1);
	_logo setObjectTexture [0,"ionlogo.paa"];
	_logos pushBack _logo;
} forEach [[[0,1.8,-.77],[[0,-.335,-1],[0,-1,1]]],
		   [[1.6,-1.5,-.495],[[-.69,0,-1],[0,0,1]]],
		   [[-1.6,-1.5,-.495],[[.69,0,-1],[0,0,1]]]];

[_this,_logos] spawn {
	waitUntil {sleep .5; !alive (_this select 0)};
	{ deleteVehicle _x } forEach (_this select 1);
};

clearWeaponCargoGlobal _this;
clearMagazineCargoGlobal _this;