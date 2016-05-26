if (!isServer) exitWith {};

if (boxesCollected >= 6) then {
    [1] call f_fnc_mpEnd;
};
if (boxesCollected >= 3 && boxesCollected < 6) then {
    [2] call f_fnc_mpEnd;
};
if (boxesCollected < 3) then {
    [3] call f_fnc_mpEnd;
};