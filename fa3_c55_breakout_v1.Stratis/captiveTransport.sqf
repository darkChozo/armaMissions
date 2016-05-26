_this addAction ["Free Captives", {captivesfree = true; publicVariable "captivesfree"},nil,6,true,true,"","!(_this in crew _target) && _this distance _target < 6 && !captivesfree"];
_this spawn {
    waitUntil {!isNil {captivesfree}};
    waitUntil {captivesfree};
    _this lock false;
};