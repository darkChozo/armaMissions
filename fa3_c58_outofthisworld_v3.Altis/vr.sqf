_origin = getMarkerPos "vr";

_posAdd = {[(_this select 0 select 0) + (_this select 1 select 0),
            (_this select 0 select 1) + (_this select 1 select 1),
            (_this select 0 select 2) + (_this select 1 select 2)]};

if (isServer) then {
    //floor
    for "_xx" from 0 to 10 do {
        for "_yy" from 0 to 8 do {
            createVehicle ["Land_VR_Block_01_F", [_origin, [9.5*_xx,19*_yy,-7.99]] call _posAdd, [], 0, "CAN_COLLIDE"];
            createVehicle ["Land_VR_Block_01_F", [_origin, [9.5*_xx,19*_yy,16.01]] call _posAdd, [], 0, "CAN_COLLIDE"];
        };
    };

    tele_10 = createVehicle ["Land_Loudspeakers_F", [_origin, [47,135,0]] call _posAdd, [], 0, "CAN_COLLIDE"];
    tele_10 setVariable ["desc", "Teleporter Hub", true];
    tele_10 setVariable ["dest", tele_8, true];
    publicVariable "tele_10";
    _mkr = createMarker ["tele_10", position tele_10];
    _mkr setMarkerType "hd_objective";
    _mkr setMarkerShape "ICON";
    _mkr setMarkerText "Teleporter";
    _mkr setMarkerColor "ColorEAST";
    tele_7 = createVehicle ["Land_Loudspeakers_F", [_origin, [47,10,0]] call _posAdd, [], 0, "CAN_COLLIDE"];
    tele_7 setVariable ["desc", "Mothership Uplink", true];
    publicVariable "tele_7";

    // outer walls
    for "_xx" from 0 to 8 do {
        createVehicle ["Land_VR_Block_01_F", [_origin, [0,19*_xx,0]] call _posAdd, [], 0, "CAN_COLLIDE"];
        createVehicle ["Land_VR_Block_01_F", [_origin, [0,19*_xx,8]] call _posAdd, [], 0, "CAN_COLLIDE"];
        createVehicle ["Land_VR_Block_01_F", [_origin, [95,19*_xx,0]] call _posAdd, [], 0, "CAN_COLLIDE"];
        createVehicle ["Land_VR_Block_01_F", [_origin, [95,19*_xx,8]] call _posAdd, [], 0, "CAN_COLLIDE"];
    };
    // outer walls
    for "_xx" from 0 to 4 do {
        createVehicle ["Land_VR_Block_01_F", [_origin, [5 + 19*_xx,-5,0]] call _posAdd, [], 0, "CAN_COLLIDE"] setDir 90;
        createVehicle ["Land_VR_Block_01_F", [_origin, [5 + 19*_xx,-5,8]] call _posAdd, [], 0, "CAN_COLLIDE"] setDir 90;
        createVehicle ["Land_VR_Block_01_F", [_origin, [5 + 19*_xx,157.5,0]] call _posAdd, [], 0, "CAN_COLLIDE"] setDir 90;
        createVehicle ["Land_VR_Block_01_F", [_origin, [5 + 19*_xx,157.5,8]] call _posAdd, [], 0, "CAN_COLLIDE"] setDir 90;
    };
    // tele shield
    createVehicle ["Land_VR_Block_05_F", [_origin, [38,5,0]] call _posAdd, [], 0, "CAN_COLLIDE"] setVectorUp [1,0,0];
    createVehicle ["Land_VR_Block_05_F", [_origin, [38,15,0]] call _posAdd, [], 0, "CAN_COLLIDE"] setVectorUp [1,0,0];
    _obj = createVehicle ["Land_VR_Block_05_F", [_origin, [41,22,0]] call _posAdd, [], 0, "CAN_COLLIDE"];
    _obj setDir 90;
    _obj setVectorUp [0,1,0];
    createVehicle ["Land_VR_Block_05_F", [_origin, [56,5,0]] call _posAdd, [], 0, "CAN_COLLIDE"] setVectorUp [1,0,0];
    createVehicle ["Land_VR_Block_05_F", [_origin, [56,15,0]] call _posAdd, [], 0, "CAN_COLLIDE"] setVectorUp [1,0,0];
    _obj = createVehicle ["Land_VR_Block_05_F", [_origin, [53,22,0]] call _posAdd, [], 0, "CAN_COLLIDE"];
    _obj setDir 90;
    _obj setVectorUp [0,1,0];

    //tele outer
    for "_xx" from 0 to 3 do {
        _obj = createVehicle ["Land_VR_Block_05_F", [_origin, [32 + 10*_xx,30,0]] call _posAdd, [], 0, "CAN_COLLIDE"];
        _obj setDir 90;
        _obj setVectorUp [0,1,0];
    };

    createVehicle ["Land_VR_Block_05_F", [_origin, [29,23,0]] call _posAdd, [], 0, "CAN_COLLIDE"] setVectorUp [1,0,0];
    createVehicle ["Land_VR_Block_05_F", [_origin, [29,13,0]] call _posAdd, [], 0, "CAN_COLLIDE"] setVectorUp [1,0,0];
    createVehicle ["Land_VR_Block_05_F", [_origin, [65,23,0]] call _posAdd, [], 0, "CAN_COLLIDE"] setVectorUp [1,0,0];
    createVehicle ["Land_VR_Block_05_F", [_origin, [65,13,0]] call _posAdd, [], 0, "CAN_COLLIDE"] setVectorUp [1,0,0];

    createVehicle ["Land_VR_Block_05_F", [_origin, [73.5,10.5,0]] call _posAdd, [], 0, "CAN_COLLIDE"] setDir 90;
    createVehicle ["Land_VR_Block_05_F", [_origin, [85.5,10.5,0]] call _posAdd, [], 0, "CAN_COLLIDE"] setDir 90;
    createVehicle ["Land_VR_Block_05_F", [_origin, [20.5,10.5,0]] call _posAdd, [], 0, "CAN_COLLIDE"] setDir 90;
    createVehicle ["Land_VR_Block_05_F", [_origin, [8.5,10.5,0]] call _posAdd, [], 0, "CAN_COLLIDE"] setDir 90;

    // center walls
    for "_xx" from 0 to 2 do {
        for "_yy" from 0 to 1 do {
            createVehicle ["Land_VR_Block_05_F", [_origin, [8.5 + _xx * 10,45,4]] call _posAdd, [], 0, "CAN_COLLIDE"] setDir 90;
            createVehicle ["Land_VR_Block_05_F", [_origin, [66 + _xx * 10,45,4]] call _posAdd, [], 0, "CAN_COLLIDE"] setDir 90;
            createVehicle ["Land_VR_Block_05_F", [_origin, [18.5 + _yy * 10,45,0]] call _posAdd, [], 0, "CAN_COLLIDE"] setDir 90;
            createVehicle ["Land_VR_Block_05_F", [_origin, [4.5,45,0]] call _posAdd, [], 0, "CAN_COLLIDE"] setDir 90;
            createVehicle ["Land_VR_Block_05_F", [_origin, [66 + _yy * 10,45,0]] call _posAdd, [], 0, "CAN_COLLIDE"] setDir 90;
            createVehicle ["Land_VR_Block_05_F", [_origin, [90,45,0]] call _posAdd, [], 0, "CAN_COLLIDE"] setDir 90;

            createVehicle ["Land_VR_Block_05_F", [_origin, [8.5 + _xx * 10,88.5,4]] call _posAdd, [], 0, "CAN_COLLIDE"] setDir 90;
            createVehicle ["Land_VR_Block_05_F", [_origin, [66 + _xx * 10,88.5,4]] call _posAdd, [], 0, "CAN_COLLIDE"] setDir 90;
            createVehicle ["Land_VR_Block_05_F", [_origin, [18.5 + _yy * 10,88.5,0]] call _posAdd, [], 0, "CAN_COLLIDE"] setDir 90;
            createVehicle ["Land_VR_Block_05_F", [_origin, [4.5,88.5,0]] call _posAdd, [], 0, "CAN_COLLIDE"] setDir 90;
            createVehicle ["Land_VR_Block_05_F", [_origin, [66 + _yy * 10,88.5,0]] call _posAdd, [], 0, "CAN_COLLIDE"] setDir 90;
            createVehicle ["Land_VR_Block_05_F", [_origin, [90,88.5,0]] call _posAdd, [], 0, "CAN_COLLIDE"] setDir 90;

            createVehicle ["Land_VR_Block_05_F", [_origin, [31,49,_yy * 4]] call _posAdd, [], 0, "CAN_COLLIDE"];
            createVehicle ["Land_VR_Block_05_F", [_origin, [63.5,49,_yy * 4]] call _posAdd, [], 0, "CAN_COLLIDE"];
            createVehicle ["Land_VR_Block_05_F", [_origin, [31,81,_yy * 4]] call _posAdd, [], 0, "CAN_COLLIDE"];
            createVehicle ["Land_VR_Block_05_F", [_origin, [63.5,81,_yy * 4]] call _posAdd, [], 0, "CAN_COLLIDE"];
        };
    };
    
    //center slopes
    for "_xx" from 0 to 5 do {
        createVehicle ["Land_VR_Slope_01_F", [_origin, [36 + _xx * 4.5,47.7,0]] call _posAdd, [], 0, "CAN_COLLIDE"];
        createVehicle ["Land_VR_Slope_01_F", [_origin, [36 + _xx * 4.5,86.3,0]] call _posAdd, [], 0, "CAN_COLLIDE"] setDir 180;
    };
    //center floor
    for "_xx" from 0 to 5 do {
        for "_yy" from 0 to 2 do {
            createVehicle ["Land_VR_Block_05_F", [_origin, [36+_xx*4.5,57.5+9.5*_yy,0]] call _posAdd, [], 0, "CAN_COLLIDE"];
        };
    };
    //center side slopes
    for "_yy" from 0 to 3 do {
        createVehicle ["Land_VR_Slope_01_F", [_origin, [28.7,60 + _yy * 4.5,0]] call _posAdd, [], 0, "CAN_COLLIDE"] setDir 90;
        createVehicle ["Land_VR_Slope_01_F", [_origin, [65.8,60 + _yy * 4.5,0]] call _posAdd, [], 0, "CAN_COLLIDE"] setDir 270;
    };
    //computer whatevers
    for "_yy" from 0 to 4 do {
        for "_xx" from 0 to 1 do {
            createVehicle ["Land_Device_disassembled_F", [_origin, [7 + _xx * 9,50 + _yy * 8,0]] call _posAdd, [], 0, "CAN_COLLIDE"] setDir 90;
            createVehicle ["Land_Device_disassembled_F", [_origin, [79 + _xx * 9,50 + _yy * 8,0]] call _posAdd, [], 0, "CAN_COLLIDE"] setDir 270;
        };
    };
    // center columns
    for "_xx" from 0 to 1 do {
        for "_yy" from 0 to 1 do {
            for "_zz" from 4 to 15 do {
                createVehicle ["Land_VR_Shape_01_cube_1m_F", [_origin, [36.5 + _xx,62 + _yy,_zz]] call _posAdd, [], 0, "CAN_COLLIDE"];
                createVehicle ["Land_VR_Shape_01_cube_1m_F", [_origin, [36.5 + _xx,72 + _yy,_zz]] call _posAdd, [], 0, "CAN_COLLIDE"];
                createVehicle ["Land_VR_Shape_01_cube_1m_F", [_origin, [46.5 + _xx,62 + _yy,_zz]] call _posAdd, [], 0, "CAN_COLLIDE"];
                createVehicle ["Land_VR_Shape_01_cube_1m_F", [_origin, [46.5 + _xx,72 + _yy,_zz]] call _posAdd, [], 0, "CAN_COLLIDE"];
                createVehicle ["Land_VR_Shape_01_cube_1m_F", [_origin, [56.5 + _xx,62 + _yy,_zz]] call _posAdd, [], 0, "CAN_COLLIDE"];
                createVehicle ["Land_VR_Shape_01_cube_1m_F", [_origin, [56.5 + _xx,72 + _yy,_zz]] call _posAdd, [], 0, "CAN_COLLIDE"];
            };
        };
    };
    // back columns
    for "_xx" from 0 to 7 do {
        for "_zz" from 0 to 1 do {
            _obj = createVehicle ["Land_VR_Block_05_F", [_origin, [15 + 10*_xx,105,_zz*10]] call _posAdd, [], 0, "CAN_COLLIDE"];
            _obj setVectorDirAndUp [[0,0,-1],[0,1,0]];
            _obj = createVehicle ["Land_VR_Block_05_F", [_origin, [10 + 10*_xx,120,_zz*10]] call _posAdd, [], 0, "CAN_COLLIDE"];
            _obj setVectorDirAndUp [[0,0,-1],[0,1,0]];
        };
    };
    // back arches
    for "_xx" from 0 to 8 do {
        _obj = createVehicle ["Land_VR_Block_05_F", [_origin, [10 + 10*_xx,130,9]] call _posAdd, [], 0, "CAN_COLLIDE"] setDir 90;
        _obj = createVehicle ["Land_VR_Block_05_F", [_origin, [5 + 10*_xx,140,5]] call _posAdd, [], 0, "CAN_COLLIDE"] setDir 90;
    };
    // back spheres
    for "_xx" from 0 to 15 do {
        for "_yy" from 0 to 5 do {
            if (random 1 > .5) then {
                _obj = createVehicle [["Sign_Sphere25cm_F","Sign_Sphere100cm_F","Sign_Sphere200cm_F"] call BIS_fnc_selectRandom,
                    [_origin, [10+5*_xx,125 + 5*_yy,random 2]] call _posAdd, [], 0, "CAN_COLLIDE"];
            };
        };
    };
    {
        for "_i" from 1 to 2 do {
            _grp = createGroup east;
            _unit = _grp createUnit ["O_engineer_F", [_origin, [] call _x] call _posAdd, [], 0, "NONE"];
            ["engm",_unit] call f_fnc_assignGear;
            _grp setFormDir 180;
        }
    } forEach  [{[12 + random 10,20 + random 20,.1]}, {[75 + random 10,20 + random 20,.1]},{[35 + random 20,40,.1]},{[35 + random 20,35,.1]},{[15,50 + random 30,.1]},{[15,50 + random 30,.1]},{[78,50 + random 20,.1]},{[78,50 + random 20,.1]},{[10 + random 75,140,.1]},{[10 + random 75,140,.1]},{[10 + random 75,140,.1]},{[10 + random 75,140,.1]}];
    
    // AI don't like being spawned on top of things
    {
        _grp = createGroup east;
        _unit = _grp createUnit ["O_engineer_F", [_origin, _x] call _posAdd, [], 5, "CAN_COLLIDE"];
        ["engm",_unit] call f_fnc_assignGear;
        _unit setDir 180;
        _unit disableAI "MOVE";
    } forEach [[35 + random 20,65,4.1], [35 + random 20,78,4.1]];
};

