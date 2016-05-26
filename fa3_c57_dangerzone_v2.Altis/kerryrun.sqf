if (f_var_debugMode == 1) then {player sideChat "Kerry running"};

// create new group so waypoint is actually followed
_newGroup = createGroup west;
[kerry] joinSilent _newGroup;
group kerry setBehaviour "CARELESS";
group kerry setSpeedMode "FULL";
kerry assignAsDriver escapeHelo;
[kerry] orderGetIn true;
_wp = _newGroup addWaypoint [getMarkerPos "FIARetreat",0];
_wp setWaypointBehaviour "CARELESS";
_wp setWaypointSpeed "FULL";
_wp = _newGroup addWaypoint [getMarkerPos "FIARetreat",0];
_wp setWaypointType "GETOUT";