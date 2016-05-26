if (!isServer) exitWith {};

_spawnWave = {
    _type = [
                ["footteam","trucksquad","technical","mmg","sniper","vbied"],
                [1,         .5,  (time / 1800) min .75,.05,.05,     .1]
            ] call BIS_fnc_selectRandomWeighted;
    _spawnPoint = ["aispawn"] call ws_fnc_collectMarkers call BIS_fnc_selectRandom;
    switch (_type) do {
        case "footteam" : {
            _grp = createGroup east;
            {
                _x createUnit [getMarkerPos _spawnPoint,_grp];
            } forEach ["O_G_Soldier_TL_F","O_G_Soldier_AR_F","O_G_Soldier_F","O_G_Soldier_F","O_G_Soldier_F","O_G_Soldier_F"];
            units _grp execVM "f\assignGear\f_assignGear_AI.sqf";
            _grp addWaypoint [getMarkerPos "attackhere",0] setWaypointType "SAD";
        };
        case "trucksquad" : {
            _grp = createGroup east;
            _truck = "O_G_Van_01_transport_F" createVehicle getMarkerPos _spawnPoint;
            _truck setUnloadInCombat [false,false];
            _truck spawn {
                waitUntil {sleep 1; isNull driver _this || !canMove _this;};
                crew _this select 0 leaveVehicle _this;
            };
            _man = _grp createUnit ["O_G_Soldier_SL_F",getMarkerPos _spawnPoint,[],0,"NONE"];
            _man assignAsDriver _truck;
            _man moveInDriver _truck;
            {
                _man = _grp createUnit [_x,getMarkerPos _spawnPoint,[],0,"NONE"];
                _man assignAsCargo _truck;
                _man moveInCargo _truck;
            } forEach ["O_G_Soldier_TL_F","O_G_Soldier_AR_F","O_G_Soldier_AR_F","O_G_Soldier_AR_F","O_G_Soldier_LAT_F","O_G_Soldier_F","O_G_Soldier_F","O_G_Soldier_F","O_G_Soldier_F","O_G_Soldier_F"];
            units _grp execVM "f\assignGear\f_assignGear_AI.sqf";
            _wp = _grp addWaypoint [[getMarkerPos "attackhere",random 300,random 360] call BIS_fnc_relPos,0];
            _wp setWaypointCompletionRadius 150;
            _wp setWaypointType "UNLOAD";
            _grp addWaypoint [getMarkerPos "attackhere",0] setWaypointType "SAD";
        };
        case "technical" : {
            _grp = createGroup east;
            _truck = "O_G_Offroad_01_armed_F" createVehicle getMarkerPos _spawnPoint;
            _truck setUnloadInCombat [false,false];
            _man = _grp createUnit ["O_G_Soldier_F",getMarkerPos _spawnPoint,[],0,"NONE"];
            _man assignAsDriver _truck;
            _man moveInDriver _truck;
            _man = _grp createUnit ["O_G_Soldier_F",getMarkerPos _spawnPoint,[],0,"NONE"];
            _man assignAsGunner _truck;
            _man moveInGunner _truck;
            units _grp execVM "f\assignGear\f_assignGear_AI.sqf";
            _grp addWaypoint [getMarkerPos "attackhere",0] setWaypointType "SAD";
        };
        case "mmg" : {  
            _grp = createGroup east;
            _unit = _grp createUnit ["O_G_Soldier_AR_F",getMarkerPos _spawnPoint,[],0,"NONE"];
            ["mmgg",_unit,"opf_g_f"] call f_fnc_assignGear;
            _grp addWaypoint [getMarkerPos "attackhere",0] setWaypointType "SAD";
        };
        case "sniper" : {
            _grp = createGroup east;
            _unit = _grp createUnit ["O_G_Soldier_M_F",getMarkerPos _spawnPoint,[],0,"NONE"];
            ["sn",_unit,"opf_g_f"] call f_fnc_assignGear;
            _grp addWaypoint [getMarkerPos "attackhere",0] setWaypointType "SAD";
        };
        case "vbied" : {
            _grp = createGroup east;
            _truck = "O_G_Van_01_fuel_F" createVehicle getMarkerPos _spawnPoint;
            _truck setUnloadInCombat [false,false];
            _man = _grp createUnit ["O_G_Soldier_F",getMarkerPos _spawnPoint,[],0,"NONE"];
            _man assignAsDriver _truck;
            _man moveInDriver _truck;
            _truck addEventHandler ["Killed",{createVehicle ["Bo_GBU12_LGB",position (_this select 0),[],0,"CAN_COLLIDE"]}];
            _wp = _grp addWaypoint [getMarkerPos "attackhere",200];
            _wp setWaypointBehaviour "CARELESS";
            _wp setWaypointStatements ["","vehicle this setDamage 1"];
            [_truck,_man] spawn {
                _stuck = false;
                while {alive (_this select 0) && alive (_this select 1)} do {
                    if (_stuck && speed (_this select 0) < 1) then {
                        _this select 0 setDamage 1;
                    };
                    _stuck = speed (_this select 0) < 1;
                    sleep 5;
                };
            };
        };
    };
};

sleep 30;
while {true} do {
    sleep (60 - ((time / 60) min 45));
    if ({!(_x in playableUnits)} count allUnits < 150) then {
        [] call _spawnWave;
        [] execVM "f\removeBody\f_addRemoveBodyEH.sqf";
    };
};