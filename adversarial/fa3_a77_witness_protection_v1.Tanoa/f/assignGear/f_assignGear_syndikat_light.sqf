// F3 - Folk ARPS Assign Gear Script - AAF - Light Loadout
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// DEFINE UNIT TYPE LOADOUTS
// The following blocks of code define loadouts for each type of unit (the unit type
// is passed to the script in the first variable)

switch (_typeofUnit) do
{

// ====================================================================================

	case "inf":
	{
	};
	case "r":
	{
		_unit addmagazines [_riflemag, 1];
		_unit addweapon _rifle;
		_unit addItem _firstaid;
		_unit addmagazines [_smokegrenade, 1];
		_unit addmagazines [_riflemag, 5];
	};
	case "rpg":
	{
		_unit addmagazines [_riflemag, 1];
		_unit addweapon _rifle;
		_unit addItem _firstaid;
		_unit addmagazines [_riflemag, 5];
		_unit addBackpack _bag;
		(unitBackpack _unit) addMagazineCargoGlobal [_ratmag,3];
		_unit addWEapon _rat;
	};

// Include the loadouts for vehicles and crates:
#include "f_assignGear_syndikat_v.sqf";

// ====================================================================================

// END SWITCH FOR DEFINE UNIT TYPE LOADOUTS
};