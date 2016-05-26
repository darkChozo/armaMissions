params ["_veh","_side"];

_veh removeWeaponTurret ["HMG_M2",[0]];
for "_i" from 1 to 4 do {
    _veh removeMagazineTurret ["100Rnd_127x99_mag_Tracer_Yellow",[0]];
};
_veh addWeaponTurret ["cannon_125mm",[0]];

if (_side == east) then {
    _veh setObjectTextureGlobal [0,"\a3\soft_f\Offroad_01\Data\offroad_01_ext_base04_co.paa"];
    for "_i" from 1 to 4 do {
        _veh addMagazineTurret ["12Rnd_125mm_HE_T_Green",[0]];
    };
} else {
    _veh setObjectTextureGlobal [0,"\a3\soft_f\Offroad_01\Data\offroad_01_ext_base03_co.paa"];
    for "_i" from 1 to 4 do {
        _veh addMagazineTurret ["12Rnd_125mm_HE_T_Red",[0]];
    };
};

_veh setMass 5000;