_this disableAI "ANIM";
_this disableAI "CHECKVISIBLE";
_this disableAI "TARGET";
_this disableAI "AUTOTARGET";
_this disableAI "FSM";
_this setcaptive true;
_this switchMove "AmovPercMstpSsurWnonDnon";
_this setVariable ["following", objNull];
_this setVariable ["state", "captured"];

freepow = {
    _this select 0 switchMove "";
    _this select 0 enableAi "ANIM";
    _this select 0 setVariable ["following", _this select 1, true];
    _this select 0 setVariable ["state", "free", true];
};

_this addAction ["Tell POW to follow you", {_this select 0 setVariable ["following", _this select 1, true];},
    [],1.5,true,true,"","!(_this isEqualTo (_target getVariable ""following"")) && (_target getVariable ""state"" == ""free"") && _target distance _this < 4"];
_this addAction ["Free POW", {[_this,"freepow",_this] call BIS_fnc_MP;},
    [],1.5,true,true,"","(_target getVariable ""state"" == ""captured"") && _target distance _this < 4"];

if (!local _this) exitWith{};

while {alive _this && !(_this getVariable "state" == "extracted")} do {
    removeallweapons _this;
    if (_this getVariable "state" == "free" ) then {
        if (alive (_this getVariable "following")) then {
            _this doMove position (_this getVariable "following");
        } else {
            _this switchMove "AmovPercMstpSsurWnonDnon";
            _this disableAI "ANIM";
            _this setVariable ["state", "captured",true];
        };
    };
    if (_this distance powleader < 50) then {
        [_this] join group powleader;
        _this setVariable ["state", "extracted", true];
    };
    sleep 5;
};