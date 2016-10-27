if(missionNamespace getVariable ["r0ed_SurvivableCrashes_Initialized", false]) exitWith {};

[	true,  // Mod Enabled
	true,   //VFX
	true,   //SFX
	true,   // Exag FX
	"VANILLA", // Med Sys
	1,      // dmg Multi
	["Air","LandVehicle"],// Veh whitelist
	{},     // On Crash Code
	{
		params ["_unit"];
		sleep 16;
		if (var_crashBleedout == 1) then {
			if (damage _unit > .25 && !(_unit getVariable ["f_wound_down",false])) then {
				[_unit,true] call f_fnc_setDowned;
			};
		};
	},     // crew Post Crash code
	{       // veh post crash code
		params["_veh"];
		sleep (40 + random 40);
		_veh allowDamage true;
		_veh setDamage 1;
	}
] call compile preprocessFileLineNumbers "r0ed_SurvivableCrashes\functions\init\init_survivableCrashes.sqf"