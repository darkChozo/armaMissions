_this addAction ["Collision lights off", {_this select 0 setCollisionLight false},[],0,false,true,"","(_this == driver _target) && (isCollisionLightOn _target)"];
_this addAction ["Collision lights on", {_this select 0 setCollisionLight true},[],0,false,true,"","(_this == driver _target) && (!isCollisionLightOn _target)"];
_this addWeaponTurret ["LMG_RCWS",[-1]];
_this addMagazineTurret ["200Rnd_65x39_Belt_Tracer_Yellow",[-1]];
_this addWeaponTurret ["missiles_ASRAAM",[-1]];
_this addMagazineTurret ["2Rnd_AAA_missiles",[-1]];
_this removeWeaponTurret ["missiles_DAR",[-1]];
_this removeWeaponTurret ["M134_minigun",[-1]];
_this removeWeaponTurret ["CMFlareLauncher",[-1]];
_this addWeaponTurret ["CMFlareLauncher",[-1]];
for "_i" from 2 to 7 do {
    _this lockCargo [_i, true];
};