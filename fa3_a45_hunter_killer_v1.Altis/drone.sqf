_this addWeaponTurret ["LMG_M200",[-1]];
_this addMagazineTurret ["2000Rnd_65x39_Belt_Tracer_Green",[-1]];
_this allowDamage false;
_this disableTIEquipment true;

if (hasInterface) then {
    waitUntil {!isNull player};
    if (side player == civilian) then {
        _light = "#lightpoint" createVehicleLocal position _this;
        _light attachTo [_this,[0,0,-.1]];
        _light setLightColor [.15,.3,.15];
        _light setLightBrightness .5;
        _light setLightAttenuation [0,1,10,5];
        _light setLightUseFlare true;
        _light setLightFlareSize 1;
        _light setLightFlareMaxDistance 1000;
    };
};