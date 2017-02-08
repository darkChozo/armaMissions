/*
 *	VBIED script for ARMA 3.
 *
 *	Usage: [vehicle,array of detonator types] execVM dc_vbied.sqf
 *	Example: [this,["SPEED","TIMED"]] execVM dc_vbied.sqf
 *
 *	Detonator types are case sensitive because I was lazy.
 *
 *  Options for detonator types:
 *		"ALL" - All types, equivilent to an array of all the other options. The default.
 *		"TIMED" - Timed detonator. 40 second timer, activated or deactivated from within the vehicle.
 *		"MANUAL" - Manual detonation. Bomb can be detonated from within the vehicle.
 *		"REMOTE" - Remote detonator. Bomb can be detonated from within the vehicle, or the detonator can be taken and used remotely.
 *		"SPEED" - Speed-based detonator. Explodes when the vehicle comes to a stop. Basically only useful for suicide bombing.
 */


params ["_car",["_type",["ALL"],[[]]]];


_car addEventHandler ["Killed",{
	for "_i" from 1 to 4 do {
		createVehicle ["Bo_GBU12_LGB",position (_this select 0),[],0,"CAN_COLLIDE"] setDamage 1;
	};
}];

if ("TIMED" in _type || "ALL" in _type) then {
	_car setVariable ["dcvbied_armed",false];


	_car addAction ["Arm Bomb Timer (40 seconds)",{_this select 0 setVariable ['dcvbied_armed',true,true]},nil,0,true,true,"","_this in crew _target && {alive _target} && {!(_target getVariable 'dcvbied_armed')}"];
	_car addAction ["Disarm Bomb Timer",{_this select 0 setVariable ['dcvbied_armed',false,true]},nil,0,true,true,"","_this in crew _target && {alive _target} && {_target getVariable 'dcvbied_armed'}"];

	if (isServer) then {
		_car spawn {
			_bombCounter = 0;
			while {alive _this} do {
				sleep 1;
				if (_this getVariable "dcvbied_armed") then {
					_bombCounter = _bombCounter + 1;
				} else {
					_bombCounter = 0;
				};
				if (_bombCounter >= 40) then {
					[[_this,1], "setDamage", _this] call BIS_fnc_MP;
				};
			};
		};
	};
};

if ("REMOTE" IN _type || "MANUAL" in _type || "ALL" in _type) then {
	_car setVariable ["dcvbied_detonator",_car];
	if (isNil {player getVariable "dcvbied_detonator"}) then {
		player setVariable ["dcvbied_detonator",objNull,true];
	};

	if (isNil {dcvbied_init}) then {
		player addAction ["Trigger Bomb Detonator",{_this select 0 getVariable "dcvbied_detonator" setDamage 1},nil,0,true,true,"","
			!isNull (_this getVariable 'dcvbied_detonator') &&
			{alive (_this getVariable 'dcvbied_detonator')}"];

		player addAction ["Give Bomb Detonator",{
			cursorTarget setVariable ["dcvbied_detonator",_this select 0 getVariable "dcvbied_detonator",true];
			player setVariable ["dcvbied_detonator",objNull,true];
		},nil,1,true,true,"","
			!isNull (_this getVariable 'dcvbied_detonator') &&
			!isNull cursorTarget &&
			{
				cursorTarget distance player < 4 &&
				isPlayer cursorTarget &&
				(isNil {cursorTarget getVariable 'dcvbied_detonator'} ||
				{isNull (cursorTarget getVariable 'dcvbied_detonator')})
			}"
		];
	};
		
	_car addAction ["Trigger Car Bomb",{_this select 0 setDamage 1},nil,0,true,true,"","_this in crew _target && {alive _target} && {_target getVariable 'dcvbied_detonator' == _target}"];

	if ("REMOTE" in _type || "ALL" in _type) then {
		_car addAction ["Take Bomb Detonator",{
			_this select 1 setVariable ["dcvbied_detonator",_this select 0 getVariable "dcvbied_detonator",true];
			_this select 0 setVariable ["dcvbied_detonator",objNull,true];
		},nil,1,true,true,"","_this in crew _target &&
							  {alive _target} &&
							  _target getVariable 'dcvbied_detonator' == _target &&
							  isNull (_this getVariable 'dcvbied_detonator')"];

		_car addAction ["Put Back Bomb Detonator",{
			_this select 0 setVariable ["dcvbied_detonator",_this select 1 getVariable "dcvbied_detonator",true];
			_this select 1 setVariable ["dcvbied_detonator",objNull,true];
		},nil,1,true,true,"","_this in crew _target && {alive _target} && {_this getVariable 'dcvbied_detonator' == _target}"];
	};
};

if ("SPEED" IN _type || "ALL" in _type) then {
	_car setVariable ["dcvbied_speedArmed",false];
	_setBombTrigger = {
		_this select 0 spawn {
			_this setVariable ["dcvbied_speedArmed",true,true];
			waitUntil {vectorMagnitude velocity _this < 5};
			_this setDamage 1;
		}
	};

	_car addAction ["Set Bomb Speed Trigger",_setBombTrigger,nil,0,true,true,"","_this in crew _target && {alive _target} && {!(_target getVariable 'dcvbied_speedArmed')} && {speed _target > 10}"];
};

dcvbied_init = true;
