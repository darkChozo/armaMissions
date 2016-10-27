[
	_this,
	"start your defense",
	"a3\ui_f\data\IGUI\Cfg\simpleTasks\types\defend_ca.paa",
	"a3\ui_f\data\IGUI\Cfg\simpleTasks\types\defend_ca.paa",
	"daytime > 7 && _this distance _target < 2.5","_this distance _target < 2.5",
	{},
	{},
	{[] execVM "FFtoNight.sqf"},
	{},
	nil,
	5,
	6,
	true
] call BIS_fnc_holdActionAdd;