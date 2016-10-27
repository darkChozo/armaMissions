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

["GrpCTRG_CO", 0, "CO", "ColorYellow"] spawn f_fnc_localGroupMarker;
["GrpCTRG_DC", 0, "DC", "ColorYellow"] spawn f_fnc_localGroupMarker;
["GrpCTRG_COV", 7, "COV", "ColorYellow"] spawn f_fnc_localGroupMarker;

["GrpCTRG_ASL", 0, "ASL", "ColorRed"] spawn f_fnc_localGroupMarker;
["GrpCTRG_A1", 1, "A1", "ColorRed"] spawn f_fnc_localGroupMarker;
["GrpCTRG_A2", 1, "A2", "ColorRed"] spawn f_fnc_localGroupMarker;
["GrpCTRG_AV", 7, "AV", "ColorRed"] spawn f_fnc_localGroupMarker;

["GrpCTRG_BSL", 0, "BSL", "ColorBlue"] spawn f_fnc_localGroupMarker;
["GrpCTRG_B1", 1, "B1", "ColorBlue"] spawn f_fnc_localGroupMarker;
["GrpCTRG_B2", 1, "B2", "ColorBlue"] spawn f_fnc_localGroupMarker;
["GrpCTRG_BV", 7, "BV", "ColorBlue"] spawn f_fnc_localGroupMarker;

["GrpCTRG_CSL", 0, "CSL", "ColorGreen"] spawn f_fnc_localGroupMarker;
["GrpCTRG_C1", 1, "C1", "ColorGreen"] spawn f_fnc_localGroupMarker;
["GrpCTRG_C2", 1, "C2", "ColorGreen"] spawn f_fnc_localGroupMarker;
["GrpCTRG_CV", 7, "CV", "ColorGreen"] spawn f_fnc_localGroupMarker;

["GrpCTRG_JSL", 0, "JSL", "ColorPink"] spawn f_fnc_localGroupMarker;
["GrpCTRG_J1", 1, "J1", "ColorPink"] spawn f_fnc_localGroupMarker;
["GrpCTRG_J2", 1, "J2", "ColorPink"] spawn f_fnc_localGroupMarker;
["GrpCTRG_JV", 7, "JV", "ColorPink"] spawn f_fnc_localGroupMarker;

["UnitCTRG_CO_M", 0, "COM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
["UnitCTRG_DC_M", 0, "DCM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
["UnitCTRG_ASL_M", 0, "AM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
["UnitCTRG_BSL_M", 0, "BM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
["UnitCTRG_CSL_M", 0, "CM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;

["GrpNATO_TNK1",  8, "TNK1", "ColorKhaki"] spawn f_fnc_localGroupMarker;
["GrpNATO_TNK2",  8, "TNK2", "ColorKhaki"] spawn f_fnc_localGroupMarker;
["GrpNATO_TNK3",  8, "TNK3", "ColorKhaki"] spawn f_fnc_localGroupMarker;
["GrpNATO_TNK4",  8, "TNK4", "ColorKhaki"] spawn f_fnc_localGroupMarker;
["GrpNATO_TNK5",  8, "TNK5", "ColorKhaki"] spawn f_fnc_localGroupMarker;
["GrpNATO_TNK6",  8, "TNK6", "ColorKhaki"] spawn f_fnc_localGroupMarker;

["GrpNATO_RCN", 4, "RCN", "ColorBlack"] spawn f_fnc_localGroupMarker;

// ====================================================================================


