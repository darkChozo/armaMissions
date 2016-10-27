if ((isNil {hc} && !isServer) || (!isNil {hc} && (isServer || hasInterface))) exitWith {};

_patrols = ["patrol"] call ws_fnc_collectMarkers;


_groups = [];
_units = [];
{
	_grp = createGroup independent;
	_pos = getMarkerPos _x;
	_maybeRocket = selectRandom ["I_C_Soldier_Bandit_5_F","I_C_Soldier_Bandit_2_F"];
	{
		_grp createUnit [_x,_pos,[],20,"NONE"];
	} forEach ["I_C_Soldier_Bandit_4_F","I_C_Soldier_Bandit_3_F",_maybeRocket,"I_C_Soldier_Bandit_5_F","I_C_Soldier_Bandit_5_F"];
	[_grp,300] execVM "patrol.sqf";
	_groups pushBack _grp;
	_units = _units + units _grp;
} forEach _patrols;

[_units,"f\assignGear\f_assignGear_AI.sqf"] remoteExec ["execVM",2];

_attackers = [];
_isGoodTarget = {!isNull _this && {alive _this && {getPos _this select 2 < 15 && speed _this < 30 && {getPos _this select 1 < 9250}}}};
while {true} do {
	_deadGroups = [];
	{
		if ({alive _x} count units (_x select 0) <= 1) then {
			_deadGroups pushBack _x;
		};
	} forEach _attackers;
	_attackers = _attackers - _deadGroups;

	while {count _attackers < 3} do {
		_grp = createGroup independent;
		_pos = getMarkerPos selectRandom _patrols;
		while {[_pos,1000] call f_fnc_nearPlayer} do {
			_pos = getMarkerPos selectRandom _patrols;
			sleep 1;
		};
		_maybeRocket = selectRandom ["I_C_Soldier_Bandit_5_F","I_C_Soldier_Bandit_2_F"];
		{
			_grp createUnit [_x,_pos,[],20,"NONE"];
		} forEach ["I_C_Soldier_Bandit_4_F","I_C_Soldier_Bandit_3_F",_maybeRocket,"I_C_Soldier_Bandit_5_F","I_C_Soldier_Bandit_5_F"];
		_grp setVariable ["f_cacheExcl",true,true];
		_attackers pushBack [_grp,objNull];
		[units _grp,"f\assignGear\f_assignGear_AI.sqf"] remoteExec ["execVM",2];
	};

	{
		while {!(_x select 1 call _isGoodTarget)} do {
			_x set [1,selectRandom playableUnits];
			sleep 1;
		};
		if (count waypoints (_x select 0) == 1) then {
			_x select 0 addWaypoint [_x select 1,0];
		};
		[_x select 0,1] setWaypointPosition [getPos (_x select 1),0];
	} forEach _attackers;
	sleep 10;
};