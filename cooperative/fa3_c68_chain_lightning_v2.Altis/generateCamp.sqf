if (var_test == 1) exitWith {}; // we're spawning all the camps so the amount of ai would make my computer sad

_intel = _this select 0;
_index = _this select 1;

_randomizePos = {
    _distance = (_this select 1) + random (_this select 2);
    _angle = random 360;
    [(_this select 0 select 0) + (_distance * cos _angle),
     (_this select 0 select 1) + (_distance * sin _angle),
     _this select 0 select 2];
};

_spawnGroup = {
    _grp = [position (_this select 0),west,5,[["B_G_Soldier_TL_F"],["B_G_Soldier_F","B_G_Soldier_F","B_G_Soldier_F","B_G_Soldier_AR_F","B_G_Soldier_LAT_F"]]] call ws_fnc_createGroup select 0;
    _grp setFormation (["COLUMN", "STAG COLUMN", "WEDGE", "ECH LEFT", "ECH RIGHT", "VEE", "LINE", "FILE", "DIAMOND"] call BIS_fnc_selectRandom);
    _wp = _grp addWaypoint [[position (_this select 0), _this select 1, _this select 2] call _randomizePos, 0];
    _wp setWaypointType "HOLD";
    _grp;
};


_grp = [[position _intel, 0, 10] call _randomizePos, west, ["B_G_officer_F", "B_G_Soldier_LAT_F", "B_G_Soldier_AR_F", "B_G_Soldier_F", "B_G_Soldier_F"]] call BIS_fnc_spawnGroup;
_grp setFormation (["COLUMN", "STAG COLUMN", "WEDGE", "ECH LEFT", "ECH RIGHT", "VEE", "LINE", "FILE", "DIAMOND"] call BIS_fnc_selectRandom);
_wp = _grp addWaypoint [position leader _grp,0];
_wp setWaypointType "HOLD";
_units = units _grp;

_units = _units + units ([_intel, 10, 30] call _spawnGroup);
_units = _units + units ([_intel, 10, 30] call _spawnGroup);

_roll = random 1;

/*
    10% 2 team camp
    40% 3 team camp
    10% 4 team camp
    20% 3 team camp + patrol
    20% 3 team camp + technical
*/
if (_roll > .1) then {
    _units = _units + units ([_intel, 20, 40] call _spawnGroup);
};
if (_roll > .5 && _roll <= .6) then {
    _units = _units + units ([_intel, 20, 40] call _spawnGroup);
};
if (_roll > .6 && _roll <= .8) then {
    _grp = [position _intel,west,3,[["B_G_Soldier_TL_F"],["B_G_Soldier_F","B_G_Soldier_F","B_G_Soldier_F","B_G_Soldier_AR_F"]]] call ws_fnc_createGroup select 0;
    [_grp, position leader _grp, 100] call BIS_fnc_taskPatrol;
    _grp setFormation "COLUMN";
    _grp setBehaviour "SAFE";
    _units = _units + units _grp;
};
if (_roll > .8) then {
    _car = "B_G_Offroad_01_armed_F" createVehicle ([[position _intel, 10, 60] call _randomizePos,0,50,10,0,5,0] call BIS_fnc_findSafePos);
    _car setDir random 360;
    createVehicleCrew _car;
    _units = _units + crew _car;
};

_units execVM "f\assignGear\f_assignGear_AI.sqf";

intelTracker setVariable ["campsDestroyed", 0, true];
campDestroyed = {
    intelTracker setVariable ["campsDestroyed", (intelTracker getVariable "campsDestroyed") + 1, true];
    [["Alert",[format ["Camp #%1 cleared.", intelTracker getVariable "campsDestroyed"]]], "BIS_fnc_showNotification"] call BIS_fnc_MP;
    _mkr = createMarker [format ["deadCamp%1", intelTracker getVariable "campsDestroyed"], getPos _this];
    _mkr setMarkerShape "ICON";
    _mkr setMarkerType "hd_flag";
    _mkr setMarkerText "Camp Cleared";
    _mkr setMarkerColor "ColorGreen";
};

_trigger = createTrigger ["EmptyDetector", position _intel, false];
_trigger setTriggerArea [400, 400, 0, false];
_trigger setTriggerActivation ["WEST", "NOT PRESENT", false];
_trigger setTriggerStatements ["this", "thisTrigger call campDestroyed", ""];

_intel setVariable ["start_time", -1];
_trigger = createTrigger ["EmptyDetector", position _intel, false];
_trigger setTriggerArea [500, 500, 0, false];
_trigger setTriggerActivation ["ANY", "WEST D", false];
_trigger setTriggerStatements ["{((side _x == east) || (side _x == resistance)) && (getPosATL _x select 2 < 20)} count thisList > 0",
                               'intelTracker getVariable "camps" select ' + (format ["%1",_index]) + ' setVariable ["startTime", time, true];',
                               ""];