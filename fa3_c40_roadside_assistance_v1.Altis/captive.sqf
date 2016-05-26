captivesFree = [];

if (isServer) then {
    {
        _x setCaptive true;
        _x disableAI "COMBAT";
        _x disableAI "TARGET";
        _x disableAI "AUTOTARGET";
        _x disableAI "MOVE";
        _x spawn {
            waitUntil {_this in captivesFree};
            _this setCaptive false;
            _this disableAI "MOVE";
        };
    } forEach units group _this;
};
if (hasInterface) then {
    {
        _x addAction ["Set Hostages Free",{
            {
                if (!(_x in captivesFree)) then {
                    captivesFree pushBack _x;
                };
            } forEach units group (_this select 0);
            publicVariable "captivesFree";
        },nil,6,true,true,"","!(_target in captivesFree) && _this distance _target < 4"];

        _x spawn {
            _anim = "InBaseMoves_HandsBehindBack1";
            while{alive _this && !(_this in captivesFree)} do {
                _this switchMove _anim;
                waitUntil{animationState _this != _anim};
            };
            _this playMoveNow "";
        };
    } forEach units group _this;
};