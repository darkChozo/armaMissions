_this animateSource ["RocketPods_Hide",1];
["v_helo_l",_this,"blu_f"] call f_fnc_assignGear;
{_this removeWeaponTurret [_x,[-1]];} forEach ["M134_minigun","missiles_DAR"];
_this addWeaponTurret ["LMG_M200",[-1]];
_this addMagazineTurret ["500Rnd_65x39_Belt_Tracer_Yellow_Splash",[-1]];