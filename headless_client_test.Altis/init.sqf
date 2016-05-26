enableSaving [false,false];

if (!hasInterface && !isDedicated) then {
	["HEADLESS CLIENT RUNNING"] remoteExec ["hint"];
};

if (!hasInterface) then {
    _aiToSpawn = "AItoSpawn" call BIS_fnc_getParamValue;
    _hcRatio = "HCServerRatio" call BIS_fnc_getParamValue;
    if (isServer) then {
        _aiToSpawn = _aiToSpawn * (100 - _hcRatio) / 100;
    } else {
        _aiToSpawn = _aiToSpawn * _hcRatio / 100;
    };
    for "_i" from 1 to _aiToSpawn do {
        _grp = createGroup east;
        {
            _grp createUnit [_x,getMarkerPos "redspawn",[],0,"NONE"];
        } forEach ["O_Soldier_TL_F","O_Soldier_AR_F","O_Soldier_LAT_F","O_Soldier_F","O_Soldier_F"];
        _grp addWaypoint [getMarkerPos "target",100] setWaypointType "SAD";
        _grp = createGroup west;
        {
            _grp createUnit [_x,getMarkerPos "bluspawn",[],0,"NONE"];
        } forEach ["B_Soldier_TL_F","B_Soldier_AR_F","B_Soldier_LAT_F","B_Soldier_F","B_Soldier_F"];
        _grp addWaypoint [getMarkerPos "target",100] setWaypointType "SAD";
    };
};