// ====================================================================================

// F3 - Common Local Variables
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// WARNING: DO NOT DISABLE THIS COMPONENT
if(isServer) then {
	f_script_setLocalVars = [] execVM "f\common\f_setLocalVars.sqf";
};

// ====================================================================================

// F3 - Medical Systems Support
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

// SWS Config Settings
// How many extra FirstAidKits (FAKS) each player should receive when using the F3 Simple Wounding System:
f_wound_extraFAK = 2;

[] execVM "f\medical\medical_init.sqf";

// ====================================================================================

// F3 - Radio Systems Support
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[] execVM "f\radios\radio_init.sqf";

// ====================================================================================

// F3 - JIP setup
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

f_var_JIP_FirstMenu = false;		// Do players connecting for the first time get the JIP menu? - This only works in missions with respawn.
f_var_JIP_RemoveCorpse = false;		// Remove the old corpse of respawning players?
f_var_JIP_GearMenu = true;			// Can JIP/respawned players select their own gear? False will use gear assigned by F3 Gear Component if possible

// ====================================================================================

// F3 - Disable Saving and Auto Saving
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

enableSaving [false, false];

// ====================================================================================

// F3 - Mute Orders and Reports
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

{_x setSpeaker "NoVoice"} forEach playableUnits;

// ====================================================================================

// F3 - Mission Timer/Safe Start
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[] execVM "f\safeStart\f_safeStart.sqf";

// ====================================================================================

// F3 - F3 Mission Conditions Selector
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

f_script_setMissionConditions = [] execVM "f\missionConditions\f_setMissionConditions.sqf";

// ====================================================================================

// F3 - Folk ARPS Group IDs
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

f_script_setGroupIDs = [] execVM "f\setGroupID\f_setGroupIDs.sqf";

// ====================================================================================

// F3 - F3 Folk ARPS Group Markers
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

f_script_setGroupMarkers = [] execVM "f\groupMarkers\f_setLocalGroupMarkers.sqf";

// ====================================================================================

// F3 - Buddy Team Colours
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

f_script_setTeamColours = [] execVM "f\setTeamColours\f_setTeamColours.sqf";

// ====================================================================================

// F3 - Fireteam Member Markers
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[] spawn f_fnc_SetLocalFTMemberMarkers;

// ====================================================================================

// F3 - Join Group Action
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[false] execVM "f\groupJoin\f_groupJoinAction.sqf";

// ====================================================================================

// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

f_script_briefing = [] execVM "briefing.sqf";

// ====================================================================================

// F3 - ORBAT Notes
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[] execVM "f\briefing\f_orbatNotes.sqf";

// ====================================================================================

// F3 - Loadout Notes
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[] execVM "f\briefing\f_loadoutNotes.sqf";

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

// F3 - Automatic Body Removal
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

f_var_removeBodyDelay = 180;
f_var_removeBodyDistance = 500;
f_var_doNotRemoveBodies = [];
[] execVM "f\removeBody\f_addRemoveBodyEH.sqf";

// ====================================================================================

// F3 - AI Skill Selector
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

// f_var_civAI = independent; 		// Optional: The civilian AI will use this side's settings
// [] execVM "f\setAISKill\f_setAISkill.sqf";

// ====================================================================================

// F3 - Assign Gear AI
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

// [] execVM "f\assignGear\f_assignGear_AI.sqf";

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

// F3 - MapClick Teleport
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

// f_var_mapClickTeleport_Uses = 0;					// How often the teleport action can be used. 0 = infinite usage.
// f_var_mapClickTeleport_TimeLimit = 0; 			// If higher than 0 the action will be removed after the given time.
// f_var_mapClickTeleport_GroupTeleport = false; 	// False: everyone can teleport. True: Only group leaders can teleport and will move their entire group.
// f_var_mapClickTeleport_Units = [];				// Restrict map click teleport to these units
// f_var_mapClickTeleport_Height = 0;				// If > 0 map click teleport will act as a HALO drop and automatically assign parachutes to units
// [] execVM "f\mapClickTeleport\f_mapClickTeleportAction.sqf";

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

// F3 - Casualties Cap
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

// [[GroupName or SIDE],100,1] execVM "f\casualtiesCap\f_CasualtiesCapCheck.sqf";
// [[GroupName or SIDE],100,{code}] execVM "f\casualtiesCap\f_CasualtiesCapCheck.sqf";

