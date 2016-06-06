// ====================================================================================

// F3 - Disable Saving and Auto Saving
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

enableSaving [false, false];

// ====================================================================================

// F3 - Mute Orders and Reports
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

enableSentences false;

// ====================================================================================

// F3 - MapClick Teleport
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

// f_var_mapClickTeleport_Uses = 0;					// How often the teleport action can be used. 0 = infinite usage.
// f_var_mapClickTeleport_TimeLimit = 0; 			// If higher than 0 the action will be removed after the given time.
// f_var_mapClickTeleport_GroupTeleport = false; 	// False: everyone can teleport. True: Only group leaders can teleport and will move their entire group.
// f_var_mapClickTeleport_Units = [];				// Restrict map click teleport to these units
// f_var_mapClickTeleport_Height = 0;				// If > 0 map click teleport will act as a HALO drop and automatically assign parachutes to units
// [] execVM "f\mapClickTeleport\f_mapClickTeleportAction.sqf";

// ====================================================================================

// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

f_script_briefing = [] execVM "briefing.sqf";

// ====================================================================================

// F3 - F3 Folk ARPS Group IDs
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

f_script_setGroupIDs = [] execVM "f\setGroupID\f_setGroupIDs.sqf";

// ====================================================================================

// F3 - Buddy Team Colours
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

f_script_setTeamColours = [] execVM "f\setTeamColours\f_setTeamColours.sqf";

// ====================================================================================

// F3 - Fireteam Member Markers
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[] spawn f_fnc_SetLocalFTMemberMarkers;

// ====================================================================================

// F3 - F3 Folk ARPS Group Markers
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

f_script_setGroupMarkers = [] execVM "f\groupMarkers\f_setLocalGroupMarkers.sqf";

// ====================================================================================

// F3 - F3 Common Local Variables
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// WARNING: DO NOT DISABLE THIS COMPONENT
if(isServer) then {
	f_script_setLocalVars = [] execVM "f\common\f_setLocalVars.sqf";
};

// ====================================================================================

// F3 - Automatic Body Removal
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

f_var_removeBodyDelay = 120;
f_var_removeBodyDistance = 360;
f_var_doNotRemoveBodies = [];
[] execVM "f\removeBody\f_addRemoveBodyEH.sqf";

// ====================================================================================

// F3 - Dynamic View Distance
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

// f_var_viewDistance_default = 1250;
// f_var_viewDistance_tank = 2000;
// f_var_viewDistance_car = 2000;
// f_var_viewDistance_rotaryWing = 2500;
// f_var_viewDistance_fixedWing = 5000;
// f_var_viewDistance_crewOnly = true;
// [] execVM "f\dynamicViewDistance\f_setViewDistanceLoop.sqf";

// ====================================================================================

// F3 - Authorised Crew Check
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

// VehicleName addEventhandler ["GetIn", {[_this,[UnitName1,UnitName2],false] call f_fnc_authorisedCrewCheck}];
// VehicleName addEventhandler ["GetIn", {[_this,["UnitClass1","UnitClass2"],false] call f_fnc_authorisedCrewCheck}];

// ====================================================================================

// F3 - Casualties Cap
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

// [[GroupName or SIDE],100,1] execVM "f\casualtiesCap\f_CasualtiesCapCheck.sqf";
// [[GroupName or SIDE],100,{code}] execVM "f\casualtiesCap\f_CasualtiesCapCheck.sqf";

// BLUFOR > NATO
// [BLUFOR,100,1] execVM "f\casualtiesCap\f_CasualtiesCapCheck.sqf";

// OPFOR > CSAT
// [OPFOR,100,1] execVM "f\casualtiesCap\f_CasualtiesCapCheck.sqf";

// INDEPENDENT > AAF
// [INDEPENDENT,100,1] execVM "f\casualtiesCap\f_CasualtiesCapCheck.sqf";

// ====================================================================================

// F3 - AI Skill Selector
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)


f_var_civAI = independent; // Optional: The civilian AI will use this side's settings
[] execVM "f\setAISKill\f_setAISkill.sqf";

// ====================================================================================

// F3 - Assign Gear AI
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

// [] execVM "f\assignGear\f_assignGear_AI.sqf";

// ====================================================================================

// F3 - Name Tags
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[] execVM "f\nametag\f_nametags.sqf";

// ====================================================================================

// F3 - Group E&E Check
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

// [side,ObjectName or "MarkerName",100,1] execVM "f\EandEcheck\f_EandECheckLoop.sqf";
// [["Grp1","Grp2"],ObjectName or "MarkerName",100,1] execVM "f\EandEcheck\f_EandECheckLoop.sqf";

// ====================================================================================

// F3 - ORBAT Notes
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[] execVM "f\briefing\f_orbatNotes.sqf";

// ====================================================================================

// F3 - Loadout Notes
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[] execVM "f\briefing\f_loadoutNotes.sqf";

// ====================================================================================

// F3 - Join Group Action
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[false] execVM "f\groupJoin\f_groupJoinAction.sqf";

// ====================================================================================

// F3 - Mission Timer/Safe Start
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[] execVM "f\safeStart\f_safeStart.sqf";

