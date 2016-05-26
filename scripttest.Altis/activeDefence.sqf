_rocket = objNull;

while {true} do {
    waitUntil {sleep .1;_rocket = nearestObject [_this,"RocketCore"]; !isNull _rocket};
    player sideChat format ["%1", getPosATL _rocket select 0];
    _blocker = "Land_TacticalBacon_F" createVehicle  (_this modelToWorld [0,0,5]);
    _vel = 100;
    _pos = getPosATL _blocker;
    _aimpoint = [(getPosATL _rocket select 0) + ((velocity _rocket) select 0 * ((_rocket distance _blocker) / _vel)),
                 (getPosATL _rocket select 1) + ((velocity _rocket) select 1 * ((_rocket distance _blocker) / _vel)),
                 (getPosATL _rocket select 2) + ((velocity _rocket) select 2 * ((_rocket distance _blocker) / _vel))];
    _dir = vectorNormalized [(_pos select 0) - (_aimpoint select 0),
                             (_pos select 1) - (_aimpoint select 1),
                             (_pos select 2) - (_aimpoint select 2)];
    _blocker setVelocity [_vel * (_dir select 0),
                          _vel * (_dir select 1),
                          _vel * (_dir select 2)];
    player sideChat "blocker deployed";
    _rocket = objNull;
    sleep 2;
};