// BLUFOR > NATO
// [BLUFOR,100,1] execVM "f\casualtiesCap\f_CasualtiesCapCheck.sqf";

// OPFOR > CSAT
// [OPFOR,100,1] execVM "f\casualtiesCap\f_CasualtiesCapCheck.sqf";

// INDEPENDENT > AAF
[INDEPENDENT,100,{[2,false] call f_fnc_mpEnd}] execVM "f\casualtiesCap\f_CasualtiesCapCheck.sqf";

civilian setFriend [independent,0];
civilian setFriend [west,1];

targetIntelScore = 720;

theplane allowDamage false;
theplane addEventHandler ["HandleDamage",{
	if (_this select 4 isKindOf "M_Titan_AA") then {
		driver (_this select 0) setDamage 1;
		_this select 0 setDamage .9;
		if (count attachedObjects (_this select 0) == 0) then {
			"test_EmptyObjectForFireBig" createVehicle position (_this select 0) attachTo [_this select 0,[-11,.5,-1]];
			attachedObjects (_this select 0) select 0 spawn {sleep 120; deleteVehicle _this; };
		};
		_this select 0 setFuel 0;
		_this select 0 spawn {
			planeHit = true;
			publicVariable "planeHit";
			sleep 3;
			{ 
				_x action ["Eject",_this];
				group _x setBehaviour "COMBAT";
				group _x leaveVehicle _this;
			} forEach crew _this;
			waitUntil {vectorMagnitude velocity _this == 0};
			_this setPosASL (getPosASL _this vectorAdd [0,0,2]);
			_this setVectorUp [0,0,1];
			crashed = true;
			publicVariable "crashed";
		};
	};
	0
}];

[] spawn {
	for "i" from 1 to 20 do {
		player reveal theplane;
		sleep 10;
	};
};

[] spawn {
	waitUntil {!isNil {planeHit}};
	
	theplane setDamage .9;

	waitUntil {!isNil {crashed}};

	theplane setDamage .9;
	
	if (isServer) then {
		_debris = ["Land_HistoricalPlaneDebris_01_F","Land_HistoricalPlaneDebris_02_F","Land_HistoricalPlaneDebris_03_F","Land_HistoricalPlaneDebris_04_F","Land_WoodenBox_F","Land_WoodenBox_F"];
		for "_i" from 1 to 20 do {
			createVehicle [selectRandom _debris,
						   [position theplane,5 + random 25,random 360] call BIS_fnc_relPos,
						   [],
						   0,
						   "CAN_COLLIDE"] setDir random 360;
		};
	};
	
	{
		_patrol = _x;
		_patrol setBehaviour "AWARE";
		{
			_x setWPPos getPos theplane;
			_x setWaypointType "MOVE";
		} forEach waypoints _patrol;
	} forEach [patrol,patrol_1,patrol_2];
	
	_reins = ["reinforcement"] call ws_fnc_collectObjects;
	{
		_dirTo = [theplane,_x] call BIS_fnc_dirTo;
		waypoints group _x select (count waypoints group _x - 2) setWPPos ([getPos theplane,400 + random 100,_dirTo - 45 + random 90] call BIS_fnc_relPos);
		waypoints group _x select (count waypoints group _x - 1) setWPPos getPos theplane;
	} forEach _reins;
};


if (isServer) then {
	[] spawn {
		intelScore = 0;
		_gathering = false;
		while { intelScore < targetIntelScore } do {
			if ({_x distance theplane < 20} count playableUnits == 0) then {
				if (_gathering) then {
					["Alert",["Intel gathering interrupted"]] remoteExec ["BIS_fnc_showNotification"];
					_gathering = false;
				};
			} else {
				if (!_gathering) then {
					["Alert",["Started gathering intel"]] remoteExec ["BIS_fnc_showNotification"];
					_gathering = true;
				};
				intelScore = intelScore + .5;
				publicVariable "intelScore";
			};
			sleep .5;
		};
		["Alert",["That's enough! Let's get out of here!"]] remoteExec ["BIS_fnc_showNotification"];
	};
};

[west] call ws_fnc_betterVehicle;
[] execVM "ws_garrisonControl.sqf";