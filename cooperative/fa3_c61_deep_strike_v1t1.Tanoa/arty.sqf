if (!isServer) exitWith {};

_mortars = [mortar1,mortar2,mortar3];

while {{alive _x} count _mortars != 0} do {
	_deadMortars = [];
	{
		if (!alive _x) then {
			_deadMortars pushBack _x;
		};
	} forEach _mortars;
	_mortars = _mortars - _deadMortars;

	_target = vehicle selectRandom playableUnits;
	while {east knowsAbout _target < 3.95 ||
	       !(getPos _target inRangeOfArtillery [_mortars,"8Rnd_82mm_Mo_shells"]) ||
		   vectorMagnitude velocity _target > 3 ||
		   getPos _target select 2 > 20} do {
		systemChat format ["%1 is a bad target",_target];
		sleep 10;
		_target = vehicle selectRandom playableUnits;
	};
	
	systemChat format ["targetting %1",_target];
	
	_targetPos = getPos _target;
	{_x doArtilleryFire [_targetPos, "8Rnd_82mm_Mo_Smoke_white", 1] } forEach _mortars;
	sleep (2 + (_mortars select 0 getArtilleryETA [_targetPos, "8Rnd_82mm_Mo_shells"]));
	{_x doArtilleryFire [_targetPos, "8Rnd_82mm_Mo_shells", 2] } forEach _mortars;
	
	sleep 70;
};

//magazines[] = {"8Rnd_82mm_Mo_shells","8Rnd_82mm_Mo_shells","8Rnd_82mm_Mo_shells","8Rnd_82mm_Mo_shells","8Rnd_82mm_Mo_Flare_white","8Rnd_82mm_Mo_Smoke_white"};