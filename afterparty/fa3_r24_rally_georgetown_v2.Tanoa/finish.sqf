if (!isServer || !params [["_unit",nil,[objNull]]]) exitWith {};


if (isNil {dc_numFinished}) then {dc_numFinished = 1} else {dc_numFinished = dc_numFinished + 1};

if (dc_numFinished == 1) then {
    ["Alert",[format ["%1 finished in 1st place! (%2)",name _unit,[serverTime - dc_startTime,"MM:SS.MS"] call BIS_fnc_secondsToString]]] remoteExec ["BIS_fnc_showNotification"];
    [] spawn {
        sleep 3;
        if (dc_numRacers == dc_numFinished) exitWith {[1] call f_fnc_mpEnd};
        ["Alert",["3 minutes left in the race!"]] remoteExec ["BIS_fnc_showNotification"];
        _t0 = serverTime;
        
        waitUntil {serverTime - _t0 >= 60 || dc_numFinished == dc_numRacers};
        if (dc_numRacers == dc_numFinished) exitWith {[1] call f_fnc_mpEnd};
        ["Alert",["2 minutes left in the race!"]] remoteExec ["BIS_fnc_showNotification"];      
        
        waitUntil {serverTime - _t0 >= 120 || dc_numFinished == dc_numRacers};
        if (dc_numRacers == dc_numFinished) exitWith {[1] call f_fnc_mpEnd};
        ["Alert",["1 minutes left in the race!"]] remoteExec ["BIS_fnc_showNotification"];   
        
        waitUntil {serverTime - _t0 >= 150 || dc_numFinished == dc_numRacers};
        if (dc_numRacers == dc_numFinished) exitWith {[1] call f_fnc_mpEnd};
        ["Alert",["30 seconds left in the race!"]] remoteExec ["BIS_fnc_showNotification"];
        
        waitUntil {serverTime - _t0 >= 180 || dc_numFinished == dc_numRacers};
        [1] call f_fnc_mpEnd;
    };
};
if (dc_numFinished == 2) then {
    ["Alert",[format ["%1 finished in 2nd place! (%2)",name _unit,[serverTime - dc_startTime,"MM:SS.MS"] call BIS_fnc_secondsToString]]] remoteExec ["BIS_fnc_showNotification"];
};
if (dc_numFinished == 3) then {
    ["Alert",[format ["%1 finished in 3rd place! (%2)",name _unit,[serverTime - dc_startTime,"MM:SS.MS"] call BIS_fnc_secondsToString]]] remoteExec ["BIS_fnc_showNotification"];
};
if (dc_numFinished > 3) then {
    ["Alert",[format ["%1 finished in %3th place! (%2)",name _unit,[serverTime - dc_startTime,"MM:SS.MS"] call BIS_fnc_secondsToString,dc_numFinished]]] remoteExec ["BIS_fnc_showNotification"];
};