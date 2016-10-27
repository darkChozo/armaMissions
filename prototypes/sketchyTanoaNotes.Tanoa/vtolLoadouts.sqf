params ["_veh","_loadout"];

_weapons = [];
_magazines = [];

{ _veh removeWeaponTurret [_x,[0]]; } forEach (_veh weaponsTurret [0]);
{ _veh removeMagazineTurret [_x,[0]]; } forEach (_veh magazinesTurret [0]);

switch _loadout do {
	case "transport" do {};
	case "default" do {
		_weapons = ["gatling_30mm","missiles_SCALPEL","rockets_Skyfire"];
		_magazines = ["250Rnd_30mm_HE_shells","250Rnd_30mm_APDS_shells","8Rnd_LG_scalpel","38Rnd_80mm_rockets"];
	};
	case "lattack" do {
		_weapons = ["LMG_Minigun_heli","missiles_ASRAAM","rockets_Skyfire"];
		_magazines = ["1000Rnd_65x39_Belt_Tracer_Green","4Rnd_AAA_missiles","4Rnd_AAA_missiles","14Rnd_80mm_rockets"];
	};
};

{ _veh addWeaponTurret [_x,[0]] } forEach _weapons;
{ _veh addMagazineTurret [_x,[0]] } forEach _magazines;