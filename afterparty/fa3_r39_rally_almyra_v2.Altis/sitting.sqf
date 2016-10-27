_this disableAI "MOVE";

if (isServer) then {
    _this setVariable ["anim", ["HubSittingChairUA_idle1", "HubSittingChairUA_idle2", "HubSittingChairUA_idle3","HubSittingChairB_idle1", "HubSittingChairUB_idle2", "HubSittingChairUB_idle3"] call BIS_fnc_selectRandom,true];
    _this disableAI "MOVE";
    _this disableAI "ANIM";
};
waitUntil {!isNil {_this getVariable "anim"}};
while{true} do {
    _this switchMove (_this getVariable "anim");
    waitUntil{animationState _this != (_this getVariable "anim")};
};
