if (!local _this) exitWith {};

private ["_regenRate","_t0"];

sleep 2;

_regenRate = .000001;
_t0 = time;

while {true} do { // execute every frame
    _this setStamina ((getStamina _this) + ((time - _t0) * _regenRate));
    _t0 = time;
    sleep .1;
};