// _this = position to create mine

params ["_pos",["_dir",random 360],["_sides",[]]];

_leftPos = AGLToASL [(_pos select 0) + (-1.45 * cos (-_dir)),
                     (_pos select 1) + (-1.45 * sin (-_dir)),
                     0];
_rightPos = AGLToASL [(_pos select 0) + (1.59 * cos (-_dir)),
                      (_pos select 1) + (1.59 * sin (-_dir)),
                      0];

_mine = createMine ["APERSTripMine",ASLToAGL [_pos select 0,
                                              _pos select 1,
                                              ((((_leftPos select 2)) + (_rightPos select 2)) / 2)],[],0];
{_x revealMine _mine} forEach _sides;
[_mine,_dir,_leftPos,_rightPos] spawn {
    sleep 2;
    [_this select 0,_this select 1] remoteExec ["setDir",0,true];
    [_this select 0,0,((_this select 2 select 2) - (_this select 3 select 2)) atan2 3.04] remoteExec ["BIS_fnc_setPitchBank",0,true];
};

if (!isNil "f_var_debugMode" && {f_var_debugMode == 1}) then {
    createVehicle ["Sign_Sphere10cm_F", ASLtoAGL _leftPos,[],0,"CAN_COLLIDE"];
    createVehicle ["Sign_Sphere10cm_F", ASLtoAGL _rightPos,[],0,"CAN_COLLIDE"];
    _marker = createMarker [format ["%1",random 1],position _mine];
    _marker setMarkerShape "ICON";
    _marker setMarkerType "hd_dot";
    _marker setMarkerSize [.5,.5];
};