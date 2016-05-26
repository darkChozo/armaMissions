_thisList = _this select 0;
_side = _this select 1;

_return = true;
_num = 0;
{
    if (isPlayer _x && side _x == _side) then {
        _num = _num + 1;
        if (!(_x in _thisList) || !(vehicle _x in _thisList)) exitWith {_return = false};
    };
} forEach playableUnits;

if (_num == 0) then {_return = false};

_return