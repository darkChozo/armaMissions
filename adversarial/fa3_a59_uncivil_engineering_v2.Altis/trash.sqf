if (isServer) then {
    for "_i" from 1 to 75 do {
        createVehicle [["Land_Garbage_square3_F","Land_Garbage_square5_F","Land_Garbage_line_F"] call BIS_fnc_selectRandom,position _this,[],160,"NONE"];
    };
};