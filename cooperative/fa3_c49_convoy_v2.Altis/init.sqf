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
[INDEPENDENT,100,{[2,false] call f_fnc_mpEnd}] execVM "f\casualtiesCap\f_CasualtiesCapCheck.sqf";

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

player addEventHandler ["Killed",{playMusic ""}];
player addScore 100000; // just in case.....
allPlayersInThisList = compileFinal preprocessFile "allPlayersInThisList.sqf";

if (isNil "spawningDone") then {
    spawningDone = false;
};

if (isServer) then {
    survivorGroup = createGroup independent;

    waitUntil {scriptDone f_script_setLocalVars};
    actualSpawn = param_spawn;
    if (param_spawn == 0) then {
        actualSpawn = 1 + floor random 4;
    };
    publicVariable "actualSpawn";
    _spawns = format ["spawn_%1",actualSpawn] call ws_fnc_collectMarkers;
    ifvscript = compileFinal preprocessFileLineNumbers "ifv.sqf";
    publicVariable "ifvscript";
    
    _marker = createMarker ["startingPos",getMarkerPos (_spawns select 0)];
    _marker setMarkerShape "ICON";
    _marker setMarkerType "hd_start";
    _marker setMarkerText "Start";

    player sidechat format ["%1",_spawns];
    {
        if (!isNil {leader _x getVariable "vehType"}) then {
            _veh = objNull;
            _spawn = _spawns select 0;
            _spawns = _spawns - [_spawn];
            _vehType = leader _x getVariable "vehType";
            if (_vehType in ["cvic","vic"]) then {
                if (param_ifv == 0) then {
                    _veh = "I_APC_Wheeled_03_cannon_F" createVehicle getMarkerPos _spawn;
                };
                if (param_ifv == 1) then {
                    _veh = "I_APC_tracked_03_cannon_F" createVehicle getMarkerPos _spawn;
                };
                if (param_ifv == 2) then {
                    _veh = "I_MRAP_03_gmg_F" createVehicle getMarkerPos _spawn;
                };
                if (param_ifv == 3) then {
                    _veh = "C_Hatchback_01_sport_F" createVehicle getMarkerPos _spawn;
                };
                _veh setDir markerDir _spawn;
                if (_vehType == "cvic") then {
                    [[_veh,false],"ifvscript",true,true] call BIS_fnc_MP;
                    _veh removeWeaponTurret ["autocannon_30mm_CTWS",[0]];
                    _veh removeWeaponTurret ["autocannon_30mm",[0]];
                } else {
                    [_veh,"ifvscript",true,true] call BIS_fnc_MP;
                };
            } else {
                if (_vehType == "recon") then {
                    _veh = "I_MRAP_03_gmg_F" createVehicle  getMarkerPos _spawn;
                    _veh setDir markerDir _spawn;
                    [[_veh,false,false],"ifvscript",true,true] call BIS_fnc_MP;
                } else {
                    player sidechat "something's gone terribly wrong";
                };
            };
            for "_i" from 0 to (count units _x) - 1 do {
                _man = units _x select _i;
                _man setVehiclePosition [_veh,[],10,"NONE"];
                if (isNil {_man getVariable "assignedRole"}) then {_man setVariable ["assignedRole","cargo"]};
                switch (_man getVariable "assignedRole") do {
                    case ("commander") : {
                        _man assignAsCommander _veh;
                        _man moveInCommander _veh;
                        _man setVariable ["assignedVehicle",_veh,true];
                    };
                    case ("gunner") : {
                        _man assignAsGunner _veh;
                        _man moveInGunner _veh;
                        _man setVariable ["assignedVehicle",_veh,true];
                    };
                    case ("driver") : {
                        _man assignAsDriver _veh;
                        _man moveInDriver _veh;
                        _man setVariable ["assignedVehicle",_veh,true];
                    };
                    default {
                        _man assignAsCargo _veh;
                        _man moveInCargo _veh;
                        _man setVariable ["assignedVehicle",_veh,true];
                        _man setVariable ["assignedRole","cargo",true];
                    };
                };
            };
        };
    } forEach f_var_groups_RES;
    spawningDone = true;
    publicVariable "spawningDone";
};

waitUntil {spawningDone};

if (hasInterface) then {
    waitUntil {!isNil {player getVariable "assignedVehicle"}};
    player setVehiclePosition [player getVariable "assignedVehicle",[],10,"NONE"];
    switch (player getVariable "assignedRole") do {
        case "commander" : {
            player assignAsCommander (player getVariable "assignedVehicle");
            player moveInCommander (player getVariable "assignedVehicle");
            sleep .1;
            player assignAsCommander (player getVariable "assignedVehicle");
            player moveInCommander (player getVariable "assignedVehicle");
        };
        case "gunner" : {
            player assignAsGunner (player getVariable "assignedVehicle");
            player moveInGunner (player getVariable "assignedVehicle");
            sleep .1;
            player assignAsGunner (player getVariable "assignedVehicle");
            player moveInGunner (player getVariable "assignedVehicle");
        };
        case "driver" : {
            player assignAsDriver (player getVariable "assignedVehicle");
            player moveInDriver (player getVariable "assignedVehicle");
            sleep .1;
            player assignAsDriver (player getVariable "assignedVehicle");
            player moveInDriver (player getVariable "assignedVehicle");
        };
        case "cargo" : {
            player assignAsCargo (player getVariable "assignedVehicle");
            player moveInCargo (player getVariable "assignedVehicle");
            sleep .1;
            player assignAsCargo (player getVariable "assignedVehicle");
            player moveInCargo (player getVariable "assignedVehicle");
        };
    };
};

sleep 1;

// ====================================================================================

// F3 - Fireteam Member Markers
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[] spawn f_fnc_SetLocalFTMemberMarkers;

// ====================================================================================

// F3 - F3 Folk ARPS Group Markers
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

f_script_setGroupMarkers = [] execVM "f\groupMarkers\f_setLocalGroupMarkers.sqf";

// ====================================================================================

sleep 10;
if (hasInterface) then {
    switch (actualSpawn) do {
        case (1) : {
            ["Molos Airfield","Altis"] call ws_fnc_showIntro;
        };
        case (2) : {
            ["Near Selakano","Altis"] call ws_fnc_showIntro;
        };
        case (3) : {
            ["Athanos Outskirts","Altis"] call ws_fnc_showIntro;
        };
        case (4) : {
            ["Bomos","Altis"] call ws_fnc_showIntro;
        };
    };
};
