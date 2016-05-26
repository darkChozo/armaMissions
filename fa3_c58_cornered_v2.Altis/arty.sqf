if (!isServer) exitWith {};

sleep 60;

while {true} do {
    sleep (30 + random (500 - (time / 6 min 470)));
    vehicle _this setVehicleAmmo 1;
    _this doArtilleryFire [[getMarkerPos "attackHere",random 250,random 360] call BIS_fnc_relPos,"8Rnd_82mm_Mo_shells",1 + floor random 3];
};