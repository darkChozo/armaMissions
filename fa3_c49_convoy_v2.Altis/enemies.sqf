if (!isServer) exitWith {};

_weightedSelectRandom = compileFinal preprocessFileLineNumbers "weightedSelectRandom.sqf";

_csatConfig = [
    [3,  [east,["O_Soldier_TL_F","O_Soldier_AR_F","O_Soldier_LAT_F","O_Soldier_F","O_Soldier_F"]]],
    [1.5,  [east,["O_MRAP_02_hmg_F"]]],
    [.6, [east,["O_MRAP_02_gmg_F"]]],
    [1, [east,["O_Heli_Light_02_v2_F"]]],
    [.6, [east,["O_APC_Wheeled_02_rcws_F"]]],
    [.6, [east,["O_APC_Tracked_02_cannon_F"]]],
    [.4, [east,["O_MBT_02_cannon_F"]]],
    [.2, [east,["O_APC_Wheeled_02_rcws_F","O_APC_Tracked_02_cannon_F"]]],
    [.4,[east,["O_Heli_Attack_02_F"]]],
    [.2, [east,["O_Plane_CAS_02_F"]]],
    [.3, [east,["O_Soldier_TL_F","O_Soldier_AR_F","O_Soldier_LAT_F","O_Soldier_F","O_Soldier_F","O_Truck_03_ammo_F"]]]
];
_natoConfig = [
    [3,  [west,["B_Soldier_TL_F","B_Soldier_AR_F","B_Soldier_LAT_F","B_Soldier_F","B_Soldier_F"]]],
    [1.5,  [west,["B_MRAP_01_hmg_F"]]],
    [.6, [west,["B_MRAP_01_gmg_F"]]],
    [1, [west,["B_Heli_Light_01_armed_F"]]],
    [.6, [west,["B_APC_Wheeled_01_cannon_F"]]],
    [.6, [west,["B_APC_Tracked_01_rcws_F"]]],
    [.4, [west,["B_MBT_01_cannon_F"]]],
    [.2,[west,["B_APC_Wheeled_01_cannon_F","B_APC_Tracked_01_rcws_F"]]],
    [.2, [west,["B_APC_Tracked_01_CRV_F"]]],
    [.4,[west,["B_Heli_Attack_01_F"]]],
    [.2, [west,["B_Plane_CAS_01_F"]]]
];
_fiaConfig = [
    [3,  [west,["B_G_Soldier_TL_F","B_G_Soldier_AR_F","B_G_Soldier_LAT_F","B_G_Soldier_F","B_G_Soldier_F"]]],
    [1,  [west,["B_G_Offroad_01_armed_F","B_G_Offroad_01_armed_F"]]],
    [.2, [west,["B_G_Soldier_TL_F","B_G_Soldier_AR_F","B_G_Soldier_LAT_F","B_G_Soldier_F","B_G_Soldier_F","B_G_Van_01_fuel_F"]]],
    [.2, [west,["B_G_Soldier_TL_F","B_G_Soldier_AR_F","B_G_Soldier_LAT_F","B_G_Soldier_F","B_G_Soldier_F","B_G_Offroad_01_repair_F"]]]
];
_aafConfig = [
    [1,  [independent,["I_Soldier_TL_F","I_Soldier_AR_F","I_Soldier_LAT_F","I_Soldier_F","I_Soldier_F"]]],
    [.3, [independent,["I_MRAP_03_hmg_F"]]],
    [.2, [independent,["I_Heli_light_03_F"]]],
    [.1, [independent,["I_APC_Wheeled_03_cannon_F"]]],
    [.1, [independent,["I_APC_tracked_03_cannon_F"]]],
    [.1, [independent,["I_MBT_03_cannon_F"]]]
];
_civConfig = [
    [1, [civilian,["C_man_shorts_2_F","C_man_shorts_4_F","C_man_shorts_1_F","C_man_hunter_1_F","C_man_w_worker_F"]]],
    [1, [civilian,["C_man_p_fugitive_F","C_man_polo_2_F","C_man_polo_4_F","C_man_shorts_4_F","C_Marshal_F"]]],
    [1, [civilian,["C_SUV_01_F"]]],
    [1, [civilian,["C_Hatchback_01_F"]]],
    [1, [civilian,["C_Van_01_box_F"]]],
    [1, [civilian,["C_Offroad_01_F"]]],
    [1, [civilian,["C_Quadbike_01_F","C_Quadbike_01_F"]]]
];

