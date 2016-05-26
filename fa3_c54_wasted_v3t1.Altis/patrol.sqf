_group = _this select 0;
_maxDistance = _this select 1;

_pos = position leader _group;
for "_i" from 0 to 3 do {
    _wp = _group addWaypoint [_pos,_maxDistance];
    _wp setWaypointTimeout [10,15,20];
    _wp setWaypointBehaviour "SAFE";
    _wp setWaypointSpeed "LIMITED";
    _pos = getWPPos _wp;
};
_wp = _group addWaypoint [leader _group,0];
_wp setWaypointType "CYCLE";