_attackers = _this select 0;
sleep 120;
while {!indescaping && count _attackers > 0} do {
	if (f_var_debugMode == 1) then {player sideChat format ["attackers: %1", _attackers];};
	_attacker = _attackers call BIS_fnc_selectRandom;
	if (f_var_debugMode == 1) then {player sideChat format ["attacking: %1", _attacker];};
 	while {count waypoints group _attacker > 0} do {
		deleteWaypoint [group _attacker, 0];
	};
	_wp = group _attacker addWaypoint [getMarkerPos "aafflag", 0];
	_wp setWaypointType "SAD";
	_wp setWaypointBehaviour "AWARE";
	_wp setWaypointSpeed "FULL";
	_attackers = _attackers - [_attacker];
	
	//sleep 10; 
	sleep (240 + random 120);
	_dead = [];
	{if (!alive _x) then {_dead = _dead + [_x]};} forEach _attackers;
	_attackers = _attackers - _dead; 
};