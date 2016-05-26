
if (isServer) then {
    _destroyedBuildings = [];
    _seed = 109;
    {
        if (owner _x == 0) then {
            _seed = ((56*_seed) + 82) % 255;
            if (_seed > 110) then {
                _destroyedBuildings pushBack _x;
            } else {
                for "_i" from 0 to (count (getAllHitPointsDamage _x select 0)) - 1 do {
                    _seed = ((256*_seed) + 205) % 255;
                    if (_seed > 130) then {
                        _x setHitIndex [_i,1];
                    } else {
                        _x setHitIndex [_i,.5];
                    };
                };
            };
        };
    } forEach nearestObjects [_this,["Building"],1500];
    [_destroyedBuildings,{{_x setDamage 1;} forEach _this;}] remoteExec ["BIS_fnc_call",0,true];
};