_configs = [
    [.4,_csatConfig],
    [.4,_natoConfig],
    [.1,_fiaConfig],
    [.025,_aafConfig],
    [.075,_civConfig]
];

_roadblockConfigs = [
    [west,["B_Soldier_TL_F","B_Soldier_LAT_F","B_Soldier_LAT_F","B_Soldier_LAT_F","B_Soldier_F","B_Soldier_F","B_Soldier_F"],"B_Truck_01_fuel_F"],
    [west,["B_Soldier_TL_F","B_Soldier_LAT_F","B_Soldier_LAT_F","B_Soldier_LAT_F","B_Soldier_F","B_Soldier_F","B_Soldier_F"],"B_Truck_01_covered_F"],
    [west,["B_Soldier_TL_F","B_Soldier_LAT_F","B_Soldier_LAT_F","B_Soldier_LAT_F","B_Soldier_F","B_Soldier_F","B_Soldier_F"],"B_Truck_01_box_F"],
    [east,["O_Soldier_TL_F","O_Soldier_LAT_F","O_Soldier_LAT_F","O_Soldier_LAT_F","O_Soldier_F","O_Soldier_F","O_Soldier_F"],"O_Truck_03_covered_F"],
    [east,["O_Soldier_TL_F","O_Soldier_LAT_F","O_Soldier_LAT_F","O_Soldier_LAT_F","O_Soldier_F","O_Soldier_F","O_Soldier_F"],"O_Truck_02_transport_F"],
    [east,["O_Soldier_TL_F","O_Soldier_LAT_F","O_Soldier_LAT_F","O_Soldier_LAT_F","O_Soldier_F","O_Soldier_F","O_Soldier_F"],"O_Truck_03_fuel_F"]
];

_period = 10;
_wave = 1;
_maxGroups = param_maxGroups;
_groups = [];
_grpIdx = 0;
_allvehs = [];
_vehIdx = 0;

_delay = .25;

_fixRPGs = {
    if (_this hasWeapon "launch_NLAW_F" || {_this hasWeapon "launch_RPG32_F"}) then {
        _this removeWeaponGlobal "launch_NLAW_F";
        _this removeWeaponGlobal "launch_RPG32_F";
        _this removeMagazines "NLAW_F";
        _this removeMagazines "RPG32_F";
        _this removeMagazines "RPG32_HE_F";
        _this addMagazine "RPG32_HE_F";
        _this addMagazine "RPG32_F";
        _this addMagazine "RPG32_F";
        _this addWeaponGlobal "launch_RPG32_F";
    };
};

_removeVehWeapons = {
    {
        _wep = _x;
        {
            if (_wep in (_this select 0 weaponsTurret _x)) then {
                _this select 0 removeWeaponTurret [_wep,_x];
            };
        } forEach ((allTurrets (_this select 0)) + [[-1]]);
    } forEach (_this select 1);
};

