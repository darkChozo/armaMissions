if (!isServer) exitWith {};

_this disableAI "MOVE";
_this disableAI "TARGET";
_this disableAI "AUTOTARGET";
_this disableAI "ANIM";

sleep (5 + random 10);

if (random 1 > .5) then { _this setDir (getDir _this + 180); };

_mat = ["Land_Ground_sheet_F","Land_Ground_sheet_blue_F","Land_Ground_sheet_khaki_F","Land_Ground_sheet_yellow_F"] call BIS_fnc_selectRandom;
createVehicle [_mat,_this modelToWorld [0,0,0],[],0,"CAN_COLLIDE"] setDir getDir _this;

switch (ceil random 2) do {
    case (1): { _this playActionNow "Unconscious";};
    case (2): { _this playActionNow "agonyStart";};
};