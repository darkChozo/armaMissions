params ["_vic","_unit"];
_config = _vic getVariable ["dc_ext_config",nil];
_slots = _vic getVariable ["dc_ext_slots",[]];

if (isNil {_config}) exitWith { systemChat "vic has not been set up" };

_slotIdx = nil;
{
	if (isNull _x) exitWith {_slotIdx = _forEachIndex};
} forEach _slots;

if (isNil {_slotIdx}) exitWith { systemChat "no slots left in vic" };

_slots set [_slotIdx,_unit];
_vic setVariable ["dc_ext_slots",_slots,true];
_slot = _config select 2 select _slotIdx;

[_vic,_unit,_slot] remoteExec ["dc_fnc_ext_getInClient",_unit];