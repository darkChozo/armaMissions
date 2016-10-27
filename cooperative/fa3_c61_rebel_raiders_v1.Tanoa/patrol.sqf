params ["_grp",["_dist",50]];

_pos = position leader _grp;
_angle = random 360;
_wp = nil;

for '_i' from 1 to 5 do {
	_wp = _grp addWaypoint [[_pos,random [.3 * _dist,_dist,1.5 * _dist],_angle] call BIS_fnc_relPos,0];
	_wp setWaypointBehaviour "SAFE";
	_angle = (_angle + 72) % 360;
	if (_angle < 0) then {_angle = _angle + 360};
};
_wp = _grp addWaypoint [waypointPosition (waypoints _grp select 1),0];
_wp setWaypointBehaviour "SAFE";
_wp setWaypointType "CYCLE";
