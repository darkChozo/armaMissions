params ["_vic","_unit","_config","_slotIdx"];

detach _unit;
[_unit,"GetOutHeli_Light_01bench"] remoteExec ["switchMove"];
if (count (_config select 2 select _slotIdx) <= 3) then {
	_unit setPos (_vic modelToWorld (_config select 1));
	_unit setDir ((getdir _vic) + 180);
} else {
	_unit setPos (_vic modelToWorld (_config select 2 select _slotIdx select 3));
	_unit setDir ((getdir _vic) + (_config select 2 select _slotIdx select 4));
};

_unit spawn {
	sleep .9;
	[_this,""] remoteExec ["switchMove"];
};