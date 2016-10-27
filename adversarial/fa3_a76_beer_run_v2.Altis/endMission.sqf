if (!isServer) exitWith {};

_fiaLeft = {toLower faction _x == "blu_g_f"} count playableUnits > 0;
_aafLeft = {toLower faction _x == "ind_f"} count playableUnits > 0;

_fiaSupplies = fiaDropoff getVariable ["suppliesCount",0];
_aafSupplies = aafDropoff getVariable ["suppliesCount",0];
_suppliesLeft = totalSupplies - _fiaSupplies - _aafSupplies;

if (_fiaLeft && !_aafLeft) then {
	_fiaSupplies = _fiaSupplies + _suppliesLeft;
};

if (_aafLeft && !_fiaLeft) then {
	_aafSupplies = _aafSupplies + _suppliesLeft;
};

format ["AAF supplies: %1, FIA supplies: %2",_aafSupplies,_fiaSupplies] remoteExec ["systemChat"];

if (_fiaSupplies > _aafSupplies) exitWith { [2] call f_fnc_mpEnd };
if (_fiaSupplies < _aafSupplies) exitWith { [1] call f_fnc_mpEnd };
[3,false] call f_fnc_mpEnd;
