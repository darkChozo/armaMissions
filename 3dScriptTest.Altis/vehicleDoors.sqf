_addDoorAction = {
    params ["_veh","_name","_source"];
    _veh addAction [format ["Open %1 door",_name],{_this select 0 animateDoor [_this select 3,1]},_source,0,false,false,"",format ["_target doorPhase '%1' == 0",_source]];
    _veh addAction [format ["Close %1 door",_name],{_this select 0 animateDoor [_this select 3,0]},_source,0,false,false,"",format ["_target doorPhase '%1' == 1",_source]];
};

{
    if (isNil {_x getVariable "dc_vehicleDoors_init"} || {!(_x getVariable "dc_vehicleDoors_init")}) then {
        if (_x isKindOf "B_MRAP_01_F" || _x isKindOf "I_MRAP_03_F" || _x isKindOf "MRAP_02_base_F") then {
            [_x,"front right","Door_RF"] call _addDoorAction;
            [_x,"front left","Door_LF"] call _addDoorAction;
        };
        if (_x isKindOf "MRAP_01_base_F") then {
            [_x,"back right","Door_RB"] call _addDoorAction;
            [_x,"back left","Door_LB"] call _addDoorAction;
        };
        if (_x isKindOf "MRAP_02_base_F") then {
            [_x,"back right","Door_RM"] call _addDoorAction;
            [_x,"back left","Door_LM"] call _addDoorAction;
            [_x,"rear","Door_rear"] call _addDoorAction;
        };
        if (_x isKindOf "Offroad_01_base_F") then {
            [_x,"doors?","Doors"] call _addDoorAction;
        };
    };
} forEach vehicles;