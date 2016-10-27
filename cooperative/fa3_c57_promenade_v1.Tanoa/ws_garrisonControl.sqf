if ((isNil "hc" && !isServer) || (!isNil "hc" && (isServer || hasInterface))) exitWith {};

_garrisons = ["garrisonLogic"] call ws_fnc_collectObjects;
_units = [];
_groups = [];
{
_unitsx = ((_x getVariable "ws_garrisonSettings") call ws_fnc_createGarrison);
_units append _unitsx;
_groups append [group (_unitsx select 0)];
} forEach _garrisons;

[_units,"f\setAISkill\f_setAISkill.sqf"] remoteExec ["BIS_fnc_execVM",2];
[_units,"f\assignGear\f_assignGear_AI.sqf"] remoteExec ["BIS_fnc_execVM",2];
