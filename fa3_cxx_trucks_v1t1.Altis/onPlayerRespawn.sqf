_isTruckDriver = ["UnitCSAT_TRK",format ["%1",_this select 0]] call BIS_fnc_inString;

if (_isTruckDriver) then {
    _this select 0 addAction ["Return to base",{_this select 0 setPos getMarkerPos "respawn_UnitCSAT_TRK1"; _this select 0 setDamage 0;},nil,8,true,true,"","_this == _target && _this distance getMarkerPos 'dest' < 75"];
};

if (!isNull (_this select 1)) then {
    if (_isTruckDriver) then {
        ["vd",_this select 0] call f_fnc_assignGear;
    } else {
        [(_this select 0)] joinSilent createGroup civilian;
        (_this + [true]) call f_fnc_camInit;
    };
};