// F3 - Folk Group Markers
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// DECLARE VARIABLES AND FUNCTIONS

private ["_unitfaction"];

// ====================================================================================

// MAKE SURE THE PLAYER INITIALIZES PROPERLY

if (!isDedicated && (isNull player)) then
{
    waitUntil {sleep 0.1; !isNull player};
};

// ====================================================================================

// DETECT PLAYER FACTION
// The following code detects what faction the player's slot belongs to, and stores
// it in the private variable _unitfaction
if(count _this == 0) then
{
	_unitfaction = toLower (faction player);

	// If the unitfaction is different from the 	group leader's faction, the latters faction is used
	if (_unitfaction != toLower (faction (leader group player))) then {_unitfaction = toLower (faction (leader group player))};
}
else
{
	_unitfaction = (_this select 0);
};
// ====================================================================================

// ====================================================================================

// MARKERS: BLUFOR > NATO
// Markers seen by players in NATO slots.

		["GrpFIA_CO", 0, "CO", "ColorYellow"] spawn f_fnc_localGroupMarker;
		["GrpFIA_DC", 0, "DC", "ColorYellow"] spawn f_fnc_localGroupMarker;
		["GrpFIA_COV", 7, "COV", "ColorYellow"] spawn f_fnc_localGroupMarker;

		["GrpFIA_ASL", 0, "ASL", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpFIA_A1", 1, "A1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpFIA_A2", 1, "A2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpFIA_AV", 7, "AV", "ColorRed"] spawn f_fnc_localGroupMarker;

		["GrpFIA_BSL", 0, "BSL", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpFIA_B1", 1, "B1", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpFIA_B2", 1, "B2", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpFIA_BV", 7, "BV", "ColorBlue"] spawn f_fnc_localGroupMarker;

		["GrpFIA_CSL", 0, "CSL", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpFIA_C1", 1, "C1", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpFIA_C2", 1, "C2", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpFIA_CV", 7, "CV", "ColorGreen"] spawn f_fnc_localGroupMarker;

		["GrpFIA_JSL", 0, "JSL", "ColorPink"] spawn f_fnc_localGroupMarker;
		["GrpFIA_J1", 1, "J1", "ColorPink"] spawn f_fnc_localGroupMarker;
		["GrpFIA_J2", 1, "J2", "ColorPink"] spawn f_fnc_localGroupMarker;
		["GrpFIA_JV", 7, "JV", "ColorPink"] spawn f_fnc_localGroupMarker;

		["GrpFIA_MMG1", 2, "MMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_MMG2", 2, "MMG2", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_HMG1",  2, "HMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_MAT1", 3, "MAT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_MAT2", 3, "MAT2", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_HAT1",  3, "HAT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_MTR1",  5, "MTR1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_MSAM1",  3, "MSAM1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_HSAM1",  3, "HSAM1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_ST1",  4, "ST1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_DT1",  4, "DT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_ENG1",  6, "ENG1", "ColorOrange"] spawn f_fnc_localGroupMarker;

 		["GrpFIA_IFV1",  7, "TECH1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpFIA_IFV2",  7, "TECH2", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpFIA_TNK1",  8, "TNK1", "ColorRed"] spawn f_fnc_localGroupMarker;

		["GrpFIA_TH1",  9, "TH1", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpFIA_TH2",  9, "TH2", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpFIA_TH3",  9, "TH3", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpFIA_TH4",  9, "TH4", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpFIA_TH5",  9, "TH5", "ColorGreen"] spawn f_fnc_localGroupMarker;
  		["GrpFIA_TH6",  9, "TH6", "ColorGreen"] spawn f_fnc_localGroupMarker;
   		["GrpFIA_TH7",  9, "TH7", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_TH8",  9, "TH8", "ColorOrange"] spawn f_fnc_localGroupMarker;

		["GrpFIA_AH1",  9, "AH1", "ColorRed"] spawn f_fnc_localGroupMarker;

		["UnitFIA_CO_M", 0, "COM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitFIA_DC_M", 0, "DCM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitFIA_ASL_M", 0, "AM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitFIA_BSL_M", 0, "BM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitFIA_CSL_M", 0, "CM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
