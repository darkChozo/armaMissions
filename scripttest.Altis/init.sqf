enableSaving [false, false];

[["BLU_F"], ["OPF_F"], 10, 1] execVm "enemyRadar.sqf";

[] execVM "staminadrain.sqf";

player addEventHandler ["Fired", {
    if (["IRStrobe",(_this select 4)] call BIS_fnc_inString) then {
        _this select 6 spawn {
            sleep 5;
            createMarker ["whoop", position _this];
            "whoop" setMarkerPos position _this;
            "whoop" setMarkerType "hd_objective";
            "whoop" setMarkerShape "ICON";
        };
    };
}];

player execVM "stamina.sqf";
player execVM "bulletReplacer.sqf";
player addScore 99999999;

[] execVM "rocketJump.sqf";