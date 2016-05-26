_this addWeaponTurret ["LMG_RCWS",[-1]];
_this addMagazineTurret ["200Rnd_65x39_Belt_Tracer_Yellow",[-1]];
_this removeWeaponTurret ["missiles_DAR",[-1]];
_this removeWeaponTurret ["M134_minigun",[-1]];
_this removeWeaponTurret ["CMFlareLauncher",[-1]];
_this addWeaponTurret ["CMFlareLauncher",[-1]];
_case = "Land_WaterBarrel_F" createVehicle position _this;
_case attachTo [_this,[0,2.3,-.25]];
_this disableCollisionWith _case;
for "_i" from 2 to 7 do {
    _this lockCargo [_i, true];
};