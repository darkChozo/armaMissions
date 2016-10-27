if (!isServer) exitWith {};
_bunker = _this select 0;
_barr = _this select 1;
_alt = _this select 2;
_bunker setVectorUp [0,0,1];
_bunker setPosATL [getPosATL _bunker select 0, getPosATL _bunker select 1, _alt]; 
{
    _box = createVehicle ["Land_HBarrierBig_F", _bunker modelToWorld [.4,-4.5,_x], [], 0, "CAN_COLLIDE"];
    _box setVectorUp [0,0,1];
    _box setDir getDir _bunker;
    [_box,5,0] call BIS_fnc_SetPitchBank;

    _box = createVehicle ["Land_HBarrierBig_F", _bunker modelToWorld [-4.8,-1.2,_x+.1], [], 0, "CAN_COLLIDE"];
    _box setVectorUp [0,0,1];
    _box setDir (90 + getDir _bunker);
    [_box,0,5] call BIS_fnc_SetPitchBank;

    _box = createVehicle ["Land_HBarrierBig_F", _bunker modelToWorld [5.3,-1,_x+.1], [], 0, "CAN_COLLIDE"];
    _box setVectorUp [0,0,1];
    _box setDir (90 + getDir _bunker);
    [_box,0,5] call BIS_fnc_SetPitchBank;
} forEach [-4,-6,-8];
[_bunker,10,0] call BIS_fnc_SetPitchBank;

if (_barr) then {
    _box = createVehicle ["Land_HBarrierBig_F", _bunker modelToWorld [-8,6,-1.5], [], 0, "CAN_COLLIDE"];
    _box setVectorUp [0,0,1];
    _box setDir (30 + getDir _bunker);

    _box = createVehicle ["Land_HBarrierBig_F", _bunker modelToWorld [8,6,-1.5], [], 0, "CAN_COLLIDE"];
    _box setVectorUp [0,0,1];
    _box setDir (150 + getDir _bunker);
};

_units = [_bunker,10,west,6,1,["B_G_Soldier_lite_F","B_G_Soldier_F","B_G_Soldier_F","B_G_Soldier_LAT_F","B_G_Soldier_GL_F","B_G_Soldier_AR_F"]] call ws_fnc_createGarrison;
_units execVM "f\setAISkill\f_setAISkill.sqf";
_units execVM "f\assignGear\f_assignGear_AI.sqf";