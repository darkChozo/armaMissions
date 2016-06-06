if (isNil {hc} && !isServer || {!isNil {hc} && (isServer || hasInterface)}) exitWith {};

while {true} do {
    _targets = [];
    while {count _targets == 0} do {
        {
            // knowsAbout decays reaaaallly slowly so only send reinforcements if they're currently in contact
            if (independent knowsAbout _x >= 3.99) then { 
                _targets pushBack _x;
            };
        } forEach playableUnits;
        sleep 5;
    };
    getMarkerPos "rienspawn";
    _target = _targets call BIS_fnc_selectRandom;
    ["Alert",["AAF just sent out a call for reinforcements!"]] remoteExec ["BIS_fnc_showNotification"];
    _veh = "I_APC_Wheeled_03_cannon_F" createVehicle getMarkerPos "reinspawn";
    _veh setDir 25;
    _veh setUnloadInCombat [true,false];
    createVehicleCrew _veh;
    _vehGrp = group driver _veh;

    _wp = _vehGrp addWaypoint [position _target,100];
    _wp setWaypointSpeed "FULL";
    _wp setWaypointCompletionRadius 100;
    _wp = _vehGrp addWaypoint [position _target,100];
    _wp setWaypointTimeout [150,150,150];
    _wp setWaypointCompletionRadius 100;
    _wp setWaypointCompletionRadius 100;
    _wp = _vehGrp addWaypoint [getMarkerPos "reinspawn",100];
    _wp setWaypointStatements ["true", "veh = vehicle this; {deleteVehicle _x} forEach crew veh; deleteVehicle veh"];
    
    _grp = createGroup independent;
    _grp createUnit ["I_Soldier_TL_F",getMarkerPos "reinspawn",[],0,"NONE"];
    for "_i" from 1 to 7 do {
        _grp createUnit ["I_Soldier_F",getMarkerPos "reinspawn",[],0,"NONE"];
    };
    _grp addVehicle _veh;
    {_x moveInCargo _veh} forEach units _grp;
    sleep 400;
};
