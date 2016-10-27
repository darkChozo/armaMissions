// F3 - Folk ARPS Assign Gear Script - AAF - Light Loadout
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// DEFINE UNIT TYPE LOADOUTS
// The following blocks of code define loadouts for each type of unit (the unit type
// is passed to the script in the first variable)

switch (_typeofUnit) do
{

// ====================================================================================

	case "ar":
	{
		_unit addmagazines ["100Rnd_580x42_Mag_F", 4];
		_unit addweapon "arifle_CTARS_blk_F";
		_unit addmagazines [_grenade, 1];
		_unit addmagazines [_smokegrenade, 2];
	};

	case "r":
	{
		if (random 1 < .6) then {
			_unit addMagazines ["30Rnd_762x39_Mag_Green_F",7];
			_unit addWeapon "arifle_AKM_F";
		} else {
			_unit addMagazines ["30Rnd_545x39_Mag_Green_F",7];
			_unit addWeapon "arifle_AKS_F";
		};
		_unit addmagazines [_grenade, 2];
		_unit addmagazines [_smokegrenade, 2];
	};

	case "rat":
	{
		_unit addBackpack _bag;
		
		_unit addMagazines ["30Rnd_545x39_Mag_Green_F",7];
		_unit addWeapon "arifle_AKS_F";
		_unit addMagazine ["RPG7_F",2];
		_unit addWeapon "launch_RPG7_F";
		_unit addMagazine ["RPG7_F",3];
		_unit addmagazines [_smokegrenade, 1];
	};

	case "ftl":
	{
		_unit addMagazines ["30Rnd_762x39_Mag_Green_F",7];
		_unit addWeapon "arifle_AKM_F";
		_unit addmagazines [_grenade, 2];
		_unit addmagazines [_smokegrenade, 2];
		_unit addWeapon "Binocular";
		_unit linkItem "ItemGPS";
		_unit selectWeapon "Binocular";
	};
// ====================================================================================

// END SWITCH FOR DEFINE UNIT TYPE LOADOUTS
};