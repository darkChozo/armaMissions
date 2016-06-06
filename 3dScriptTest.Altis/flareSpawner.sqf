
_angle = 0;
while {true} do {
    flareLauncher setVehicleAmmo 1;
    flareLauncher doArtilleryFire [[position _this,200 + random 400,_angle] call BIS_fnc_relPos,"8Rnd_82mm_Mo_Flare_white",1];
    flareLauncher_1 setVehicleAmmo 1;
    flareLauncher_1 doArtilleryFire [[position _this,50 + random 400,_angle + random 180] call BIS_fnc_relPos,"8Rnd_82mm_Mo_Flare_white",1];
    _angle = (_angle + 20 +  random 70) mod 360;
    sleep 2 + random 5;
};