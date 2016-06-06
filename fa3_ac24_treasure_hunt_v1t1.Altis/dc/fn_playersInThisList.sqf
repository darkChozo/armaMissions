params [["_thisList",nil,[[]]],["_specifier",nil,[sideLogic,"",createGroup sideLogic]]];

if (isNil {_thisList}) exitWith {};

_actualThisList = [];

_specifierFnc = {true};

if (!isNil {_specifier}) then {
    switch (_specifier) do {
        case "SIDE" : {
            _specifierFnc = {
                side (_this select 0) == _this select 1;
            };
        };
        case "STRING" : {
            _specifierFnc = {
                faction (_this select 0) == _this select 1;
            };
        };
        case "GROUP" : {
            _specifierFnc = {
                group (_this select 0) == _this select 1;
            };
        };
    };
};

{
    if (_x isKindOf "Man") then {
        if ([_x,_specifier] call _specifierFnc) then {
            _actualThisList pushBack _x;
        };
    } else {
        {
            if ([_x,_specifier] call _specifierFnc) then {
                _actualThisList pushBack _x;
            };
        } forEach crew _x;
    };
} forEach _thisList;

count _actualThisList == {[_x,_specifier] call _specifierFnc} count playableUnits
