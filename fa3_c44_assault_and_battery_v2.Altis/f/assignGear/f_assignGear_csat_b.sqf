// DEFINE BACKPACK CONTENTS
// The following blocks of code define different backpack loadouts. These are then
// called from the role loadouts.

// BACKPACK: MEDIC
case "m":
{
    _unit addBackpack _bagpara;
};

// BACKPACK: GRENADIER (CO/DC/SL/FTL/G)
case "g":
{
    _unit addBackpack _bagpara;
    _unit addmagazines [_glriflemag,1];
    _unit addmagazines [_glmag,3];
    _unit addmagazines [_glsmokewhite,1];
    _unit addmagazines [_grenade,1];		// Do not use with mgrenades
    //_unit addmagazines [_mgrenade,2];		// Do not use with grenades
    _unit addmagazines [_smokegrenade,2];
};

// BACKPACK: AR
case "ar":
{
	_unit addBackpack _bagpara;
    _unit addmagazines [_ARmag_Tr,1];
};

// BACKPACK: AAR
case "aar":
{
    _unit addBackpack _bagpara;
    _unit addmagazines [_ARmag,1];
    _unit addmagazines [_grenade,1];		// Do not use with mgrenades
    //_unit addmagazines [_mgrenade,2];		// Do not use with grenades
    _unit addmagazines [_smokegrenade,1];
};

// BACKPACK: RIFLEMAN AT (RAT)
case "rat":
{
	_unit addBackpack _bagpara;
	(unitBackpack _unit) addMagazineCargoGlobal [_RATmag, 1];
};

// BACKPACK: DESIGNATED MARKSMAN (DM)
case "dm":
{
	// LOADOUT: LIGHT
	if (_loadout == 0) then {
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
	};

	// LOADOUT: MEDIUM
	if (_loadout == 1) then {
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_DMriflemag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];		// Do not use with mgrenades
		//(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 3];	// Do not use with grenades
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];

	};
	// LOADOUT: HEAVY
	if (_loadout == 2) then {
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_DMriflemag, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 3];		// Do not use with mgrenades
		//(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 5];	// Do not use with grenades
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 4];
	};
};

// BACKPACK: RIFLEMAN (R)
case "r":
{
	_unit addBackpack _bagpara;
    _unit addmagazines [_riflemag,2];
    _unit addmagazines [_grenade,1];		// Do not use with mgrenades
    //_unit addmagazines [_mgrenade,2];		// Do not use with grenades
    _unit addmagazines [_smokegrenade,2];
};

// BACKPACK: CARABINEER (CAR)
case "car":
{
	// NO BACKPACK
	if (_loadout == 0) then {
		_unit addmagazines [_carbinemag,2];
		_unit addmagazines [_grenade,1];		// Do not use with mgrenades
		//_unit addmagazines [_mgrenade,2];		// Do not use with grenades
		_unit addmagazines [_smokegrenade,2];
	};
	// BACKPACK: LIGHT
	if (_loadout == 1) then {
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];		// Do not use with mgrenades
		//(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 3];	// Do not use with grenades
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
	};
	// BACKPACK: HEAVY
	if (_loadout == 2) then {
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 8];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag_tr, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 3];		// Do not use with mgrenades
		//(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 5];	// Do not use with grenades
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
	};
};

// BACKPACK: MMG GUNNER (MMG)
case "mmg":
{
	// NO BACKPACK
	if (_loadout == 0) then {
		_unit addmagazines [_MMGmag,1];
		_unit addmagazines [_grenade,1];		// Do not use with mgrenades
		//_unit addmagazines [_mgrenade,2];		// Do not use with grenades
		_unit addmagazines [_smokegrenade,1];
	};
	// BACKPACK: LIGHT
	if (_loadout == 1) then {
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];		// Do not use with mgrenades
		//(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];	// Do not use with grenades
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
	};
	// BACKPACK: HEAVY
	if (_loadout == 2) then {
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag_tr, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];		// Do not use with mgrenades
		//(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 3];	// Do not use with grenades
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
	};
};

// BACKPACK: MMG ASSISTANT GUNNER (MMGAG)
case "mmgag":
{
	// NO BACKPACK
	if (_loadout == 0) then {
		_unit addmagazines [_MMGmag,1];
		_unit addmagazines [_grenade,1];		// Do not use with mgrenades
		//_unit addmagazines [_mgrenade,2];		// Do not use with grenades
		_unit addmagazines [_smokegrenade,1];
	};
	// BACKPACK: LIGHT
	if (_loadout == 1) then {
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag_tr, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag_tr, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];		// Do not use with mgrenades
		//(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];	// Do not use with grenades
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
	};
	// BACKPACK: HEAVY
	if (_loadout == 2) then {
		_unit addBackpack _baglarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag_tr, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag, 3];
		(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag_tr, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];		// Do not use with mgrenades
		//(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 3];	// Do not use with grenades
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
	};
};

// BACKPACK: HEAVY MG GUNNER (HMGG)
case "hmgg":
{
	_unit addBackpack _baghmgg;
};

// BACKPACK: HEAVY MG ASSISTANT GUNNER (HMGAG)
case "hmgag":
{
	_unit addBackpack _baghmgag;
};

// BACKPACK: MAT GUNNER (MATG)
case "matg":
{
	// NO BACKPACK
	if (_loadout == 0) then {
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_MATmag1, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];		// Do not use with mgrenades
		//(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];	// Do not use with grenades
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
	};
	// BACKPACK: LIGHT
	if (_loadout == 1) then {
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_MATmag1, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];		// Do not use with mgrenades
		//(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];	// Do not use with grenades
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
	};
	// BACKPACK: HEAVY
	if (_loadout == 2) then {
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_MATmag1, 3];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];		// Do not use with mgrenades
		//(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];	// Do not use with grenades
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
	};
};

