if (!isServer) exitWith {};

_times = [[30,  "Bomb Armed! 20 minutes left!"],
          [330, "15 minutes left!"],
          [630, "10 minutes left!"],
          [930, "5 minutes left!"],
          [1170,"1 minute left!"],
          [1200,"30 seconds left!"],
          [1220,"10 seconds left!"],
          [1225,"5 seconds left"],
          [1230,"BOOM"]];

{
    waitUntil {time > _x select 0};
    ["Alert",[_x select 1]] remoteExec ["BIS_fnc_showNotification"];
} forEach _times;

if (bomb getVariable "counter" < 5) then {
    [] execVM "bigBoom.sqf";
    [2] call f_fnc_mpEnd;
};