if (!isServer) exitWith {};

_spawnpoints = [spawnpoint] call ws_fnc_collectObjectsNum;

sleep 20;
_mancount = .8 * ({side _x == east} count allUnits);

while {true} do {
    sleep 60;
    if ({side _x == east} count allUnits < _mancount) then {
        _spawn = _spawnpoints call BIS_fnc_selectRandom;
        while {[_spawn,200] call f_fnc_nearPlayer} do {
            _spawn = _spawnpoints call BIS_fnc_selectRandom;
        };
        _grp = createGroup east;
        {
            _grp createUnit [_x,position _spawn,[],0,"NONE"];
        } forEach ["O_Soldier_TL_F","O_Soldier_AR_F","O_Soldier_LAT_F","O_Soldier_LAT_F","O_Soldier_F","O_Soldier_F"];
        _wp = _grp addWaypoint [[position _spawn select 0,(position _spawn select 1) + 500,0],100];
        _wp setWaypointType "SAD";
    };
};