_startTime = time;
_camps = _this;
_run = true;

_burn = {
    _fire = "#particlesource" createVehicle position _this;
    _fire setParticleClass "SmallDestructionFire";
    _fire attachTo [nearestObject [position _this, "Land_RattanTable_01_F"],[0,-.25,.4]];
    _fire = "#particlesource" createVehicle position _this;
    _fire setParticleClass "SmallDestructionSmoke";
    _fire attachTo [nearestObject [position _this, "Land_RattanTable_01_F"],[0,-.25,.4]];
    [_this, "removeAllActions"] call BIS_fnc_MP;
    _this setVariable ["destroyed", true, true];
};

if (f_var_debugMode == 1) then {player sideChat "intelTracker: Waiting until indspotted";};
waitUntil {indforSpotted};

if (f_var_debugMode == 1) then {player sideChat "intelTracker: Starting intel tracker";};

intelTracker setVariable ["intelsCollected", 0, true];
{_x setVariable ["destroyed", false, true];} forEach _camps;

while {_run} do {
    if (f_var_debugMode == 1) then {player sideChat "intelTracker: Tracking intel...";};
    _intelsCapped = intelTracker getVariable "intelsCollected";
    intelTracker setVariable ["intelsCollected", {isNull _x} count _camps, true];
    if (intelTracker getVariable "intelsCollected" > _intelsCapped) then {
        [["Alert",[format ["Intel #%1 collected.", intelTracker getVariable "intelsCollected"]]], "BIS_fnc_showNotification"] call BIS_fnc_MP;
    };
    if (intelTracker getVariable "intelsCollected" >= var_camps) then {
        _run = false;
    };
    
    {
        if ((!isNull _x) && !(_x getVariable "destroyed") && (_x getVariable "startTime" != -1) && (time - (_x getVariable "startTime") > var_intel_time_short)) then {
            if (f_var_debugMode == 1) then {player sideChat format ["intelTracker: RIP intel %1",_x];};
            _x call _burn;
        };
    } forEach _camps;

    if (time - _startTime > var_intel_time_long) then {
        if (f_var_debugMode == 1) then {player sideChat "intelTracker: RIP intel";};
        {
            if (!isNull _x && !(_x getVariable "destroyed")) then {
                _x call _burn;
            };
        } forEach _camps;
        _run = false;
    };
    sleep 2;
};

intelTracker setVariable ["intelsLeft",false,true];