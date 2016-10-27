_this setObjectTexture [0,"a3\air_f\Heli_Light_01\data\skins\heli_light_01_ext_wasp_co.paa"];
_this removeWeaponTurret ["missiles_DAR",[-1]];
{_this removeWeaponTurret [_x,[-1]]} forEach (_this weaponsTurret [-1]);
_this addWeaponTurret ["LMG_M200",[-1]];
_this addMagazineTurret ["2000Rnd_65x39_Belt_Tracer_Red",[-1]];

clearWeaponCargoGlobal _this;
clearMagazineCargoGlobal _this;
clearItemCargoGlobal _this;