// BACKPACK: MAT ASSISTANT (MATAG)
case "matag":
    {
	// NO BACKPACK
	if (_loadout == 0) then {
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_MATmag1, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];		// Do not use with mgrenades
		//(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];	// Do not use with grenades
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
	};
	// BACKPACK: LIGHT
	if (_loadout == 1) then {
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_MATmag1, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];		// Do not use with mgrenades
		//(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 3];	// Do not use with grenades
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
	};
	// BACKPACK: HEAVY
	if (_loadout == 2) then {
		_unit addBackpack _baglarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_MATmag1, 3];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];		// Do not use with mgrenades
		//(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];	// Do not use with grenades
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 3];
	};
};

// LOADOUT: HEAVY AT GUNNER (HATG)
case "hatg":
{
	// LOADOUT: LIGHT
	if (_loadout == 0) then {
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_HATmag1, 1];
	};
	// LOADOUT: MEDIUM
	if (_loadout == 1) then {
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_HATmag1, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
	};
	// LOADOUT: HEAVY
	if (_loadout == 2) then {
		_unit addBackpack _baglarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_HATmag1, 3];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 3];
	};
};

// LOADOUT: HEAVY AT ASSISTANT GUNNER (HATAG)
case "hatag":
{
	// LOADOUT: LIGHT
	if (_loadout == 0) then {
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_HATmag1, 1];
	};
	// LOADOUT: MEDIUM
	if (_loadout == 1) then {
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_HATmag1, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
	};
	// LOADOUT: HEAVY
	if (_loadout == 2) then {
		_unit addBackpack _baglarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_HATmag1, 3];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 3];
	};
};

// BACKPACK: MORTAR GUNNER (MTRG)
case "mtrg":
{
	_unit addBackpack _bagmtrg;
};

// BACKPACK: MORTAR ASSISTANT GUNNER (MTRAG)
case "mtrag":
{
	_unit addBackpack _bagmtrag;
};

// BACKPACK: MEDIUM SAM GUNNER (MSAMG)
case "msamg":
{
	_unit addBackpack _bagmedium;
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) addMagazineCargoGlobal [_SAMmag, 2];
};

// BACKPACK: MEDIUM SAM ASSISTANT GUNNER (MSAMAG)
case "msamag":
{
	_unit addBackpack _bagmedium;
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) addMagazineCargoGlobal [_SAMmag, 2];
};

// BACKPACK: HEAVY SAM GUNNER (HSAMG)
case "hsamg":
{
	_unit addBackpack _baghsamg;
};

// BACKPACK: HEAVY SAM ASSISTANT GUNNER (HSAMAG)
case "hsamag":
{
	_unit addBackpack _baghsamag;
};

// BACKPACK: ENGINEER (DEMO)
case "eng":
{
	// NO BACKPACK
	if (_loadout == 0) then {
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal ["ToolKit",1];
	};
	// BACKPACK: LIGHT
	if (_loadout == 1) then {
		_unit addBackpack _baglarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal ["ToolKit",1];
		(unitBackpack _unit) addItemCargoGlobal [_satchel,2];
	};
	// BACKPACK: HEAVY
	if (_loadout == 2) then {
		_unit addBackpack _baglarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal ["ToolKit",1];
		(unitBackpack _unit) addItemCargoGlobal [_satchel,4];
	};
};

// BACKPACK: ENGINEER (MINES)
case "engm":
{
	// NO BACKPACK
	if (_loadout == 0) then {
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal ["ToolKit",1];
	};
	// BACKPACK: LIGHT
	if (_loadout == 1) then {
		_unit addBackpack _baglarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal ["ToolKit",1];
		(unitBackpack _unit) addMagazineCargoGlobal [_ATmine,1];
	};
	// BACKPACK: HEAVY
	if (_loadout == 2) then {
		_unit addBackpack _baglarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal ["ToolKit",1];
		(unitBackpack _unit) addMagazineCargoGlobal [_ATmine,2];
	};
};

// BACKPACK: SUBMACHINEGUNNER (SMG)
case "smg":
{
	// NO BACKPACK
	if (_loadout == 0) then {
		_unit addmagazines [_smgmag,2];
		_unit addmagazines [_grenade,1];		// Do not use with mgrenades
		//_unit addmagazines [_mgrenade,2];		// Do not use with grenades
		_unit addmagazines [_smokegrenade,2];
	};
	// BACKPACK: LIGHT
	if (_loadout == 1) then {
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_smgmag, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];		// Do not use with mgrenades
		//(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 3];	// Do not use with grenades
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
	};
	// BACKPACK: HEAVY
	if (_loadout == 2) then {
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_smgmag, 8];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 3];		// Do not use with mgrenades
		//(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 5];	// Do not use with grenades
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 4];
	};
};

// BACKPACK: DIVER (DIV)
case "div":
{
	// BACKPACK: LIGHT
	if (_loadout == 1) then {
		_unit addBackpack _bagmediumdiver;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_diverMag1, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_diverMag2, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];		// Do not use with mgrenades
		//(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 3];	// Do not use with grenades
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
	};
	// BACKPACK: HEAVY
	if (_loadout == 2) then {
		_unit addBackpack _bagmediumdiver;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_diverMag1, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_diverMag2, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 3];		// Do not use with mgrenades
		//(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 5];	// Do not use with grenades
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 4];
	};
};

// BACKPACK: UAV
case "uav":
{
	_unit addBackpack _baguav;
};

// BACKPACK: CREW CHIEFS & VEHICLE DRIVERS
case "cc":
{
	_unit addBackpack _bagsmall;
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) addItemCargoGlobal ["ToolKit",1];
};