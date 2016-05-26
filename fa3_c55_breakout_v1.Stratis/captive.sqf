if (!isServer) exitWith {};

[_this,true] remoteExec ["setCaptive",_this];
_this setVariable ["needsEquipment",true,true];
_this spawn {
    waitUntil {!isNil {captivesfree}};
    waitUntil {captivesfree};
    [_this,false] remoteExec ["setCaptive",_this];
};