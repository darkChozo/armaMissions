_center = getPosASL _this;
waitUntil {
    _theta = time * 10 % 360;
    if (_theta < 0) then {_theta = _theta + 360};
    _this setPosASL [(_center select 0) - 500 * cos (90 - _theta),(_center select 1) + 500 * sin (90 - _theta),1000];
    _this setDir (90 - _theta);
    false
};