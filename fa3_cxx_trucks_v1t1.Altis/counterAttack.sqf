if ((isNil {hc} && !isServer) || {!isNil {hc} && (isServer || hasInterface)}) exitWith {};

_infantryConfig = ["infantry"];
_truckConfig = ["dropoff","I_Truck_02_covered_F"];
_mrapConfig = ["infiltrate","I_MRAP_03_F",5];
_hmgMrapConfig = ["vehicleassault","I_MRAP_03_hmg_F"];
_gorgonConfig = ["transportassault","I_APC_Wheeled_03_cannon_F"];
_moraConfig = ["transportassault","I_APC_tracked_03_cannon_F"];
_tankConfig = ["vehicleassault","I_MBT_03_cannon_F"];
_hellcatConfig = ["vehicleassault","I_Heli_light_03_F"];
_paradropConfig = ["paradrop","I_Heli_Transport_02_F"];
_sleep = ["sleep"];

_side = independent;

_configs = [
    [[0,5,1800,0] call dc_fnc_generateScalingCode, _truckConfig + [8]], //8 man truck
    [[0,0,3600,5] call dc_fnc_generateScalingCode, _truckConfig + [14]], // 14 man truck
    [1, _mrapConfig], //5 man suicide squad
    [[0,.5,1800,0] call dc_fnc_generateScalingCode, _hmgMrapConfig],
    [[300,0,1800,1] call dc_fnc_generateScalingCode, _gorgonConfig + [6]],
    [[600,0,2000,1] call dc_fnc_generateScalingCode, _moraConfig + [6]],
    [[1800,0,3600,1] call dc_fnc_generateScalingCode, _tankConfig],
    [[400,0,2200,1] call dc_fnc_generateScalingCode, _hellcatConfig]
];

_infantryLeaders = [[1,"I_Soldier_TL_F"]];
_infantry = [
                [3,"I_Soldier_F"],
                [2,"I_Soldier_AR_F"],
                [1,"I_Soldier_RAT_F"],
                [.5,"I_Soldier_M_F"],
                [.5,"I_Soldier_A_F"],
                [.5,"I_medic_F"],
                [.1,"I_Soldier_AT_F"],
                [.1,"I_Soldier_AA_F"]
            ];

_spawns = ["aispawn"] call ws_fnc_collectMarkers;

_period = 35;

_maxInfantry = 16;
_infantryGroups = [];
_maxVehicles = 6;
_vehicles = [];

_generateGroup = {
    params ["_pos","_size","_side","_leaders","_grunts"];
    _grp = createGroup _side;
    _grp createUnit [_leaders call dc_fnc_weightedSelectRandom,_pos,[],0,"NONE"];
    for "_i" from 2 to _size do {
        _grp createUnit [_grunts call dc_fnc_weightedSelectRandom,_pos,[],0,"NONE"];
    };
    units _grp execVM "f\assignGear\f_assignGear_AI.sqf";
    _grp
};

_spawnVehicle = {
    params ["_type","_position"];
    _veh = objNull;
    if (_type isKindOf "LandVehicle") then {
        _veh = _type createVehicle _position;
    } else {
        _veh = createVehicle [_type,[_position select 0,_position select 2,200],[],0,"FLYING"];
    };
    _veh
};

