_this setObjectTexture [0,"a3\air_f\Heli_Light_01\data\heli_light_01_ext_ion_co.paa"];

_logos = [];
{
	_logo = "UserTexture1m_F" createVehicleLocal [0,0,0];
	_logo attachTo [_this,_x select 0];
	_logo setVectorDirAndUp (_x select 1);
	_logo setObjectTexture [0,"ionlogosmall.paa"];
	_logos pushBack _logo;
} forEach [[[-.54,-.33,-.02],[[1,.22,-.018],[0,0,1]]],
		   [[.54,-.33,-.02],[[-1,.22,-.018],[0,0,1]]]];

[_this,_logos] spawn {
	waitUntil {sleep .5; !alive (_this select 0)};
	{ deleteVehicle _x } forEach (_this select 1);
};

clearWeaponCargoGlobal _this;
clearMagazineCargoGlobal _this;
clearItemCargoGlobal _this;