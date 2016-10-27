for "_i" from 2 to 15 do {_this lockCargo [_i,true]};

_this setDamage .4;
_this setHitPointDamage ["HitRFWheel",1];
_this setHitPointDamage ["HitLFWheel",1];
_this setHitPointDamage ["HitLF2Wheel",1];

if (isServer) then {
	for "_z" from 0 to 1 do {
		for "_xx" from 0 to 3 do {
			for "_yy" from 0 to 1 do {
				_box = "Land_WoodenBox_F" createVehicle position _this;
				_box attachto [_this,[-.9 + (.6 * _xx),-2.5 * _yy,-.8 + (_z*.95)]];
				_box setDir 90;
			};
		};
	};
	for "_i" from 0 to 7 do {
		_box = "Land_WoodenBox_F" createVehicle position _this;
		_box attachto [_this,[0,.8 - (.6*_i),-.3]];
	};
};

[
	_this,
	"Repair Truck",
	"a3\ui_f\data\IGUI\cfg\simpleTasks\types\repair_ca.paa",
	"a3\ui_f\data\IGUI\cfg\simpleTasks\types\repair_ca.paa",
	"_this == vehicle _this && {_x > 0} count (getAllHitPointsDamage _target select 2) > .4",
	"_this == vehicle _this && {_x > 0} count (getAllHitPointsDamage _target select 2) > .4",
	{},
	{},
	{
		["Alert",["Repair Complete!"]] call BIS_fnc_showNotification;
		[_this select 0,1] remoteExec ["setFuel",vehicle (_this select 1)];
		[_this select 0,.4] remoteExec ["setDamage",vehicle (_this select 1)];
	},
	{ ["Alert",["Repair Interrupted!"]] call BIS_fnc_showNotification },
	nil,
	15,
	6,
	false
] call BIS_fnc_holdActionAdd;