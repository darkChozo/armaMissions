if (!isServer) exitWith {};

params ["_obj","_radius"];

_bldg = nearestBuilding _obj;
_bldg setVariable ["obj",_obj];
_bldg setVariable ["radius",_radius];

_bldg addEventHandler ["Killed",{
	_bldg = _this select 0;
	_obj = _bldg getVariable "obj";
	_radius = _bldg getVariable "radius";
	
	for "_i" from 1 to 2 do {
		createGroup civilian createUnit [
			selectRandom ["C_Man_casual_1_F_tanoan","C_Man_casual_2_F_tanoan","C_Man_casual_3_F_tanoan",
						  "C_Man_casual_4_F_tanoan","C_Man_casual_5_F_tanoan","C_Man_casual_6_F_tanoan",
						  "C_Man_sport_1_F_tanoan","C_Man_sport_2_F_tanoan","C_Man_sport_3_F_tanoan"],
		    [_obj,random _radius,random 360] call BIS_fnc_relPos,
			[],
			0,
			"CAN_COLLIDE"] setDamage 1;
	};
}];