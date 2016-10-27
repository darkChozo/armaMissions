if (!isServer) exitWith {};

_angle = random 360;
_dist = random (_this select 1);

(_this select 0) setPos [(getPos (_this select 0) select 0) + (_dist * cos _angle),
                         (getPos (_this select 0) select 1) + (_dist * sin _angle),
                          getPos (_this select 0) select 2];
