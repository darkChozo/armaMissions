params ["_vic","_unit"];

_config = _vic getVariable ["dc_ext_config",nil];
_slots = _vic getVariable ["dc_ext_slots",[]];

_slotIdx = _slots find _unit;
if (_slotIdx != -1) then {
	_slots set [_slotIdx,objNull];
	_vic setVariable ["dx_ext_slots",_slots,true];
};

[_vic,_unit,_config] remoteExec ["dc_fnc_ext_getOutClient",_unit];