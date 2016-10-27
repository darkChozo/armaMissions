params ["_vic","_unit","_slot"];

_unit attachTo [_vic,_slot select 0];
_unit setDir (_slot select 1);
[_unit,_slot select 2] remoteExec ["switchMove"];