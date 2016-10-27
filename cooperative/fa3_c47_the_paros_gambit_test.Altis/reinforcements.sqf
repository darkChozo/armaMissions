if (!isServer) exitWith {};

addPos = {[((_this select 0) select 0) + ((_this select 1) select 0),
           ((_this select 0) select 1) + ((_this select 1) select 1),
           ((_this select 0) select 2) + ((_this select 1) select 2)]};

while {true} do {
    _roll = random 1;
    _grp = createGroup east;
    if (_roll < .1) then { //2 Orcas
        [getMarkerPos "reinforcements",270,"O_Heli_Light_02_v2_F",_grp] call BIS_fnc_spawnVehicle;
        [[getMarkerPos "reinforcements", [50,0,0]] call addPos,270,"O_Heli_Light_02_v2_F",_grp] call BIS_fnc_spawnVehicle;
    };
    if (_roll >= .1 && _roll < .11) then { //10 device tempests
        for "_i" from 0 to 9 do {
            [[getMarkerPos "reinforcements", [20*_i,0,0]] call addPos,270,"O_Truck_03_device_F",_grp] call BIS_fnc_spawnVehicle;
        };
    };
    if (_roll >= .11 && _roll < .2) then { //4 tanks
        for "_i" from 0 to 3 do {
            [[getMarkerPos "reinforcements", [20*_i,0,0]] call addPos,270,"O_MBT_02_cannon_F",_grp] call BIS_fnc_spawnVehicle;
        };
    };
    if (_roll >= .2 && _roll < .3) then { //2 tanks
        for "_i" from 0 to 1 do {
            [[getMarkerPos "reinforcements", [20*_i,0,0]] call addPos,270,"O_MBT_02_cannon_F",_grp] call BIS_fnc_spawnVehicle;
        };
    };
    if (_roll >= .3 && _roll < .4) then { //5 marids
        for "_i" from 0 to 4 do {
            [[getMarkerPos "reinforcements", [20*_i,0,0]] call addPos,270,"O_APC_Wheeled_02_rcws_F",_grp] call BIS_fnc_spawnVehicle;
        };
    };
    if (_roll >= .4 && _roll < .5) then { //2 btr-ks
        for "_i" from 0 to 1 do {
            [[getMarkerPos "reinforcements", [20*_i,0,0]] call addPos,270,"O_APC_Tracked_02_cannon_F",_grp] call BIS_fnc_spawnVehicle;
        };
    };
    if (_roll >= .5 && _roll < .6) then { //4 btr-ks
        for "_i" from 0 to 3 do {
            [[getMarkerPos "reinforcements", [20*_i,0,0]] call addPos,270,"O_APC_Tracked_02_cannon_F",_grp] call BIS_fnc_spawnVehicle;
        };
    };
    if (_roll >= .6 && _roll < .7) then { //btr-k + 2 marids
        [[getMarkerPos "reinforcements", [0,0,0]] call addPos,270,"O_APC_Tracked_02_cannon_F",_grp] call BIS_fnc_spawnVehicle;
        [[getMarkerPos "reinforcements", [20,0,0]] call addPos,270,"O_APC_Wheeled_02_rcws_F",_grp] call BIS_fnc_spawnVehicle;
        [[getMarkerPos "reinforcements", [40,0,0]] call addPos,270,"O_APC_Wheeled_02_rcws_F",_grp] call BIS_fnc_spawnVehicle;
    };
    if (_roll >= .7 && _roll < .8) then { //5 ifrits
        for "_i" from 0 to 4 do {
            [[getMarkerPos "reinforcements", [20*_i,0,0]] call addPos,270,"O_MRAP_02_gmg_F",_grp] call BIS_fnc_spawnVehicle;
        };
    };
    if (_roll >= .8 && _roll < .9) then { //3 tanks
        for "_i" from 0 to 2 do {
            [[getMarkerPos "reinforcements", [20*_i,0,0]] call addPos,270,"O_MBT_02_cannon_F",_grp] call BIS_fnc_spawnVehicle;
        };
    };
    if (_roll >= .9 && _roll < 1) then { //tank + btr-k + 2 marids
        [[getMarkerPos "reinforcements", [0,0,0]] call addPos,270,"O_MBT_02_cannon_F",_grp] call BIS_fnc_spawnVehicle;
        [[getMarkerPos "reinforcements", [20,0,0]] call addPos,270,"O_APC_Tracked_02_cannon_F",_grp] call BIS_fnc_spawnVehicle;
        [[getMarkerPos "reinforcements", [40,0,0]] call addPos,270,"O_APC_Wheeled_02_rcws_F",_grp] call BIS_fnc_spawnVehicle;
        [[getMarkerPos "reinforcements", [60,0,0]] call addPos,270,"O_APC_Wheeled_02_rcws_F",_grp] call BIS_fnc_spawnVehicle;
    };
    _wp = _grp addWaypoint [[getMarkerPos "approach", [0,random 2000 - 1000,0]] call addPos,0];
    _wp setwaypointBehaviour "COMBAT";
    _wp = _grp addWaypoint [getMarkerPos "counterattack",500];
    _wp setWaypointType "SAD";
    sleep (30 + random 60);
};