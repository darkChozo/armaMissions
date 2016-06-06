if (!params [["_startTime",nil,[0]],["_startValue",nil,[0]],["_endTime",nil,[0]],["_endValue",nil,[0]]]) exitWith {systemChat "dc_fnc_generateScalingCode - bad params"};

compile format ["%1 + (%2 * (((time - %3)/%4) max 0 min 1))",_startValue,_endValue - _startValue,_startTime,_endTime - _startTime]