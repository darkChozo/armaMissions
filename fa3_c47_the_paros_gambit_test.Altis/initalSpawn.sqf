{
    _grp = [_x, east, ["O_Soldier_TL_F", "O_Soldier_LAT_F", "O_Soldier_LAT_F", "O_Soldier_F", "O_Soldier_F"],
        [], [], [], [], [], random 360] call BIS_fnc_spawnGroup;
    _wp = _grp addWaypoint [_x, 0];
    _wp setWaypointType "HOLD";
} forEach [[20296, 18648, 0], [20311, 18668, 0], [20338, 18616, 0]];