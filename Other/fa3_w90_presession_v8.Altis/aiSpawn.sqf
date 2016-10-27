if (!isServer) exitWith {};

_aiSpawns = [aispawn] call ws_fnc_collectObjectsNum;
_aiGroups = [];
_ifrit = nil;


while {true} do {
    if (count _aiGroups < 6) then {
        _spawn = _aiSpawns call BIS_fnc_selectRandom;
        while {[_spawn, 50] call f_fnc_nearPlayer} do {
            sleep .5;
            _spawn = _aiSpawns call BIS_fnc_selectRandom;
        };
        _grp = createGroup east;
        _aiGroups pushBack _grp;
        {
            _grp createUnit [_x,position _spawn,[],0,"NONE"];
        } forEach ["O_Soldier_TL_F","O_soldier_M_F","O_Soldier_AR_F","O_Soldier_LAT_F","O_Soldier_A_F","O_Soldier_F","O_Soldier_F"];
        [_grp,position _spawn,100] call BIS_fnc_taskPatrol;
    };
    _groupsToDelete = [];
    {
        if (isNull _x || {count units _x == 0}) then {
            _groupsToDelete pushBack _x;
        };
    } forEach _aiGroups;
    _aiGroups = _aiGroups - _groupsToDelete;
    if (isNil {_ifrit} || {{alive _x} count crew _ifrit == 0 && !([ifritSpawn, 100] call f_fnc_nearPlayer)}) then {
        _roll = random 1;
        if (_roll < .5) then {
             _ifrit = "O_LSV_02_armed_F" createVehicle position ifritSpawn;
        };
        if (_roll >= .5 && _roll < .99) then {
            _ifrit = "O_MRAP_02_hmg_F" createVehicle position ifritSpawn;
        };
        if (_roll >= .99) then {
            _ifrit = "O_MBT_02_cannon_F" createVehicle position ifritSpawn;
        };
        createVehicleCrew _ifrit;
        [group (crew _ifrit select 0),position _ifrit,100] call BIS_fnc_taskPatrol;
    };
    [] execVM "f\removeBody\f_addRemoveBodyEH.sqf";
    sleep 10;
};