while {true} do {
    if (f_var_debugMode == 1) then { player sideChat "spawning some dudes" };

    // cleanup
    _groupsToDelete = [];
    {
        if (isNull _x || {alive _x} count units _x == 0) then {
            _groupsToDelete pushBack _x;
        };
    } forEach _infantryGroups;
    _infantryGroups = _infantryGroups - _groupsToDelete;
    _vehsToDelete = [];
    {
        if (isNull _x || !alive _x || {alive _x} count crew _x == 0) then {
            _vehsToDelete pushBack _x;
        };
    } forEach _vehicles;
    _vehicles = _vehicles - _vehsToDelete;
    
    _config = _configs call dc_fnc_weightedSelectRandom;
    _spawn = _spawns call BIS_fnc_selectRandom;
    if (typeName _spawn == "STRING") then {
        _spawn = getMarkerPos _spawn;
    } else {
        _spawn = position _spawn;
    };
    
    _wp1 = [dropoffbox] call BIS_fnc_randomPosTrigger;
    _wp2 = [assaultbox] call BIS_fnc_randomPosTrigger;
    
    switch (_config select 0) do {
        // spawn infantry and charge assault point
        case "infantry" : {
            if (count _infantryGroups < _maxInfantry) then {
                _grp = [_spawn,_config select 2,_side,_infantryLeaders,_infantry] call _generateGroup;
                _grp addWaypoint [_wp2,0] setWaypointType "SAD";
                _infantryGroups pushBack _grp;
            };
        };
        // try to charge in behind enemy lines
        case "infiltrate" : {
            if (count _infantryGroups < _maxInfantry) then {
                _veh = [_config select 1,_spawn] call _spawnVehicle;
                _veh setUnloadInCombat [false,false];
                _grp = [_spawn,_config select 2,_side,_infantryLeaders,_infantry] call _generateGroup;
                _wp = _grp addWaypoint [_wp2,0];
                _wp setWaypointType "GETOUT";
                _wp setWaypointBehaviour "CARELESS";
                _wp = _grp addWaypoint [_wp2,0];
                _wp setWaypointType "SAD";
                [_veh,_grp] spawn {
                    params ["_veh","_grp"];
                    waitUntil {sleep 2; !(leader _grp in crew _veh)};
                    _grp setBehaviour "COMBAT";
                };
                _grp addVehicle _veh;
                _infantryGroups pushBack _grp;
            };
        };
        // transport - go to place, drop off troops, go back
        case "dropoff" : {
            if (count _infantryGroups < _maxInfantry) then {
                _veh = [_config select 1,_spawn] call _spawnVehicle;
                _veh setUnloadInCombat [false,false];
                createVehicleCrew _veh;
                _vehGrp = group (crew _veh select 0);
                _vehGrp addWaypoint [_wp1,0] setWaypointStatements ["true", "{if (!(_x in thisList)) then {unassignVehicle _x}} forEach crew vehicle this"];
                _vehGrp addWaypoint [_spawn,0] setWaypointStatements ["true", "deleteVehicle vehicle this; {deleteVehicle _x} forEach thisList;"];
                _grp = [_spawn,_config select 2,_side,_infantryLeaders,_infantry] call _generateGroup;
                _grp addWaypoint [_wp2,0] setWaypointType "SAD";
                {
                    _x moveInCargo _veh;
                } forEach units _grp;
                _infantryGroups pushBack _grp;
            };
        };
        // armed transport - go to place, drop off troops, then assault
        case "transportassault" : {
            if (count _vehicles < _maxVehicles) then {
                _veh = [_config select 1,_spawn] call _spawnVehicle;
                _veh setUnloadInCombat [false,false];
                createVehicleCrew _veh;
                _vehGrp = group (crew _veh select 0);
                _vehGrp addWaypoint [_wp1,0] setWaypointStatements ["true", "{if (!(_x in thisList)) then {unassignVehicle _x}} forEach crew vehicle this"];
                _vehGrp addWaypoint [_wp2,0] setWaypointType "SAD";
                _vehicles pushBack _veh;
                if (count _infantryGroups < _maxInfantry) then {
                    _grp = [_spawn,_config select 2,_side,_infantryLeaders,_infantry] call _generateGroup;
                    _grp addWaypoint [_wp2,0] setWaypointType "SAD";
                    {
                        _x moveInCargo _veh;
                    } forEach units _grp;
                    _infantryGroups pushBack _grp;
                };
            };
        };
        // armed vic - attack!
        case "vehicleassault" : {
            if (count _vehicles < _maxVehicles) then {
                _veh = [_config select 1,_spawn] call _spawnVehicle;
                _veh setUnloadInCombat [false,false];
                createVehicleCrew _veh;
                _vehGrp = group (crew _veh select 0);
                _vehGrp addWaypoint [_wp2,0] setWaypointType "SAD";
                _vehicles pushBack _veh;
            };
        };
    };
    systemChat format ["groups: %1 , vehicles %2",_infantryGroups,_vehicles];
    sleep _period;
};