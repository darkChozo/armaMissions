_this addWeaponTurret ["GBU12BombLauncher",[-1]];
_this addMagazineTurret ["2Rnd_GBU12_LGB",[-1]];

_this addEventHandler ["Fired", {
    if (local (_this select 6)) then {
        _pos = _this select 6 modelToWorld [0,0,-3];
        _vel = velocity (_this select 6);
        deleteVehicle (_this select 6);
        _bom = createVehicle ["Land_MetalBarrel_F",_pos,[],0,"CAN_COLLIDE"];
        _bom setVelocity _vel;
        _bom spawn {
            sleep 7;
            createVehicle ["SatchelCharge_Remote_Ammo_Scripted",position _this,[],0,"CAN_COLLIDE"] setDamage 1;
            deleteVehicle _this;
        };
    };
}];
while {true} do {
    waitUntil {sleep 1; local _this && _this ammo "GBU12BombLauncher" == 0;};
    sleep 10;
    [_this, 1] remoteExec ["setVehicleAmmo",_this];
    ["Alert",["Reloaded!"]] remoteExec ["BIS_fnc_showNotification",crew _this];
};