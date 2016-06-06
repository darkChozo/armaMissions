if (isNil {hc} && !isServer || {!isNil {hc} && (isServer || hasInterface)}) exitWith {};

_index = 0;
_patrols = [];
_patrols resize count bases;


while {true} do {
    _town = bases select _index;
    _nearPlayer = [_town,1300] call f_fnc_nearPlayer;
    _tooClose = !([_town,600] call f_fnc_nearPlayer);
    if (_nearPlayer && !_tooClose) then {
        if (isNil {_patrols select _index}) then {
            _grps = [];
            for "_j" from 1 to 2 do {
                _grp = createGroup independent;
                _grp createUnit ["I_Soldier_TL_F",getMarkerPos _town,[],0,"NONE"];
                for "_i" from 1 to 6 do {
                    _grp createUnit ["I_Soldier_F",getMarkerPos _town,[],0,"NONE"];
                };
                [_grp,getMarkerPos _town,50] call BIS_fnc_taskPatrol;
                _grps pushBack _grp;
            };
            _patrols set [_index,_grps];
        };
    } else {
        if (!_nearPlayer && !isNil {_patrols select _index}) then {
            {
                {deleteVehicle _x} forEach units _x;
            } forEach (_patrols select _index);
            _patrols set [_index,nil];
        };
    };
    _index = _index + 1;
    if (_index == count _patrols) then {_index = 0};
    sleep 1;
};
