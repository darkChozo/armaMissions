// Put in box init: null = [this] execVM "virtual_arsenal_init_atrange.sqf"
//Init stuff
_crate = _this select 0;
["AmmoboxInit",[_crate,false,{true}]] spawn BIS_fnc_arsenal;

//Lists of items to include
//_availableRifles = ["arifle_Katiba_F","arifle_Katiba_GL_F","arifle_Katiba_C_F","arifle_Mk20_plain_F","arifle_Mk20C_plain_F","arifle_Mk20_GL_plain_F","arifle_MXC_F","arifle_MX_F","arifle_MX_GL_F","arifle_TRG21_F","arifle_TRG20_F","arifle_TRG21_GL_F"];

//_availableSnipers = ["srifle_DMR_01_F","srifle_EBR_F","srifle_GM6_F","srifle_LRR_F","arifle_MXM_F","srifle_DMR_02_F","srifle_DMR_03_F","srifle_DMR_04_F","srifle_DMR_05_blk_F","srifle_DMR_06_olive_F"];

//_availableHandguns = ["hgun_ACPC2_F","hgun_P07_F","hgun_Pistol_heavy_01_F","hgun_Pistol_heavy_02_F","hgun_Rook40_F"];

//_availableMGs = ["LMG_Mk200_F","LMG_Zafir_F","arifle_MX_SW_F","MMG_01_tan_F","MMG_02_black_F"];

//_availableSMGs = ["hgun_PDW2000_F","SMG_01_F","SMG_02_F"];

_availableLaunchers = ["launch_NLAW_F","launch_RPG32_F","launch_B_Titan_short_F"];

_availableMagazines = ["NLAW_F","RPG32_F","RPG32_HE_F","Titan_AT","Titan_AP"];

_availableBackpacks = [
"B_AssaultPack_rgr",
"B_AssaultPack_mcamo",
"B_Kitbag_rgr",
"B_Kitbag_mcamo",
"B_TacticalPack_blk",
"B_TacticalPack_mcamo"
];


//_availableMagazines = ["10Rnd_762x54_Mag","20Rnd_762x51_Mag","5Rnd_127x108_Mag","7Rnd_408_Mag","200Rnd_65x39_cased_Box","150Rnd_762x54_Box","9Rnd_45ACP_Mag","16Rnd_9x21_Mag","11Rnd_45ACP_Mag","6Rnd_45ACP_Cylinder","30Rnd_65x39_caseless_green","1Rnd_HE_Grenade_shell1Rnd_Smoke_Grenade_shell","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag_Tracer_Red","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag_Tracer","3Rnd_Smoke_Grenade_shell","3Rnd_HE_Grenade_shell","100Rnd_65x39_caseless_mag_Tracer","100Rnd_65x39_caseless_mag","30Rnd_9x21_Mag","30Rnd_45ACP_Mag_SMG_01","10Rnd_338_Mag","10Rnd_127x54_Mag","10Rnd_93x64_DMR_05_Mag","150Rnd_93x64_Mag","130Rnd_338_Mag"];

_availableItems = ["ItemGPS","Rangefinder","Binocular","FirstAidKit","optic_Arco","optic_Hamr","optic_Aco","optic_Aco_smg","optic_Holosight","optic_Holosight_smg","optic_SOS","optic_MRCO","acc_pointer_IR","acc_flashlight","optic_DMS","optic_LRPS","optic_AMSoptic_KHS_blk","bipod_01_F_blk","bipod_01_F_blk","bipod_01_F_mtp"];

//Populate with predefined items and whatever is already in the crate
[_crate,_availableMagazines] call BIS_fnc_addVirtualMagazineCargo;
[_crate,_availableLaunchers] call BIS_fnc_addVirtualWeaponCargo;
[_crate,_availableItems] call BIS_fnc_addVirtualItemCargo;
[_crate,_availableBackpacks] call BIS_fnc_addVirtualBackpackCargo;