if (isServer) then {
	negotiationsStarted = false;
	negotiationsInProgress = false;
	negotiationsDone = false;
	_timeElapsed = 0;
	_timeNeeded = 300;
	if (f_param_super_general == 1) then { _timeNeeded = 15; };
	while {true} do {
		if ((!negotiationsDone) and negotiationsInProgress) then {
			negotiationsStarted = true;
			_timeElapsed = _timeElapsed + 1;
			if (f_var_debugMode == 1) then {
				[format ["%1", _timeNeeded - _timeElapsed],"hint",true,true] call BIS_fnc_MP;
			};
			if (_timeElapsed > _timeNeeded) then {
				negotiationsDone = true;
			};
		};
		sleep 1;
	};
};