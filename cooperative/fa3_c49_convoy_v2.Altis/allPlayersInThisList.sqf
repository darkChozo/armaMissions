_side = independent;

_expandedThisList = [];
{
    if (_x isKindOf "Man") then {
        _expandedThisList = _expandedThisList + [_x];
    } else {
        _expandedThisList = _expandedThisList + crew _x;
    };
} forEach _this;

{side _x == _side} count playableUnits != 0 &&
{side _x == _side && _x in playableUnits} count _expandedThisList == {side _x == _side} count playableUnits 