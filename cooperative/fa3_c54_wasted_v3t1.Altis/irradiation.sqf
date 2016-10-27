sleep 5;

_center = _this select 0;
_radius = _this select 1;
_centerDamage = _this select 2;

_t0 = time;
_t0Text = time;
if (!isNil "f_var_debugMode" && {f_var_debugMode == 1}) then {
    _mkr = createMarker [format ["radZone-%1",_center],position _center];
    _mkr setMarkerShape "ELLIPSE";
    _mkr setMarkerSize [3*_radius,3*_radius];
};
while {true} do {
    _dps = _centerDamage;
    if (player distance _center > _radius) then {
        _dps = ( ((3*_radius) - (player distance _center)) max 0 ) / (2*_radius) * _centerDamage;
    };
    if (_dps > 0) then {
        if (_dps > 0 && {random 1 < _dps / .05}) then {
            playSound "geigerblip"; 
            if (time - _t0Text > 10) then {
                cutText ["Radiation Detected","PLAIN DOWN",0,true];
                _t0Text = time;
            };
        };
        if (!isNil "f_var_debugMode" && {f_var_debugMode == 1}) then {
            hintSilent format ["%1",1/_dps];
        };
        if (!(headgear player == "H_PilotHelmetFighter_I")) then {
            player setDamage ((damage player) + (_dps * (time - _t0)));
        };
    };
    _t0 = time;
    sleep 0.02;
};