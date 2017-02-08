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
[BLUFOR,100,1] execVM "f\casualtiesCap\f_CasualtiesCapCheck.sqf";

// OPFOR > CSAT
// [OPFOR,100,1] execVM "f\casualtiesCap\f_CasualtiesCapCheck.sqf";

// INDEPENDENT > AAF
[INDEPENDENT,100,2] execVM "f\casualtiesCap\f_CasualtiesCapCheck.sqf";

_supplies = ["supplies"] call ws_fnc_collectObjects;

{
	if (isServer) then {
		_x setVariable ["supplyBurnt",false,true];
	};
	
	fnc_burnBox = {
		_box = _this select 0;
		_box setVariable ["supplyBurnt",true];
		if (hasInterface) then {
			_light = "#lightpoint" createVehicleLocal position _box;
			_light attachTo [_box,[0,0,0]];
			_light setLightColor [1,.4,.2];
			_light setLightBrightness .3;
			_light setLightDayLight true;

			_fire = "#particlesource" createVehicleLocal position _box;
			_fire setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal", 16, 10, 32,1], "", "Billboard", 1, 1.5, [0, 0, 0], [0, 0, 1], 0, 1.275, 1, 0.066, [1.75,.2], [[1, 1, 1, .8],[1, 1, 1, 0]], [1], 1, 0, "", "", _box,0,false,-1,[[1, 1, 1, .8],[1, 1, 1, 0]]];
			_fire setParticleRandom [.1,[0,0,.1],[0,0,.1],1,.2,[0,0,0,0],0,0,180];
			_fire setDropInterval .08;
			_fire setParticleFire [.02,1.75,.1];

			_smoke = "#particlesource" createVehicleLocal position _box;
			_smoke setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal", 16, 7, 48,1], "", "Billboard", 1, 15, [0, 0, 0], [0, 0, 1], 0, 1.275, 1, 0.066, [.5,8], [[.2, .2, .2, .6],[.2, .2, .2, 0]], [1], 1, 0, "", "", _box];
			_smoke setParticleRandom [.1,[0,0,.1],[0,0,.1],1,.2,[0,0,0,0],0,0,180];
			_smoke setDropInterval .15;

			_fireSound = objNull;
			if (isServer) then {
				_firesound = createSoundSource ["Sound_Fire",position _box,[],0];
			};
			
			[_box,_light,_fire,_smoke,_fireSound] spawn {
				params ["_box","_light","_fire","_smoke","_fireSound"];
				sleep 60;
				deleteVehicle _fire;
				deleteVehicle _fireSound;
				deleteVehicle _light;
				if (isServer) then {_box setDamage 1;};
				sleep 180;
				deleteVehicle _smoke;
			};
		};
	};
	
	if (hasInterface) then {
		[
			_x,                                                                           // Object the action is attached to
			"Burn Supplies",                                                                       // Title of the action
			"fire.paa",                      // Idle icon shown on screen
			"fire.paa",                      // Progress icon shown on screen
			"_this distance _target < 3 && !(_target getVariable ""supplyBurnt"")",                                                        // Condition for the action to be shown
			"_caller distance _target < 3 && !(_target getVariable ""supplyBurnt"")",                                                      // Condition for the action to progress
			{},                                                                                  // Code executed when action starts
			{if ((_this select 4) % 3 == 1) then {
				playSound3d [([(str missionConfigFile), 0, -15] call BIS_fnc_trimString) + format ["lighter%1.ogg",ceil random 4],_this select 0,false,getPosASL (_this select 0),4,1,15];
			}},                                                                                  // Code executed on every progress tick
			{_this remoteExec ["fnc_burnBox"]},                                                // Code executed on completion
			{},                                                                                  // Code executed on interrupted
			[],                                                                                  // Arguments passed to the scripts as _this select 3
			12,                                                                                  // Action duration [s]
			6,                                                                                   // Priority
			true,                                                                                // Remove on completion
			false                                                                                // Show in unconscious state 
		] call BIS_fnc_holdActionAdd;                                  // example for MP compatible implementation
	};
} forEach _supplies;

if (isServer) then {
	_supplies spawn {
		waitUntil {sleep .5; count _this == {_x getVariable "supplyBurnt"} count _this};
		sleep 1;
		[1] call f_fnc_mpEnd;
	};
};


{
	_x addEventHandler ["Fired",{
		if (local (_this select 0) && ["srifle_DMR_06",currentWeapon (_this select 0)] call BIS_fnc_inString) then {
			_mag = [];
			{
				if (_x select 4 == currentMuzzle (_this select 0)) then {_mag = _x};
			} forEach magazinesAmmoFull (_this select 0);

			_this select 0 setAmmo [currentWeapon (_this select 0),0];
			
			if (_mag select 1 > 1) then {
				_this select 0 addMagazine [_mag select 0,(_mag select 1) - 1];
			};
		};
	}];
} forEach playableUnits;
