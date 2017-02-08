for "_i" from 1 to 80 do {
	_zombo = createAgent ["I_Soldier_F",[getPos player,50 + random 100,random 360] call BIS_fnc_relPos,[],0,"NONE"];
	_zombo setVariable ["BIS_fnc_animalBehaviour_disable", true];
	["",_zombo] call f_fnc_assignGear;
	_zombo setHitPointDamage ["hitHead", 0.9];
	_zombo setHitPointDamage ["hitBody", 0.9];
	_zombo setHitPointDamage ["hitHands", 0.9];
	_zombo setHitPointDamage ["hitLegs", 0.4];
	_zombo spawn {
		sleep random 10;
		_target = objNull;
		while {alive _this} do {
			sleep 10;
			if (!alive _target) then {_target == objNull};
			if (isNull _target) then {
				_targets = [];
				{
					if (side _this != side _x && {_this distance _x < 100}) then {
						_targets pushBack _x;
					};
				} forEach allUnits;
				if (count _targets > 0) then {
					_target = selectRandom _targets;
				};
			};
			
		
			while {!isNull _target && alive _this} do {
				_this setVariable ["target",_target];
				if (_this distance _target < 50 && {alive _target}) then {
					_this moveTo position _target;
					if (_this distance _target < 2) then {
						if (damage _target < .5) then {
							_target setDamage .5;
						} else {
							_target setDamage 1;
						};
					};
				} else {
					_target = objNull;
				};
				sleep 1;
			};
			_this setVariable ["target",_target];
		};
	};
};