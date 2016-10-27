["FIA are retreating!", "hint"] call BIS_fnc_MP;

// create new groups so waypoints are actually followed.
{
	if (side _x == west) then {
		_newGroup = createGroup west;
		units _x joinSilent _newGroup;
		{_x enableAI "MOVE";} forEach units _x;
		_wp = _newGroup addWaypoint [getMarkerPos "FIARetreat",0];
		_wp setWaypointBehaviour "AWARE";
		_wp setWaypointSpeed "FULL";
	};
} forEach allGroups;