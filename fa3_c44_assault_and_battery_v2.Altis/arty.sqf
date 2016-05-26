if (!isServer) exitWith {};

vehicle _this setVehicleLock "LOCKED";
_this moveInGunner nearestObject [_this, "B_MBT_01_mlrs_F"];

sleep (random 60 + 60);
while {true} do {
if (count (_this magazinesTurret [0]) == 0) then {
    _this addMagazineTurret ["12Rnd_230mm_rockets", [0]];
};

_this doArtilleryFire [getMarkerPos "target", "12Rnd_230mm_rockets", ceil random 3];

sleep random 300;
};