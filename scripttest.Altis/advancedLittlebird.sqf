_this animate ["AddScreen1", 1]; 
_this animate ["AddHoldingFrame", 1]; 
_this animate ["AddFLIR", 1];
_camera = "B_Static_Designator_01_F" createVehicleLocal [0,0,5000];
createVehicleCrew _camera;
_camera attachTo [_this, [0,2.3,-.7]];
_camera setVectorUp [0,1,.5];
_camera allowDamage false;

player linkItem "B_UavTerminal";

if (vehicle player != _this) then {
    player disableUAVConnectability [_camera,true];
};

_this addEventHandler ["GetIn",{
    if (_this select 2 == player) then {
        player enableUAVConnectability [attachedObjects (_this select 0) select 0,true];
        player connectTerminalToUAV _camera;
    };
}];
_this addEventHandler ["GetOut",{
    if (_this select 2 == player) then {
        player disableUAVConnectability [attachedObjects (_this select 0) select 0,true];
        player connectTerminalToUAV objNull;
    };
}];