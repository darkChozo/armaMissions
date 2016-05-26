if (!isServer) exitWith {};

_corner = getMarkerPos "corner";
_posAdd = {[(_this select 0 select 0) + (_this select 1 select 0),
            (_this select 0 select 1) + (_this select 1 select 1),
            (_this select 0 select 2) + (_this select 1 select 2)]};

sleep 60;
while {true} do {
    _subs = [];
    _dir = random 360;
    _rx = (2200 * random 1);
    _ry = (3600 * random 1);
    _source = [_corner,[(_rx * cos 35) + (_ry * sin 35),(_rx * -sin 35) + (_ry * cos 35),10]] call _posAdd;
    _sub = createVehicle ["Submarine_01_F", _source, [], 0, "CAN_COLLIDE"];
    _sub setDir _dir;
    _sub setVelocity [-50 + random 100, -50 + random 100, 100];
    _sub spawn { sleep 20; deleteVehicle _this; };
    sleep .25;
};