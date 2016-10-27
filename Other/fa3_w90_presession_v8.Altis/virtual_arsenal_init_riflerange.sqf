// Put in box init: null = [this] execVM "virtual_arsenal_init_riflerange.sqf"
//Init stuff
_crate = _this select 0;
["AmmoboxInit",[_crate,false,{true}]] spawn BIS_fnc_arsenal;









//Lists of items to include
_availableRifles = ["arifle_Katiba_F","arifle_Katiba_GL_F","arifle_Katiba_C_F","arifle_Mk20_plain_F","arifle_Mk20C_plain_F","arifle_Mk20_GL_plain_F","arifle_MXC_F","arifle_MX_F","arifle_MX_GL_F","arifle_TRG21_F","arifle_TRG20_F","arifle_TRG21_GL_F","arifle_AK12_F","arifle_AK12_GL_F","arifle_AKM_F","arifle_AKS_F","arifle_ARX_blk_F","arifle_CTAR_blk_F","arifle_CTAR_GL_blk_F","arifle_CTARS_blk_F","arifle_SPAR_01_blk_F","arifle_SPAR_01_GL_blk_F","arifle_SPAR_02_blk_F","arifle_SPAR_03_blk_F"];

_availableSnipers = ["srifle_DMR_01_F","srifle_EBR_F","srifle_GM6_F","srifle_LRR_F","arifle_MXM_F","srifle_DMR_02_F","srifle_DMR_03_F","srifle_DMR_04_F","srifle_DMR_05_blk_F","srifle_DMR_06_olive_F","srifle_DMR_07_blk_F"];

_availableHandguns = ["hgun_ACPC2_F","hgun_P07_F","hgun_Pistol_heavy_01_F","hgun_Pistol_heavy_02_F","hgun_Rook40_F","hgun_Pistol_01_F"];

_availableMGs = ["LMG_Mk200_F","LMG_Zafir_F","arifle_MX_SW_F","MMG_01_tan_F","MMG_02_black_F","LMG_03_F"];

_availableSMGs = ["hgun_PDW2000_F","SMG_01_F","SMG_02_F","SMG_05_F"];

_availableMagazines = ["10Rnd_762x54_Mag","20Rnd_762x51_Mag","5Rnd_127x108_Mag","7Rnd_408_Mag","200Rnd_65x39_cased_Box","150Rnd_762x54_Box","9Rnd_45ACP_Mag","16Rnd_9x21_Mag","11Rnd_45ACP_Mag","6Rnd_45ACP_Cylinder","30Rnd_65x39_caseless_green","1Rnd_HE_Grenade_shell1Rnd_Smoke_Grenade_shell","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag_Tracer_Red","30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag_Tracer","3Rnd_Smoke_Grenade_shell","3Rnd_HE_Grenade_shell","100Rnd_65x39_caseless_mag_Tracer","100Rnd_65x39_caseless_mag","30Rnd_9x21_Mag","30Rnd_45ACP_Mag_SMG_01","10Rnd_338_Mag","10Rnd_127x54_Mag","10Rnd_93x64_DMR_05_Mag","150Rnd_93x64_Mag","130Rnd_338_Mag","30Rnd_580x42_Mag_F","30Rnd_580x42_Mag_Tracer_F","100Rnd_580x42_Mag_F","100Rnd_580x42_Mag_Tracer_F","20Rnd_650x39_Cased_Mag_F","150Rnd_556x45_Drum_Mag_F","150Rnd_556x45_Drum_Mag_Tracer_F","30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_Green_F","30Rnd_762x39_Mag_Tracer_F","30Rnd_762x39_Mag_Tracer_Green_F","30Rnd_545x39_Mag_F","30Rnd_545x39_Mag_Green_F","30Rnd_545x39_Mag_Tracer_Green_F","200Rnd_556x45_Box_F","200Rnd_556x45_Box_Red_F","200Rnd_556x45_Box_Tracer_F","200Rnd_556x45_Box_Tracer_Red_F"];

_availableItems = ["ItemGPS","Rangefinder","Binocular","FirstAidKit","optic_Arco","optic_Hamr","optic_Aco","optic_ACO_grn","optic_Aco_smg","optic_ACO_grn_smg","optic_Holosight_smg","optic_SOS","optic_MRCO","optic_NVS","optic_Nightstalker","optic_tws","optic_tws_mg","optic_DMS","optic_Yorris","optic_MRD","optic_LRPS","optic_AMS_base","optic_AMS","optic_AMS_khk","optic_AMS_snd","optic_KHS_base","optic_KHS_blk","optic_KHS_hex","optic_KHS_old","optic_KHS_tan","optic_Arco_blk_F","optic_Arco_ghex_F","optic_DMS_ghex_F","optic_Hamr_khk_F","optic_SOS_khk_F","optic_LRPS_tna_F","optic_LRPS_ghex_F","optic_Holosight_blk_F","optic_Holosight_khk_F","optic_Holosight_smg_blk_F","optic_ERCO_blk_F","optic_ERCO_khk_F","optic_ERCO_snd_F","bipod_01_F_blk"];

//Populate with predefined items and whatever is already in the crate
[_crate,_availableMagazines] call BIS_fnc_addVirtualMagazineCargo;
[_crate,(_availableRifles+_availableSnipers+_availableHandguns+_availableMGs+_availableSMGs)] call BIS_fnc_addVirtualWeaponCargo;
[_crate,_availableItems] call BIS_fnc_addVirtualItemCargo;
