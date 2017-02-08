for "_i" from 1 to 20 do {
	_zombo = createGroup civilian createUnit ["C_man_p_fugitive_F",[player,50 + random 100,random 360] call BIS_fnc_relPos,[],0,"NONE"];
	_zombo setHitPointDamage ["HitBody",.6];
	_zombo setHitPointDamage ["HitLegs",.45];
	_zombo disableAI "AUTOCOMBAT";
	_zombo spawn {
		sleep random 10;
		_target = objNull;
		while {alive _this} do {
			sleep 10;
			if (!alive _target) then {_target == objNull};
			if (isNull _target) then {
				_targets = [];
				{
					if (side _this != side _x && {_this distance _x < 30}) then {
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
					_this doMove position _target;
					if (_this distance _target < 2) then {
						_target setDamage 1;
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