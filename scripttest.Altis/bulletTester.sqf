while {true} do {
    if (!isNil "driver this") then {
        _shell = ammoType createVehicle (_this modelToWorld [0,2,0]);
        _shell setDir getdir _this;
        _shell setVelocity [50*sin getDir _this,50*cos getDir _this,.5];
        sleep .5;
    };
};