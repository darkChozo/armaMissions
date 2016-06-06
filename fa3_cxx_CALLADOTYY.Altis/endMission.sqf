if (!isServer) exitWith {};

if (alive target) then {
    [2,false] call f_fnc_mpEnd;
} else {
    [1] call f_fnc_mpEnd;
};