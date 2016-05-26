
_pod = createVehicle ["Land_Pod_Heli_Transport_04_covered_F",[_this select 0, _this select 1,random 100000],[],50,"CAN_COLLIDE"];

_pod spawn {
    _action = player addAction ["Teleport to pod",{player moveInCargo (_this select 3)},_this,0];
    _this setDir random 360;
    {_this setObjectTextureGlobal [_x,'#(argb,8,8,3)color(0.9,0.8,0.7,0.5)'];} forEach [0,1];

    waitUntil {getPos _this select 2 < 170};
    player removeAction _action;
    _chute = createVehicle ["O_Parachute_02_F",_this modelToWorld [0,1,0],[],0,"CAN_COLLIDE"];
    _chute setVelocity velocity _this;
    _chute setDir getDir _this;
    _this attachTo [_chute,[0,-1,0]];
    waitUntil {getPos _this select 2 < 4};
    detach _this;
    _chute setVelocity [5,0,0];
    sleep 2;
    _this animateDoor ["Door_6_source", 1, false]; 
    sleep 2;
    _grp leaveVehicle _this;
}