_veh = _this select 0;

_weapons = [["mortar_155mm_AMOS", ["32Rnd_155mm_Mo_shells", "2Rnd_155mm_Mo_Cluster", "6Rnd_155mm_Mo_AT_mine"], 3000],
            ["LMG_Minigun_heli", ["2000Rnd_65x39_Belt_Tracer_Yellow_Splash"], 1630],
			["mortar_82mm", ["8Rnd_82mm_Mo_shells","8Rnd_82mm_Mo_Flare_white","8Rnd_82mm_Mo_LG"], 1630],
			["autocannon_30mm_CTWS", ["140Rnd_30mm_MP_shells_Tracer_Green", "60Rnd_30mm_APFSDS_shells_Tracer_Green"], 1630],
			["missiles_titan", ["5Rnd_GAT_missiles"], 1630],
			["rockets_Skyfire", ["38Rnd_80mm_rockets"], 1630],
			["cannon_120mm", ["32Rnd_120mm_APFSDS_shells_Tracer_Yellow", "30Rnd_120mm_HE_shells_Tracer_Yellow"], 5000],
			["gatling_30mm", ["250Rnd_30mm_HE_shells", "250Rnd_30mm_APDS_shells"], 1630]
		   ];

_weapon = _weapons call BIS_fnc_selectRandom;
[_veh, [0], _weapon select 0, _weapon select 1, 51] execVM "replaceTurretWeapon.sqf";
_veh setMass (_weapon select 2);
//_veh addAction ["New Weapon", {_this select 0 removeAction (_this select 2); [_this select 0] execVM "randomstupidweapon.sqf";}];