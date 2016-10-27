_this removeWeaponTurret ["M134_minigun",[-1]];
_this removeMagazineTurret ["5000Rnd_762x51_Yellow_Belt",[-1]];
_this removeWeaponTurret ["missiles_DAR",[-1]];
_this removeMagazineTurret ["24Rnd_missiles",[-1]];

_this addWeaponTurret ["LMG_Minigun_Transport",[-1]];
for "_i" from 1 to 4 do {
	_this addMagazineTurret ["500Rnd_65x39_Belt_Tracer_Red_Splash",[-1]];
};


_this addWeaponTurret ["missiles_DAR",[-1]];
_this removeMagazineTurret ["24Rnd_missiles",[-1]];
_this addMagazineTurret ["12Rnd_missiles",[-1]];


