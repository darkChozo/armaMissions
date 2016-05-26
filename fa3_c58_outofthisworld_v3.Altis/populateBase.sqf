if (!isServer) exitWith {};

_marker = _this select 0;
_numGroups = _this select 1;
_markers = (_marker call ws_fnc_collectMarkers);

for "_i" from 1 to _numGroups do {
	_marker = _markers call BIS_fnc_selectRandom;
	_markers = _markers - [_marker];
	[_marker,east,4,[["O_Soldier_F"],
	["O_Soldier_F","O_Soldier_lite_F","O_Soldier_AR_F","O_soldier_M_F","O_Soldier_TL_F","O_medic_F", "O_Soldier_LAT_F","O_engineer_F"]],
	{
		(_this select 0) setFormation "STAG COLUMN";
		(units (_this select 0)) execVM "f\assignGear\f_assignGear_AI.sqf"
	}] call ws_fnc_createGroup;
};