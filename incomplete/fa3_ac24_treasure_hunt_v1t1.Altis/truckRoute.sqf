if (!isServer) exitWith {};

waitUntil {!isNil {towns} && !isNil {bases}};

_dest = (towns + bases) call BIS_fnc_selectRandom;

_wp = group _this addWaypoint [getMarkerPos _dest,7];
_wp setWaypointTimeout [120,240,480];
_wp setWaypointBehaviour "SAFE";
_wp setWaypointStatements ["true","
    deleteWaypoint [group this, currentWaypoint (group this)];
    nul = this execVM 'truckRoute.sqf';
"];
