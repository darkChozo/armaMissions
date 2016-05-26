if (!isServer) exitWith {};

_this spawn {
    params ["_source"];
    playSound3D ["A3\sounds_f\ambient\battlefield\battlefield_jet2_mono.wss", _source,false,_source modelToWorld [0,0,300],6];
    _drop = createVehicle ["B_supplyCrate_F",[getPos _source select 0, getPos _source select 1,3000],[],0,"CAN_COLLIDE"];
    _drop setVelocity [4 - random 8,4 - random 8,0];
    _drop setVariable ["suppliesCount",12,true];
    _drop allowDamage false;
    
    waitUntil {getPos _drop select 2 < 300};
    _chute = createVehicle ["B_Parachute_02_F",_drop modelToWorld [0,0,0],[],0,"CAN_COLLIDE"];
    _chute setVelocity velocity _drop;
    _chute disableCollisionWith _drop;
    _drop attachTo [_chute,[0,0,0]];
    "SmokeShellGreen_Infinite" createVehicle position _drop attachTo [_drop,[0,0,.5]];
    "F_40mm_Green_Infinite" createVehicle position _drop attachTo [_drop,[0,0,.5]];

    waitUntil {getPos _drop select 2 < 2};
    detach _drop;
    _chute setVelocity [0,5,0];
};