_target = _this;
_pos = [((position _target) select 0) + (random 150) - 75,
	    ((position _target) select 1) + (random 150) - 75,
		(position _target) select 2];

_target setPos _pos;

// some AI are diehards
if (random 1 <= .2) then {
	_target disableAI "MOVE";
};
_target setBehaviour "CARELESS";

bluInTown = false;
while {!bluInTown} do {
	sleep 30;
};
sleep random 15; // just so the AI don't all start moving at once
_target setBehaviour "AWARE";