if (hasInterface) then {
    _light = "#lightpoint" createVehicleLocal ([_origin, [50,80,10]] call _posAdd);
    _light setLightBrightness .2;
    _light setLightAttenuation [200,0,1,1];
    _light setLightAmbient [0, 1, 0];
    while {true} do {
        if (player distance getMarkerPos "vr" < 400) then {
            _data = createVehicle [["Sign_Sphere10cm_F","Sign_Sphere25cm_F","Sign_Sphere100cm_F","Sign_Sphere200cm_F"] call BIS_fnc_selectRandom,
                                   [_origin, [10 + random 75,-10,2 + random 10]] call _posAdd,[],0,"CAN_COLLIDE"];
            _data spawn {
                _t0 = time;
                _p0 = getPosATL _this;
                _vel = 20 + random 20;
                waitUntil {
                    _this setPosATL [_p0 select 0, (_p0 select 1) + (_vel * (time - _t0)), _p0 select 2];
                    time - _t0 > 15;
                };
                deleteVehicle _this;
            };
        };
        sleep 2;
    };
};



/*
Land_VR_Block_04_F - 10.5x10.5x9
Land_VR_Block_05_F - 10x5x4
Land_VR_Block_02_F - 12x12x4
Land_VR_Block_03_F - 12x7.5x6
Land_VR_Block_01_F - 20x10x8
Land_VR_CoverObject_01_stand_F
Land_VR_Slope_01_F - 10x5x4
Land_VR_Shape_01_cube_1m_F
*/
