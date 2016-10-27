params ["_racers","_checkpoints"];

dc_fnc_finish = compileFinal preprocessFileLineNumbers "finish.sqf";

if (isServer) then {
	_this spawn {
		params ["_racers","_checkpoints"];
		dc_bestSplits = [0];
		publicVariable "dc_bestSplits";
		
		dc_numRacers = count _racers;
		publicVariable "dc_numRacers";
		
		sleep 2;
		
		dc_startTime = serverTime + 15;
		publicVariable "dc_startTime";
	};
};

if (hasInterface) then {
	waitUntil {!isNull player};
	waitUntil {vehicle player != player};
	_car = vehicle player;
	_car setFuel 0;
	waitUntil {!isNil {dc_bestSplits}};
	waitUntil {!isNil {dc_startTime}};
	["Alert",["15 seconds until race start!"]] call BIS_fnc_showNotification;
	waitUntil {serverTime > dc_startTime};
	["Alert",["GO GO GO!"]] call BIS_fnc_showNotification;
	_car setFuel 1;
	[_racers,_checkpoints] spawn {
		while {true} do {
			_scores = [];
			{
				_splits = _x getVariable ["splits",[0]];
				if (alive _x) then { _x setVariable ["name",name _x] }; // names get lost on death...
				_scores pushBack [format ["%1",alive _x],count _splits, -(_splits select ((count _splits) - 1)),_x getVariable ["name",""],_forEachIndex,_x]; // actual split times are negative to reverse sort order
			} forEach (_this select 0);
			_scores sort false;
            _msg = "";
            _counter = 1;
            {
				_splits = _x select 5 getVariable ["splits",[0]];
				_splitIdx = (count _splits) - 1;
				if (_counter == 1 || (count _splits == count (_this select 1) + 1)) then { // in first or finished
					_msg = _msg + format ["#%1 - %2 (%3)\n",_counter, _x select 3,
						[_splits select _splitIdx,"MM:SS.MS"] call BIS_fnc_secondsToString];
				} else {
					if (!alive (_x select 5)) then { // dead
						_msg = _msg + format ["#%1 - %2 (DNF)\n",_counter, _x select 3];
					} else { // otherwise show split
						_msg = _msg + format ["#%1 - %2 (+%3)\n",_counter, _x select 3,
							[(_splits select _splitIdx) - (dc_bestSplits select _splitIdx),"MM:SS.MS"] call BIS_fnc_secondsToString];
					};
				};
                _counter = _counter + 1;
            } forEach _scores;
            hint _msg;
			sleep 3;
		};
	};
	_splits = [0];
	for "_checkpointIdx" from 1 to count _checkpoints do {
		waitUntil {
			sleep .5;
			player distance (_checkpoints select (_checkpointIdx - 1)) < 15
		};
		_splits pushBack (serverTime - dc_startTime);
		player setVariable ["splits",_splits,true];
		if (count _splits > count dc_bestSplits) then {
			dc_bestSplits pushBack (_splits select ((count _splits) - 1));
			publicVariable "dc_bestSplits";
		};
		["Alert",["Checkpoint!"]] call BIS_fnc_showNotification;
	};
	[player] remoteExec ["dc_fnc_finish",2];
};