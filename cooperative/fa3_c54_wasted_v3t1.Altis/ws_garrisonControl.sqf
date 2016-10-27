if !(isServer) exitWith {};
_garrisons = ["garrisonLogic"] call ws_fnc_collectObjects;
_units = [];
{
    _unitsx = ((_x getVariable "ws_garrisonSettings") call ws_fnc_createGarrison);
    {_x allowDamage false} forEach _unitsx;
    _units append _unitsx;
} forEach _garrisons;

_units execVM "f\setAISkill\f_setAISkill.sqf";
_units execVM "f\assignGear\f_assignGear_AI.sqf";
{_x allowDamage true} forEach _units;
