/*
    [center,innerRadius,outerRadius,numberOfMinesMin,numberOfMinesMax]
*/

if (!isServer) exitWith {};

_center = _this select 0;
_innerRadius = _this select 1;
_outerRadius = _this select 2;
_numberOfMines = (_this select 3) + random ((_this select 4) - (_this select 3));
_randomDir = false;
if (count _this > 5) then {_randomDir = _this select 5;};

_startAngle = random 360;
_subAngle = 360 / _numberOfMines;

_mines = [];

for "_i" from 1 to _numberOfMines do {
    _dist = _innerRadius + random (_outerRadius - _innerRadius);
    _angle = _startAngle + (_subAngle * _i) + random _subAngle - (_subAngle/2);
    _pos = [(_center select 0) + (_dist * cos _angle),
            (_center select 1) + (_dist * sin _angle),
            0];
    _dir = 0;
    if (_randomDir) then {
        _dir = random 360;
    } else {
        if (random 1 > .5) then {
            _dir = (((_center select 0) - (_pos select 0)) atan2 ((_center select 1) - (_pos select 1))) - 15 + (random 30);
        } else {
            _dir = (((_center select 0) - (_pos select 0)) atan2 ((_center select 1) - (_pos select 1))) + 165 + (random 30);
        };
    };
    [_pos,_dir,[west]] execVM "createTripmine.sqf";
};