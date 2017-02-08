// F3 - Group E&E Check
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// SERVER CHECK
// Ensure this script only executes on the server:

if !(isServer) exitWith {};

// ====================================================================================

// DECLARE VARIABLES AND FUNCTIONS

private ["_objects","_obj","_safeDistance","_alive","_safe","_end","_pos","_playersonly"];

// ====================================================================================

// SET KEY VARIABLES
// Using variables passed to the script instance, we will create some local variables:

_objects = _this select 0;
_obj = _this select 1;
_safeDistance = _this select 2;
_end = _this select 3;
_playersonly = if (count _this > 4) then {_this select 4} else {true};
_safe = 0;
_units = [];
_pos = [];

waitUntil {sleep 0.1;scriptDone f_script_setLocalVars};

// ====================================================================================

// POPULATE UNITS ARRAY
// Conduct several checks against the first variable to see if we're dealing with a specific unit, a group or an array of several groups or units.

// If a side was passed, just use the global variable generated by F3
if (typeName _objects == "SIDE") then {
	switch (_objects) do {
			case west: 			{_units = f_var_men_BLU};
			case blufor: 		{_units = f_var_men_BLU};
			case east: 			{_units = f_var_men_OPF};
			case opfor: 		{_units = f_var_men_OPF};
			case resistance: 	{_units = f_var_men_RES};
			case independent: 	{_units = f_var_men_RES};
			case civilian: 		{_units = f_var_men_CIV};
	};

	// If only players should be checked for, we process the units array to remove any unwanted units
	if (_playersonly) then {
		{
		if !(_x in playableUnits) then {_units = _units - [_x]};
		} forEach _units;
	};
// Otherwise populate the units array using the passed strings, checking if it's either a group or a unit
} else {
	{

		if(!isnil _x) then
		{
			_temp = call compile format ["%1",_x];
			player globalchat format ["%1",typeName _temp];
			if (typename _temp == "GROUP") then {
				{
					if !(_x in _units) then {
						_units set [count _units,_x];
					};
				} forEach units _temp;
			} else {
				if !(_x in _units) then {
					_units set [count _units,_temp];
				};
			};
		};
	} foreach _objects;
};

// If for some reason the units array is still empty exit with an error message
if (count _units == 0) exitWith {player globalchat format ["DEBUG (f\EandECheck\f_EandECheckLoop.sqf): _units array is empty! passed array = %1, units array = %2",_objects,_units];};

// ====================================================================================

// GET SAFE-ZONE POSITION
// Get a position for the safe-zone

switch (typeName _obj) do {
	case "STRING": {_pos = getMarkerPos _obj};
	case "OBJECT": {_pos = getPosATL _obj};
	default {_pos = getPosATL _obj};
};

// ====================================================================================

// BEGIN E&E CHECK LOOP
//

while {true} do
{

// ESTABLISH GROUP SIZE
// We begin by establishing how many units remain alive in the group. We use this to
// establish a baseline value to compare against.

_alive = {alive _x} count _units;
if (_alive == 0) exitWith {_safe = 0};

// DEBUG
if (f_param_debugMode == 1) then
{
	player sideChat format ["DEBUG (f\EandECheck\f_EandECheckLoop.sqf): _alive = %1",_alive];
};

// ====================================================================================

// CHECK PROXIMITY
// We then check how many of the units are within the required proximity to the
// objective; if all units qualify then we exit the script.

_safe = {(_x distance _pos < _safeDistance)} count _units;

// DEBUG
if (f_param_debugMode == 1) then
{
	player sideChat format ["DEBUG (f\EandECheck\f_EandECheckLoop.sqf): _safe = %1",_safe];
};

// As soon as all units have reached the safe-zone, the loop exits
if (_alive == _safe) exitWith {};
_safe = 0;

// ====================================================================================

sleep 3;
};

// ====================================================================================

// END E&E Check
// Depending on input, either MPEnd or the parsed code itself is called

if (_safe > 0) then {
	if (typeName _end == typeName 0) exitWith {
		[_end] call f_fnc_mpEnd;
	};

	if (typeName _end == typeName {}) exitWith {
		[_end,"bis_fnc_spawn",true] call BIS_fnc_MP;
	};
};

player GlobalChat format ["DEBUG (f\EandECheck\f_EandECheckLoop.sqf): Ending didn't fire, should either be code or scalar. _end = %1, typeName _end: %2",_end,typeName _end];