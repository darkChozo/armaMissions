if (!isServer || !params [["_unit",nil,[objNull]]]) exitWith {};


if (isNil {numFinished}) then {numFinished = 1} else {numFinished = numFinished + 1};

if (numFinished == 1) then {
    ["Alert",[format ["%1 finished in 1st place! (%2)",name _unit,[serverTime - startTime,"MM:SS.MS"] call BIS_fnc_secondsToString]]] remoteExec ["BIS_fnc_showNotification"];
    [] spawn {
        sleep 3;
        if (numRacers == numFinished) exitWith {[1] call f_fnc_mpEnd};
        ["Alert",["2 minutes left in the race!"]] remoteExec ["BIS_fnc_showNotification"];
        _t0 = serverTime;
        
        waitUntil {serverTime - _t0 >= 90 || numFinished == numRacers};
        if (numRacers == numFinished) exitWith {[1] call f_fnc_mpEnd};
        ["Alert",["30 seconds left in the race!"]] remoteExec ["BIS_fnc_showNotification"];
        
        waitUntil {serverTime - _t0 >= 120 || numFinished == numRacers};
        [1] call f_fnc_mpEnd;
    };
};
if (numFinished == 2) then {
    ["Alert",[format ["%1 finished in 2nd place! (%2)",name _unit,[serverTime - startTime,"MM:SS.MS"] call BIS_fnc_secondsToString]]] remoteExec ["BIS_fnc_showNotification"];
};
if (numFinished == 3) then {
    ["Alert",[format ["%1 finished in 3rd place! (%2)",name _unit,[serverTime - startTime,"MM:SS.MS"] call BIS_fnc_secondsToString]]] remoteExec ["BIS_fnc_showNotification"];
};
if (numFinished > 3) then {
    ["Alert",[format ["%1 finished in %3th place! (%2)",name _unit,[serverTime - startTime,"MM:SS.MS"] call BIS_fnc_secondsToString,numFinished]]] remoteExec ["BIS_fnc_showNotification"];
};