// ====================================================================================

// F3 - JIP setup
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

f_var_JIP_FirstMenu = false;		// Do players connecting for the first time get the JIP menu? - This only works in missions with respawn.
f_var_JIP_RemoveCorpse = false;		// Remove the old corpse of respawning players?
f_var_JIP_GearMenu = true;			// Can JIP/respawned players select their own gear? False will use gear assigned by F3 Gear Component if possible

// ====================================================================================

// F3 - AI Unit Caching
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[30] spawn f_fnc_cInit;

// Note: Caching aggressiveness is set using the f_var_cachingAggressiveness variable; possible values:
// 1 - cache only non-leaders and non-drivers
// 2 - cache all non-moving units, always exclude vehicle drivers
// 3 - cache all units, incl. group leaders and vehicle drivers
f_var_cachingAggressiveness = 2;

// ====================================================================================

// F3 - Radio Systems Support
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[] execVM "f\radios\radio_init.sqf";

// ====================================================================================

// F3 - Medical Systems Support
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

// SWS Config Settings
// How many extra FirstAidKits (FAKS) each player should receive when using the F3 Simple Wounding System:
f_wound_extraFAK = 2;

[] execVM "f\medical\medical_init.sqf";

// ====================================================================================

towns = ["town"] call ws_fnc_collectMarkers;
bases = ["base"] call ws_fnc_collectMarkers;

[] execVM "ambientCivs.sqf";
[] execVM "townPatrols.sqf";
[] execVM "basePatrols.sqf";
[] execVM "reinforcements.sqf";
[] execVM "victoryChecker.sqf";

if (hasInterface) then {
    waitUntil {!isNull player};
    deviceTask = player createSimpleTask ["Find and capture the device"];
    deviceTask setSimpleTaskDescription ["The AAF keep the device on a truck and move it regularly for fear of it being captured by the FIA. Luckily, the device emits a distinctive EM signature that can be detected at short ranges.<br/><br/>Each of you is equipped with a scanner than can detect this field within 2km and display an approximate distance to the device. Note that this scanner requires you to be on foot and stand still to use it.","Find and capture the device",""];
    _fuelTask = player createSimpleTask ["Find and capture a fuel truck"];
    _fuelTask setSimpleTaskDescription ["These choppers can use pretty much anything as fuel, so acquiring some from the civilian population is probably going to be our best bet. Try the <marker name='fuel'>fuel stations</marker>, and be on the lookout for fuel trucks making deliveries.","Find and capture a fuel truck",""];
    _repairTask = player createSimpleTask ["Find and capture a repair truck"];
    _repairTask setSimpleTaskDescription ["Only the AAF will have the parts we need to repair the chopper, so we'll have to attack an <marker name='base_4'>AAF base</marker> to find a truck carrying those parts.","Find and capture a repair truck",""];
    _escapeTask = player createSimpleTask ["Slingload the device off the island"];
    _escapeTask setSimpleTaskDescription ["Once we've gotten our chopper working and captured the device, all we have to do is slingload it off the island.","Slingload the device off the island",""];
    if (side player == west) then {
        _marker = createMarkerLocal ["chopper",position natoChopper];
        _marker setMarkerShapeLocal "ICON";
        _marker setMarkerTextLocal "Our chopper";
        _marker setMarkerTypeLocal "mil_dot";
    };
    if (side player == east) then {
        _marker = createMarkerLocal ["chopper",position csatChopper];
        _marker setMarkerShapeLocal "ICON";
        _marker setMarkerTextLocal "Our chopper";
        _marker setMarkerTypeLocal "mil_dot";
    };
    player addAction ["Scan for device",{
        _this select 1 spawn {
            titleText ["Scanning... stand still!","PLAIN",.5];
            _moved = false;
            _t0 = time;
            waitUntil {
                if (vectorMagnitude velocity _this > 0) then {
                    _moved = true;
                };
                _moved || (time - _t0) > 10
            };
            if (_moved) then {
                titleText ["You moved! Try again.","PLAIN",.5];
            } else {
                _distance = (_this distance thedevice) - 20 + random 40;
                if (_distance < 2000) then {
                    titleText [format ["Target Located! %1 meters away.",floor _distance],"PLAIN",.5];
                    _marker = createMarker [format ["ping%1",random 1],position _this];
                    _marker setMarkerShape "ELLIPSE";
                    _marker setMarkerBrush "Border";
                    [[_marker,side _this,_distance],{
                        if (side player == (_this select 1)) then {
                            _this select 0 setMarkerSizeLocal [_this select 2,_this select 2];
                        };
                    }] remoteExec ["BIS_fnc_call"];
                    _t0 = time;
                    waitUntil {
                        _marker setMarkerAlpha (1 - ((time - _t0) / 90));
                        time - _t0 > 90;
                    };
                    deleteMarker _marker;
                } else {
                    titleText [format ["Target not in range.",floor _distance],"PLAIN",.5];
                };
            };
        };
    },nil,1.5,false,true,"","vehicle _this == _this && vectorMagnitude velocity _this == 0"];
};
