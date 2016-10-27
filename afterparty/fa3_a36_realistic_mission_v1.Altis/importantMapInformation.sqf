if (isServer) then {
    for "_i" from 1 to 50 do {
        _marker = createMarker [format ["importantInfo_%1",_i],[position _this,random 15000,random 360] call BIS_fnc_relPos];
        _marker setMarkerColor (["colorWEST","colorEAST","colorIndependent"] call BIS_fnc_selectRandom);
        if (random 1 < .1) then {
            _marker setMarkerShape "Rectangle";
            _marker setMarkerSize [100,random 5000];
            _marker setMarkerBrush "Grid";
            _marker setMarkerDir random 360;
        } else {
            _marker setMarkerShape "ICON";
            _marker setMarkerType (["hd_flag","hd_destroy","hd_warning","hd_unknown","b_unknown","b_inf","b_mech_inf","b_armor","b_art","b_installation"] call BIS_fnc_selectRandom);
        };
    };
};