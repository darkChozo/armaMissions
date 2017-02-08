if ((isNil "hc" && !isServer) || (!isNil "hc" && (isServer || hasInterface))) exitWith {};


_attackPoints = ["attackPoint"] call ws_fnc_collectObjects;
_attackPointsCurr = _attackPoints;

_defendPoints = ["defendPoint"] call ws_fnc_collectObjects;
_defendPointsCurr = _defendPoints;

_infSpawns = ["infSpawn"] call ws_fnc_collectObjects;
_vehSpawns = ["vehSpawn"] call ws_fnc_collectObjects;

_infGroups = [];

_iterations = 0;


while {true} do {
	if ({side _x == independent} count allUnits < 80) then {
		if (random 1 > .1) then {
			// spawn men. this should result in ~1 vic for every ~65 men

			_attack = false;
			if (random 1 > .1) then {_attack = true};
			
			_target = selectRandom _attackPointsCurr;
			if (_attack) then {
				_attackPointsCurr = _attackPointsCurr - [_target];
				if (count _attackPointsCurr == 0) then {_attackPointsCurr = _attackPoints};
			} else {
				_target = selectRandom _defendPointsCurr;
				_defendPointsCurr = _defendPointsCurr - [_target];
				if (count _defendPointsCurr == 0) then {_defendPointsCurr = _defendPoints};
			};
			
			_spawn = _target;
			if (_iterations > 10) then { _spawn = selectRandom _infSpawns };
			
			_grp = createGroup independent;
			_grp createUnit ["I_SOLDIER_TL_F",_spawn,[],0,"NONE"];
			_grp createUnit ["I_SOLDIER_AR_F",_spawn,[],0,"NONE"];
			if (random 1 > .5) then { _grp createUnit [selectRandom ["I_SOLDIER_A_F"],_spawn,[],0,"NONE"] };
			for "_i" from 1 to 3 + floor random 3 do {
				_grp createUnit ["I_SOLDIER_F",_spawn,[],0,"NONE"];
			};
			
			{
				_x addEventHandler ["killed", {(_this select 0) spawn f_fnc_removeBody}];
				_x setVariable ["f_removeBodyEH",true];
			} forEach units _grp;
			
			if (_attack && random 1 < .1) then {
				// occupation force!
				_wp = _grp addWaypoint [getPos _target,0];
				_wp setWaypointStatements ["true",
					"[units group this,[position this,50,true] call ws_fnc_collectBuildings] call ws_fnc_enterBuilding;
					 deleteWaypoint [group this, currentWaypoint (group this)];"];
			} else {
				_infGroups pushBack _grp;
				
				_wp = _grp addWaypoint [getPos _target,0];
				_wp setWaypointType "SAD";
				_wp setWaypointStatements ["true","deleteWaypoint [group this, currentWaypoint (group this)]"];
			};
		} else {
			// spawn vic
			
			_roll = random 1;
			
			_vic = "I_MRAP_03_hmg_F";
			if (_roll > .5) then { _vic = "I_APC_Wheeled_03_cannon_F"};
			if (_roll > .8) then { _vic = "I_APC_tracked_03_cannon_F"};
			if (_roll > .95) then { _vic = "I_Heli_light_03_F"};
			
			_spawn = selectRandom _vehSpawns;
			
			{ // remove any wrecks in the spawn
				if (!alive _x) then {deleteVehicle _x};
			} forEach nearestObjects [_spawn,["CAR","TANK","AIR"],30];
			
			_vic = _vic createVehicle position _spawn;
			_vic setDir getDir _spawn;
			createVehicleCrew _vic;
			_vic lock true;
			//sketchy vehicle "removeBody"
			_vic addEventHandler ["killed", {
				(_this select 0) spawn {
					_wreck = _this;
					
					sleep 120; // we don't want wrecks to disappear right away

					waitUntil  {!isNull _wreck};
					_pos = getPos _wreck;
					_loop = true;
					while {_loop} do {
						sleep 20;
						_loop = [_wreck,50] call f_fnc_nearPlayer;
					};
					sleep 5;
					deleteVehicle _wreck;
				};
			}];
			
			group driver _vic addWaypoint [getPos selectRandom _attackPoints,0] setWaypointType "SAD";
			{
				_x addEventHandler ["killed", {(_this select 0) spawn f_fnc_removeBody}];
				_x setVariable ["f_removeBodyEH",true];
			} forEach units group driver _vic;
		};
	};
	
	_grp = selectRandom _infGroups;
	
	if (isNil {_grp} || {isNull _grp} || {count units _grp == 0}) then {
		_infGroups = _infGroups - [_grp];
	} else {
		if (count waypoints _grp == 1) then {
			_roll = random 1;
			
			if (_roll < .1) then {
				// 10% chance of going on defense
				_target = selectRandom _defendPointsCurr;
				_defendPointsCurr = _defendPointsCurr - [_target];
				if (count _defendPointsCurr == 0) then {_defendPointsCurr = _defendPoints};
				_wp = _grp addWaypoint [getPos _target,0];
				_wp setWaypointType "SAD";
				_wp setWaypointStatements ["true","deleteWaypoint [group this, currentWaypoint (group this)]"];
			};
			
			if (_roll > .1 && _roll < .7) then {
				// 60% chance of going on attack
				_target = selectRandom _attackPointsCurr;
				_attackPointsCurr = _attackPointsCurr - [_target];
				if (count _attackPointsCurr == 0) then {_attackPointsCurr = _attackPoints};
				_wp = _grp addWaypoint [getPos _target,0];
				_wp setWaypointType "SAD";
				_wp setWaypointStatements ["true","deleteWaypoint [group this, currentWaypoint (group this)]"];
			};
			
			if (_roll > .7) then {
				//30% chance of attacking FIA base
				
				_wp = _grp addWaypoint [getMarkerPos "fia",0];
				_wp setWaypointType "SAD";
				_wp setWaypointStatements ["true","deleteWaypoint [group this, currentWaypoint (group this)]"];
			};
		};
	};
	
	_iterations = _iterations + 1;
	if (_iterations < 5) then { sleep 1 };
};