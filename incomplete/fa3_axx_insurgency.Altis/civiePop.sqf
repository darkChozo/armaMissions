if (isNil {hc} && !isServer || {!isNil {hc} && {isServer || hasInterface}}) exitWith {};

_buildings = nearestTerrainObjects [position _this,["HOUSE"],350];

for "_i" from 1 to 150 do {
    _building = _buildings call BIS_fnc_selectRandom;
    while {count ([_building] call BIS_fnc_buildingPositions) == 0} do {
        _buildings = _buildings - [_building];
        _building = _buildings call BIS_fnc_selectRandom;
    };
    _grp = createGroup civilian;
    _man = _grp createUnit ["C_man_1",[_building] call BIS_fnc_buildingPositions call BIS_fnc_selectRandom,[],0,"NONE"];
    ["civ",_man,"opf_f"] call f_fnc_assignGear;
    if (random 1 > .3) then {
        [_grp,position _man,50] call BIS_fnc_taskPatrol;
    };
};