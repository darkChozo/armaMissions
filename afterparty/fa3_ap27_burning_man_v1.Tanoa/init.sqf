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

//[] execVM "f\safeStart\f_safeStart.sqf";

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
[civilian,100,1] execVM "f\casualtiesCap\f_CasualtiesCapCheck.sqf";

// OPFOR > CSAT
// [OPFOR,100,1] execVM "f\casualtiesCap\f_CasualtiesCapCheck.sqf";

// INDEPENDENT > AAF
// [INDEPENDENT,100,1] execVM "f\casualtiesCap\f_CasualtiesCapCheck.sqf";

setTimeMultiplier .01;

if (isServer) then {
	[] spawn {
		sleep 10;
		"LeadTrack02a_F_EPB" remoteExec ["playMusic"];
		sleep 200;
		"LeadTrack03_F_EPB" remoteExec ["playMusic"];
		sleep 10;
		stageone = true;
		publicVariable "stageone";
		for "_i" from 0 to 40 step 8 do {
			sleep 36;
			stageCounter = _i;
			publicVariable "stagecounter";
		};
		"LeadTrack02b_F_EPB" remoteExec ["playMusic"];
		for "_i" from 40 to 120 step 8 do {
			sleep 10;
			stageCounter = _i;
			publicVariable "stagecounter";
		};
		sleep 50;
		[2] call f_fnc_mpend;
	};
};

_walls = allMissionObjects "Land_TinWall_02_l_8m_F";



_walls spawn {
	_fire = [["\A3\data_f\ParticleEffects\Universal\Universal.p3d",16,10, 32,1],
			 "",
			 "Billboard",
			 2,
			 5, // lifetime
			 [0, 0, 0.5],//position
			 [0, 0, 1],//velocity
			 0,
			 1.275,
			 1,
			 0.066,
			 [4],// scale
			 [[1,1,1,1]],//color
			 [.3], //anim speed
			 1, 0, "", "", nil,
			 0,false,-1,[[1,1,1,1]]];
	waitUntil {!isNil {stageone}};
	{
		_part = "#particleSource" createVehicleLocal position _x;
		_part setParticleParams _fire;
		_part setParticleRandom [1,[4,4,0],[0,0,.2],0,.2,[0,0,0,0],0,0];
		_part setDropInterval .1;
		_part setParticleFire [.1,6,.05];
		_light = "#lightpoint" createVehicleLocal position _part;
		_light lightAttachObject [_part,[0,0,3]];
		_light setLightColor [1,.2,0];
		_light setLightDayLight true;
		_light setLightBrightness 1;
	} forEach _this;
	
	waitUntil {!isNil {stagecounter}};
	for "_i" from 0 to 120 step 8 do {
		waitUntil {stagecounter >= _i};
		for "_j" from 0 to 100 step 8 do {
			_part = "#particleSource" createVehicleLocal ([[fireStarter,_j,225] call BIS_fnc_relPos,_i,315] call BIS_fnc_relPos);
			_part setParticleParams _fire;
			_part setParticleRandom [1,[4,4,0],[0,0,.2],0,.2,[0,0,0,0],0,0];
			_part setDropInterval .1;
			_part setParticleFire [.1,6,.05];
			_light = "#lightpoint" createVehicleLocal position _part;
			_light lightAttachObject [_part,[0,0,3]];
			_light setLightColor [1,.2,0];
			_light setLightDayLight true;
			_light setLightBrightness 1;
		};
	};
};

if (hasInterface) then {
	waitUntil {!isNull player};
		[] spawn {
			sleep 3;
			onCooldown = false;
			if (player == badman) then {
				//systemchat 'adding action';
				(findDisplay 46) displayAddEventHandler ["MouseButtonDown", "
					if (_this select 1 == 0 && !onCooldown) then {
						createVehicle ['DemoCharge_Remote_Ammo_Scripted',player modelToWorld [0,2,1],[],0,'CAN_COLLIDE'] setDamage 1;
						onCooldown = true;
						[] spawn {sleep 5; onCooldown = false};
					};
					"];
			};
		};
};

_part = "#particleSource" createVehicleLocal position badman;
_part attachTo [badman,[0,0,.5]];
_part setParticleClass "ObjectDestructionFire1Smallx";
_part = "#particleSource" createVehicleLocal position badman;
_part attachTo [badman,[0,0,.5]];
_part setParticleClass "ObjectDestructionSmoke1_2Smallx";

_light = "#lightpoint" createVehicleLocal position badman;
_light lightAttachObject [badman,[0,0,2]];
_light setLightColor [1,.2,0];
_light setLightDayLight true;
_light setLightBrightness 1;
_light spawn {
	while {true} do {
		_this setLightBrightness (.95 + random .1);
		sleep .05;
	}
};
firelight = _light;

createSoundSource ["Sound_Fire",position badman,[],0] attachTo [badman,[0,0,0]];

_light = "#lightpoint" createVehicleLocal position badman;
_light setLightAmbient [.4,.4,1];
_light setLightDayLight true;
_light setLightAttenuation [10000,.01,.01,.01,10000,10000];
_light setLightBrightness .07;
daylight = _light;

