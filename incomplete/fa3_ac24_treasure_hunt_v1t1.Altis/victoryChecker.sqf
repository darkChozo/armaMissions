if (!isServer) exitWith {};

_ended = false;
while {true} do {
    if (!_ended && thedevice distance getMarkerPos "areaCenter" > 5500 && {!(position thedevice isFlatEmpty  [-1, -1, -1, -1, 2, false] isEqualTo [])}) then {
        _slingloadVic = ropeAttachedTo thedevice;
        if (!isNull _slingloadVic) then {
            switch (side _slingloadVic) do {
                case west : { [1] call f_fnc_mpEnd; _ended = true; };
                case east : { [2] call f_fnc_mpEnd; _ended = true; };
            };
        };
    };
    if (!_ended && !alive natochopper && !alive csatchopper) then {
        [3,false] call f_fnc_mpEnd;
        _ended = true;
    };
    if (!_ended && {alive _x && side _x != sideLogic} count playableUnits == 0) then {
        [4,false] call f_fnc_mpEnd;
        _ended = true;
    };
    if (!_ended && getPosASL thedevice select 2 < -9) then {
        [5,false] call f_fnc_mpEnd;
        _ended = true;
    };
    sleep 5;
};