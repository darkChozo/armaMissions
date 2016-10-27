params ["_vic","_unit","_config"];

detach _unit;
[_unit,"GetOutHeli_Light_01bench"] remoteExec ["switchMove"];
_unit setPos (_vic modelToWorld (_config select 1));
_unit setDir ((getdir _vic) + 180);
_unit spawn {
	sleep .9;
	[_this,""] remoteExec ["switchMove"];
};