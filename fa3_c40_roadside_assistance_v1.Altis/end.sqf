if (!isServer) exitWith {};

format ["Hostages rescued: %1/12",{alive _x} count hostages] remoteExec ["hint"];

sleep 3;

if ({alive _x} count hostages > 10) then {
    [1] call f_fnc_mpEnd;
} else {
    [3] call f_fnc_mpEnd;
};