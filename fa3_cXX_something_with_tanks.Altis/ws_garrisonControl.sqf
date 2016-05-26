if !(isServer) exitWith {};
_garrisons = ["garrisonLogic"] call ws_fnc_collectObjects;
_units = [];
_groups = [];
{
_unitsx = ((_x getVariable "ws_garrisonSettings") call ws_fnc_createGarrison);
_units append _unitsx;
_groups append [group (_unitsx select 0)];
} forEach _garrisons;

_units execVM "f\setAISkill\f_setAISkill.sqf";
_units execVM "f\assignGear\f_assignGear_AI.sqf";