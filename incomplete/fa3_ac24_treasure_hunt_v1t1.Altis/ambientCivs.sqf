if (isNil {hc} && !isServer || {!isNil {hc} && (isServer || hasInterface)}) exitWith {};

_cars = ["C_Offroad_01_F","C_Quadbike_01_F","C_Hatchback_01_F","C_Hatchback_01_sport_F","C_SUV_01_F","C_Van_01_transport_F","C_Van_01_box_F","C_Van_01_fuel_F"];
_drivers = ["C_man_1","C_man_polo_2_F","C_man_polo_4_F","C_man_polo_5_F","C_man_polo_6_F","C_man_p_beggar_F","C_man_hunter_1_F"];
_civs = [];
while {true} do {
    _spawn = towns call BIS_fnc_selectRandom;
    if ({!isNull _x} count _civs < 15 && {!([_spawn,1200] call f_fnc_nearPlayer)}) then { // don't spawn too close to players
        _car = _cars call BIS_fnc_selectRandom createVehicle getMarkerPos _spawn;
        _car setUnloadInCombat [true,true];
        _driver =  createGroup civilian createUnit [_drivers call BIS_fnc_selectRandom,getMarkerPos _spawn,[],0,"NONE"];
        _driver setVariable ["car",_car,true];
        group _driver addVehicle _car;
        _driver moveInDriver _car;
        _wp = group _driver addWaypoint [getMarkerPos (towns call BIS_fnc_selectRandom),40];
        _wp setWaypointBehaviour "SAFE";
        _wp setWaypointType "GETOUT";
        _wp setWaypointStatements ["!([this,1200] call f_fnc_nearPlayer)",
            "deleteVehicle (this getVariable 'car');
            deleteVehicle this;"
        ];
        _civs pushBack _driver;
    };
    sleep 20;
};