while {true} do {
    
    if (count _groups < _maxGroups) then {
        player sideChat "spawnin";
        _target = [];
        _grp = nil;
        _vehs = [];

        _target = playableUnits call BIS_fnc_selectRandom;
        while {!isPlayer _target} do {
            _target = playableUnits call BIS_fnc_selectRandom;
        };

        _spawn = nil;

        _spawnAngle = (((getMarkerPos "safeZone" select 1) - (position _target select 1)) atan2 ((getMarkerPos "safeZone" select 0) - (position _target select 0))) mod 360;
        if (_spawnAngle < 0) then {_spawnAngle = _spawnAngle + 360}; // fuck truncated mod...
        _targetAngle = 0;
        if (speed _target != 0) then {
            _targetAngle = (velocity _target select 1) atan2 (velocity _target select 0);
        } else {
            _targetAngle = ((-getDir _target) + 90) mod 360;
        };
        if (_targetAngle < 0) then {_targetAngle = _targetAngle + 360};
        _spawnAngle = (_spawnAngle + _targetAngle) / 2;

        _spawnDist = 1000 + random 500;

        while {isNil {_spawn} || 
               {count (_spawn isFlatEmpty [0,0,1,.1,0,false]) == 0} ||
               {[_spawn,1000] call f_fnc_nearPlayer} ||
               {_spawn distance getMarkerPos "safeZone" < 1000}} do {
            if (_target != vehicle _target) then {
                _target = vehicle _target;
            };
            _perpDist = 750 - random 1500;
            _spawn = [(position _target select 0) + (_spawnDist * cos _spawnAngle) + (_perpDist * cos (_spawnAngle + 90)),
                      (position _target select 1) + (_spawnDist * sin _spawnAngle) + (_perpDist * sin (_spawnAngle + 90)),
                      0];
            _spawnDist = _spawnDist + random 1000;
            if (_spawnDist > 5000) then {_spawnDist = 1000 + random 500;};
            sleep _delay;
        };

        _nearRoad = nil;
        if (random 1 < .2) then {
            _nearRoad = _spawn nearRoads 250 select 0;
        };
        if (isNil "_nearRoad") then {
            _config = _configs call _weightedSelectRandom call _weightedSelectRandom;
            _grp = createGroup (_config select 0);
            {
                if (_x isKindOf "Man") then {
                    _man = _grp createUnit [_x, _spawn, [], 0, "FORM"];
                    _man call _fixRPGs;
                    _man addEventHandler ["killed", {(_this select 0) spawn f_fnc_removeBody}];
                };
                if (_x isKindOf "Air") then {
                    _veh = createVehicle [_x, [_spawn select 0,_spawn select 1,500], [], 0, "FLY"];
                    if (_x isKindOf "Plane") then {
                        _veh flyInHeight 1000;
                    } else {
                        _veh flyInHeight 300;
                    };
                    createVehicleCrew _veh;
                    crew _veh joinSilent _grp;
                    [_veh,["missiles_DAGR","Missile_AGM_02_Plane_CAS_01_F","missiles_SCALPEL","Missile_AGM_01_Plane_CAS_02_F"]] call _removeVehWeapons;
                    _vehs = _vehs + [_veh];
                };
                if (_x isKindOf "LandVehicle") then {
                    _veh = createVehicle [_x, _spawn, [], 0, "NONE"];
                    createVehicleCrew _veh;
                    crew _veh joinSilent _grp;
                    [_veh,["missiles_titan"]] call _removeVehWeapons;
                    _vehs = _vehs + [_veh];
                };
                sleep _delay;
            } forEach (_config select 1);
            if (random 1 > .5) then {
                _grp addWaypoint [_target,0] setWaypointType "SAD";
            } else {
                _angle = random 360;
                _grp addWaypoint [[(_spawn select 0) + (1000*cos _angle),(_spawn select 1) + (1000*sin _angle),0],0];
                _grp addWaypoint [_spawn,0] setWaypointType "CYCLE";
            };
            if (!isNil "f_var_debugMode" && {f_var_debugMode == 1}) then {
                _grp spawn {
                    _marker = createMarker [format ["%1",random 1],position leader _this];
                    _marker setMarkerShape "ICON";
                    _marker setMarkerType "hd_dot";
                    while { ! isNil "_this" && {{alive _x} count units _this > 0}} do {
                        _marker setMarkerPos position leader _this;
                        sleep 1;
                    };
                    deleteMarker _marker;
                };
            };
        } else {
            // ROADBLOCK YO
            player sideChat "roadblock";
            _config = _roadblockConfigs call BIS_fnc_selectRandom;
            _grp = createGroup (_config select 0);
            _connectedRoads = roadsConnectedTo _nearRoad;
            _roadAngle = 0;
            if (count _connectedRoads > 0) then {
                _roadAngle = (((position _nearRoad select 1) - (position (_connectedRoads select 0) select 1)) atan2 ((position _nearRoad select 0) - (position (_connectedRoads select 0) select 0))) + 90;
            } else {
                _roadAngle = random 360; // guess!
            };
            _veh = _config select 2 createVehicle ([(position _nearRoad select 0) + (5 * cos _roadAngle),
                                             (position _nearRoad select 1) + (5 * sin _roadAngle),
                                             0]);
            _veh setDir ((-_roadAngle - 90) mod 360);
            _vehs = _vehs + [_veh];
            sleep _delay;
            _veh = _config select 2 createVehicle ([(position _nearRoad select 0) + (-5 * cos _roadAngle),
                                             (position _nearRoad select 1) + (-5 * sin _roadAngle),
                                             0]);
            _veh setDir ((-_roadAngle - 90) mod 360);
            _vehs = _vehs + [_veh];
            sleep _delay;
            {
                _man = _grp createUnit [_x, position _nearRoad, [], 0, "FORM"];
                _man call _fixRPGs;
                _man addEventHandler ["killed", {(_this select 0) spawn f_fnc_removeBody}];
                sleep _delay;
            } forEach (_config select 1);
            _wp = _grp addWaypoint [[(position _nearRoad select 0) + (3 * cos (90 +_roadAngle)),
                                     (position _nearRoad select 1) + (3 * sin (90 +_roadAngle)),
                                     0],0];
            _wp setWaypointType "HOLD";
            _grp setFormDir ((-_roadAngle - 90) mod 360);
            if (!isNil "f_var_debugMode" && {f_var_debugMode == 1}) then {
                _grp spawn {
                    _marker = createMarker [format ["%1",random 1],position leader _this];
                    _marker setMarkerShape "ICON";
                    _marker setMarkerType "hd_dot";
                    _marker setMarkerColor "ColorYellow";
                    while { ! isNil "_this" && {{alive _x} count units _this > 0}} do {
                        _marker setMarkerPos position leader _this;
                        sleep 1;
                    };
                    deleteMarker _marker;
                };
            };
        };
        _groups = _groups + [[_grp,_vehs,time + 60]];
    };
    _badGroups = [];
    // check up to 5 groups
    for "_i" from 1 to 5 min count _groups do {
        if (count _groups > 0) then {
            if (_grpIdx >= count _groups) then {
                _grpIdx = 0;
            };
            _x = _groups select _grpIdx;
            _deadGroup = isNull (_x select 0) || {count units (_x select 0) == 0};
            if (_deadGroup || {_x select 2 < time && {!([leader (_x select 0),1000] call f_fnc_nearPlayer)}}) then {
                player sideChat "deletin";
                {
                    deleteVehicle _x;
                } forEach units (_x select 0);
                deleteGroup (_x select 0);
                _groups = _groups - [_x];

                //handle vehicles
                if (count (_x select 1) > 0) then {
                    if (!_deadGroup) then {
                        { deleteVehicle _x } forEach (_x select 1);
                    } else {
                        _allvehs = _allvehs + [_x select 1];
                    };
                };
            };
            _grpIdx = _grpIdx + 1;
            sleep _delay;
        };
        if (count _allvehs > 0) then {
            if (_vehIdx >= count _allVehs) then {_vehIdx = 0};
            if (!([_allvehs select _vehIdx select 0,1000] call f_fnc_nearPlayer)) then {
                {deleteVehicle _x} forEach (_allvehs select _vehIdx);
                _allVehs = _allVehs - [_allvehs select _vehIdx];
            };
            _vehIdx = _vehIdx + 1;
            sleep _delay;
        };
    };
};