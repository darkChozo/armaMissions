// F3 - Folk ARPS Assign Gear Script - AAF - Light Loadout
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// DEFINE UNIT TYPE LOADOUTS
// The following blocks of code define loadouts for each type of unit (the unit type
// is passed to the script in the first variable)

switch (_loadout) do
{

// ====================================================================================
// Automatic Rifleman Loadout:
	case 0:
	{
		_unit addmagazines ["16Rnd_9x21_Mag", 8];
		_unit addweapon "hgun_PDW2000_F";
		_unit addmagazines [_smokegrenade, 2];
	};
	case 1:
	{
		_unit addmagazines ["6Rnd_45ACP_Cylinder", 8];
		_unit addweapon "hgun_Pistol_heavy_02_F";
		_attachments pushback (_bipod1); // Adds the bipod
		_unit addmagazines [_smokegrenade, 2];
	};
	case 2:
	{
		_unit addBackpack "B_Carryall_oli";
		_unit addmagazines ["RPG7_F", 8];
		_unit addweapon "launch_RPG7_F";
		_unit addmagazines [_smokegrenade, 2];
	};
// ====================================================================================

// END SWITCH FOR DEFINE UNIT TYPE LOADOUTS
};