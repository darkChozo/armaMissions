if (isServer) then {
    waitUntil {bluforSpotted};
    if (isNil "skipWait") then {
        sleep 2000;
    };

    "Our comrades in Kavala have been forced to retreat! Expect enemy reinforcements soon." remoteExec ["hint"];
    _markers = ["reinforcement","reinforcement_1","reinforcement_2"]; // i should be less lazy....
    _target = getMarkerPos "center";
    _count = 0;
    while {true} do {
        _spawn = _markers call BIS_fnc_selectRandom;
        switch (ceil random 4) do {
            case (1) : {
                _helo = createVehicle ["O_Heli_Attack_02_black_F",getMarkerPos _spawn,[],0,"FLY"];
                _helo removeWeaponTurret ["missiles_SCALPEL",[0]];
                _helo removeMagazineTurret ["8Rnd_LG_scalpel",[0]];
                _grp = createGroup independent;
                _grp addVehicle _helo;
                _grp createUnit ["I_helipilot_F",getMarkerPos _spawn,[],0,"NONE"] moveInDriver _helo;
                _grp createUnit ["I_helipilot_F",getMarkerPos _spawn,[],0,"NONE"] moveInGunner _helo;
                _grp addWaypoint [_target,150] setWaypointType "SAD";
            };
            case (2) : {
                _helo = createVehicle ["I_Heli_light_03_F",getMarkerPos _spawn,[],0,"FLY"];
                _grp = createGroup independent;
                _grp addVehicle _helo;
                _grp createUnit ["I_helipilot_F",getMarkerPos _spawn,[],0,"NONE"] moveInDriver _helo;
                _grp createUnit ["I_helipilot_F",getMarkerPos _spawn,[],0,"NONE"] moveInGunner _helo;
                _grp addWaypoint [_target,150] setWaypointType "SAD";
            };
            case (3) : {
                _helo = createVehicle ["I_Heli_Transport_02_F",getMarkerPos _spawn,[],0,"FLY"];
                _helo flyInHeight 200;
                _grp = createGroup independent;
                _grp addVehicle _helo;
                _grp createUnit ["I_helipilot_F",getMarkerPos _spawn,[],0,"NONE"] moveInDriver _helo;
                _grp createUnit ["I_helipilot_F",getMarkerPos _spawn,[],0,"NONE"] moveInCargo _helo;
                _wp = _grp addWaypoint [_target,300];
                _wp setWaypointStatements ["true","{if (!(_x in thisList)) then { _x addBackpack 'B_Parachute'; unassignVehicle _x; _x setPos (vehicle this modelToWorld [0,-10,0]);}} forEach crew vehicle this;"];
                _wp setWaypointBehaviour "CARELESS";
                _grp addWaypoint [getMarkerPos _spawn,0] setWaypointStatements ["true","deleteVehicle vehicle this; {deleteVehicle _x} forEach thisList;"];
                _grp = createGroup independent;
                _grp addVehicle _helo;
                _grp createUnit ["I_Soldier_SL_F",getMarkerPos _spawn,[],0,"NONE"] moveInCargo _helo;
                for "_i" from 1 to 12 do {
                    _grp createUnit [["I_soldier_F","I_soldier_F","I_soldier_F","I_Soldier_lite_F","I_Soldier_AR_F","I_Soldier_GL_F","I_Soldier_LAT_F"] call BIS_fnc_selectRandom,getMarkerPos _spawn,[],0,"NONE"] moveInCargo _helo;
                };
                _grp addWaypoint [_target,50] setWaypointType "SAD";
            };
            case (4) : {
                _helo = createVehicle ["B_Heli_Transport_01_F",getMarkerPos _spawn,[],0,"FLY"];
                _helo flyInHeight 50;
                _grp = createGroup independent;
                _grp addVehicle _helo;
                _grp createUnit ["I_helipilot_F",getMarkerPos _spawn,[],0,"NONE"] moveInDriver _helo;
                _grp createUnit ["I_helipilot_F",getMarkerPos _spawn,[],0,"NONE"] moveInTurret [_helo, [0]]; //copilot
                _grp createUnit ["I_helipilot_F",getMarkerPos _spawn,[],0,"NONE"] moveInTurret [_helo ,[1]];
                _grp createUnit ["I_helipilot_F",getMarkerPos _spawn,[],0,"NONE"] moveInTurret [_helo ,[2]];
                _grp addWaypoint [_target,150] setWaypointType "TR UNLOAD";
                _grp addWaypoint [_target,300] setWaypointType "SAD";
                _grp = createGroup independent;
                _grp addVehicle _helo;
                _grp createUnit ["I_Soldier_SL_F",getMarkerPos _spawn,[],0,"NONE"] moveInCargo _helo;
                for "_i" from 1 to 7 do {
                    _grp createUnit [["I_soldier_F","I_soldier_F","I_soldier_F","I_Soldier_lite_F","I_Soldier_AR_F","I_Soldier_GL_F","I_Soldier_LAT_F"] call BIS_fnc_selectRandom,getMarkerPos _spawn,[],0,"NONE"] moveInCargo _helo;
                };
                _grp addWaypoint [_target,50] setWaypointType "SAD";
            };
        };
        if (isNil "skipWait") then {
            sleep (60 + (120 - (10*_count max 0)));
        } else {
            sleep 30;
        };
        _count = _count + 1;
    };
};