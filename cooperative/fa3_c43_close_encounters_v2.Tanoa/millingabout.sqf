if (!isServer) exitWith {};

for "_i" from 1 to 4 do {
	_wp = _this addWaypoint [[leader _this,random 50,random 360] call BIS_fnc_relPos,0];
	_wp setWaypointBehaviour "SAFE";
	_wp setWaypointSpeed "LIMITED";
	_wp setWaypointTimeout [10,30,50];
};
_wp = _this addWaypoint [position leader _this,0];
_wp setWaypointType "CYCLE";
_wp setWaypointBehaviour "SAFE";
	_wp setWaypointSpeed "LIMITED";
_wp setWaypointTimeout [10,30,50];