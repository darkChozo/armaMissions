_this setObjectTexture [0,'#(argb,8,8,3)color(0.242,0.25,0.25,0.5)'];

_logos = [];
{
	_logo = "UserTexture1m_F" createVehicleLocal [0,0,0];
	_logo attachTo [_this,_x select 0];
	_logo setVectorDirAndUp (_x select 1);
	_logo setObjectTexture [0,"ionlogosmall.paa"];
	_logos pushBack _logo;
} forEach [[[-1.09,2.97,-.495],[[1,0,-.018],[0,0,1]]],
		   [[1.114,2.95,-.495],[[-1,0,-.018],[0,0,1]]]];

[_this,_logos] spawn {
	waitUntil {sleep .5; !alive (_this select 0)};
	{ deleteVehicle _x } forEach (_this select 1);
};

clearWeaponCargoGlobal _this;
clearMagazineCargoGlobal _this;