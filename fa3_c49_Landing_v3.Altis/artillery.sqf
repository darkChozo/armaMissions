//null=["ARTY_Sh_122_HE",target,0.8,220,30,50]execVM "artillery.sqf"
_ammotype  = _this select 0;//ARTY_Sh_122_HE    type of ammo to be used
_target    = _this select 1;//target of artillery fire
_delay     = _this select 2;//0.8 delay between each shell
_height    = _this select 3;//220 height shells will fall from
_amount    = _this select 4;//30 total shells fired
_spread    = _this select 5;//50 how close they will be to the target


for "_x" from 1 to _amount do {
//	_targetpos = [getPos _target select 0, getPos _target select 1, _height];
	_targetpos = getmarkerPos _target;
	_Strike = createVehicle [_ammotype, _targetpos, [], _spread, "NONE"];
	_Strike  allowdamage false;
	_Strike  setvectorup [0,9,0.1];
	_Strike setvelocity [0,0,-200];
	sleep _delay;
	}; 
	
//	mkr = mkrs call BIS_fnc_selectRandom; rand = getmarkerpos "mkr"; mort1 //doArtilleryFire [rand, "8Rnd_82mm_Mo_shells", 1]; 
	
	