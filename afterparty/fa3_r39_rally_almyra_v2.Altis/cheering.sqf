if (isServer) then {
    _this setVariable ["anim", ["LHD_krajPaluby","HubWave_move2","Acts_PointingLeftUnarmed","HubBriefing_lookAround1"] call BIS_fnc_selectRandom,true];
    _this disableAI "MOVE";
    _this disableAI "ANIM";
    _this disableAI "AUTOTARGET";
    _this disableAI "TARGET";
};
waitUntil {!isNil {_this getVariable "anim"}};
while {true} do {
    switch (_this getVariable "anim") do {
        case "LHD_krajPaluby" : {
            _this switchMove "LHD_krajPaluby";
            waitUntil {animationState _this != "LHD_krajPaluby"};
        };
        case "HubWave_move2" : {
            _this switchMove "HubWave_move2";
            sleep 5;
            _this switchMove "";
            sleep 5;
        };
        case "Acts_PointingLeftUnarmed" : {
            _this switchMove "Acts_PointingLeftUnarmed";
            waitUntil {animationState _this != "Acts_PointingLeftUnarmed"};
        };
        case "HubBriefing_lookAround1" : {
            _this switchMove "HubBriefing_lookAround1";
            sleep 7;
        };
    };
};