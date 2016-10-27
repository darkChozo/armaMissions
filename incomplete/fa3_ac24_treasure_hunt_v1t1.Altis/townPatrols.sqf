if (isNil {hc} && !isServer || {!isNil {hc} && (isServer || hasInterface)}) exitWith {};

_index = 0;
_patrols = [];
_patrols resize count towns;

_civs = ["C_man_1","C_man_polo_2_F","C_man_polo_4_F","C_man_polo_5_F","C_man_polo_6_F","C_man_p_beggar_F","C_man_hunter_1_F"];

while {true} do {
    _town = towns select _index;
    _nearPlayer = [_town,1300] call f_fnc_nearPlayer;
    _tooClose = !([_town,600] call f_fnc_nearPlayer);
    if (_nearPlayer && !_tooClose) then {
        if (isNil {_patrols select _index}) then {
            _grp = createGroup independent;
            _grp createUnit ["I_Soldier_TL_F",getMarkerPos _town,[],0,"NONE"];
            for "_i" from 1 to 2 + floor random 4 do { // create up to a 6-man team
                _grp createUnit ["I_Soldier_F",getMarkerPos _town,[],0,"NONE"];
            };
            [_grp,getMarkerPos _town,50] call BIS_fnc_taskPatrol;
            _grps = [_grp];
            _grp = createGroup civilian;
            for "_j" from 1 to 1 + floor random 2 do { // create up to 6 civs
                for "_i" from 1 to 1 + floor random 3 do {
                    _grp createUnit [_civs call BIS_fnc_selectRandom,getMarkerPos _town,[],0,"NONE"];
                };
            };
            [_grp,getMarkerPos _town,50] call BIS_fnc_taskPatrol;
            _grps pushBack _grp;
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
