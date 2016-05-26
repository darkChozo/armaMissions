_pod = createVehicle ["Land_Pod_Heli_Transport_04_covered_F",[_this select 0, _this select 1,random 100000],[],150,"CAN_COLLIDE"];

_pod spawn {
    _this setDir random 360;
    {_this setObjectTextureGlobal [_x,'#(argb,8,8,3)color(0.9,0.8,0.7,0.5)'];} forEach [0,1];
    
    [_this,"dropPodFx.sqf"] remoteExec ["execVM"];

    waitUntil {position _this select 2 < (velocity _this select 2)/-2};
    _this setVariable ["rocketOn", true, true];
    _p0 = position _this select 2;
    _v0 = velocity _this select 2;
    _soundt0 = 0;
    while {velocity _this select 2 < -5} do {
        _this setVelocity [velocity _this select 0, velocity _this select 1,(1-((_p0 + 10 - (position _this select 2))/_p0))*_v0];
        sleep .05
    };
    _t0 = time;
    while {getPos _this select 2 > 1 && _t0 + 10 > time} do {
        _this setVelocity [velocity _this select 0, velocity _this select 1,-5];
        sleep .05;
    };

    sleep 2;
    _this animateDoor ["Door_6_source", 1, false]; 
    sleep 2;

};
_pod