mazegenDone = false;
if (!isServer) exitWith {};

_corner = [2002.5,2002,0];

_grid = [];
_mazesize = param_mazesize;
for "_i" from 0 to _mazesize - 1 do {
    _array = [];
    _array resize _mazesize;
    _grid pushBack (_array apply {true});
};
_grid select 0 set [floor (_mazesize / 2),false];
_grid select 1 set [floor (_mazesize / 2),false];
_grid select (_mazesize - 1) set [floor (_mazesize / 2),false];
_grid select (_mazesize - 2) set [floor (_mazesize / 2),false];
_dfsgrid = [];
for "_i" from 0 to _mazesize - 1 do {
    _array = [];
    _array resize _mazesize;
    _array = _array apply {false};
    _array set [0,true];
    _array set [_mazesize - 1,true];
    _dfsgrid pushBack _array;
};

_dfsstack = [[1,floor (_mazesize / 2)]];
while {count _dfsstack > 0} do {
    _adjcells = [];
    _currcell = _dfsstack select ((count _dfsstack) - 1);
    {
        _cell = [(_currcell select 0) + (_x select 0),(_currcell select 1) + (_x select 1)];
        if (_cell select 0 >= 0 && _cell select 1 >= 0 && _cell select 0 < _mazesize && _cell select 1 < _mazesize && {!(_dfsgrid select (_cell select 0) select (_cell select 1))}) then {
            _adjcells pushBack _cell;
        };
    } forEach [[2,0],[-2,0],[0,2],[0,-2]];
    if (count _adjcells == 0) then { // deadend
        _dfsstack resize ((count _dfsstack) - 1);
    } else {
        _cell = _adjcells call BIS_fnc_selectRandom;
        _grid select (_cell select 0) set [_cell select 1,false];
        _grid select (((_cell select 0) + (_currcell select 0)) / 2) set [((_cell select 1) + (_currcell select 1)) / 2,false];
        _dfsstack pushBack _cell;
        _dfsgrid select (_cell select 0) set [_cell select 1,true];
    };
};
_genwall = {
    _wall = [ceil random (_this - 2),2*(ceil random ((_this - 2)/2))]; // wall[1] guaranteed even
    if ((_wall select 0) % 2 == 0) then { // walls are odd so if both are even, change wall [1]
        _wall set [1,(_wall select 1) - 1];
    };
    _wall
};
for "_i" from 0 to floor (_mazesize / 10) do {
    _wall = _mazesize call _genwall;
    while {!(_grid select (_wall select 0) select (_wall select 1))} do { // repeat until we find a wall that's actually there
        _wall = _mazesize call _genwall;
    };
    _grid select (_wall select 0) set [_wall select 1,false];
};


for "_i" from 0 to _mazesize - 1 do {
    for "_j" from 0 to _mazesize - 1 do {
        if (_grid select _i select _j) then {
            _block = createVehicle ["Land_VR_Block_05_F",[(_corner select 0) + (5*_i),(_corner select 1) + (4*_j),0],[],0,"CAN_COLLIDE"];
            _block setVectorDirAndUp [[0,0,1],[0,-1,0]];
        };
    };
    _block = createVehicle ["Land_VR_Block_05_F",[(_corner select 0) -30,(_corner select 1) + (4*_i),0],[],0,"CAN_COLLIDE"];
    _block setVectorDirAndUp [[0,0,1],[0,-1,0]];
};
for "_xx" from 0 to 5 do {
    for "_yy" from 0 to 1 do {
        _block = createVehicle ["Land_VR_Block_05_F",[(_corner select 0) + (-5*_xx),(_corner select 1) + (4*(_mazesize - 1)*_yy),0],[],0,"CAN_COLLIDE"];
        _block setVectorDirAndUp [[0,0,1],[0,-1,0]];
    };
    _block = createVehicle ["Land_VR_Block_05_F",[(_corner select 0) + (-5*_xx),(_corner select 1) + 10,0],[],0,"CAN_COLLIDE"];
    _block setVectorDirAndUp [[0,0,1],[0,-1,0]];
    _block spawn {waitUntil {time > 15 + param_spelunkerHeadstart}; deleteVehicle _this};
    _block = createVehicle ["Land_VR_Block_05_F",[(_corner select 0) + (-5*_xx),(_corner select 1) + 30,0],[],0,"CAN_COLLIDE"];
    _block setVectorDirAndUp [[0,0,1],[0,-1,0]];
    _block spawn {waitUntil {time > 15}; deleteVehicle _this;};
};
createMarker ["exit",[(_corner select 0) + (5 * _mazesize),(_corner select 1) + (4 * (_mazesize / 2)) - 2,0]];
"exit" setMarkerShape "ICON";
"exit" setMarkerType "mil_objective";
"exit" setMarkerText "Exit";

createMarker ["maze",[(_corner select 0) + (((5*_mazesize) + 30) / 2) - 32.5,(_corner select 1) + (4 * (_mazesize / 2)) - 2,0]];
"maze" setMarkerShape "RECTANGLE";
"maze" setMarkerSize [((5*_mazesize) + 30) / 2,4 * (_mazesize / 2)];
"maze" setMarkerBrush "Solid";
"maze" setMarkerColor "ColorBlack";
"maze" setMarkerAlpha .7;

_lights = ["Chemlight_blue_Infinite","Chemlight_green_Infinite","Chemlight_red_Infinite","Chemlight_yellow_Infinite","F_40mm_White_Infinite","F_40mm_Yellow_Infinite","F_40mm_Cir_Infinite","SmokeShellOrange_Infinite","Weapon_hgun_Pistol_Signal_F"];
for "_i" from 1 to (_mazesize^2) / 35 do {
    _cell = [(2*floor random ((_mazesize / 2) - 1)) + 1,(2*floor random ((_mazesize - 1) / 2)) + 1];
    _lights call BIS_fnc_selectRandom createVehicle [(_corner select 0) + (5*(_cell select 0)),(_corner select 1) + (4*(_cell select 1)),0];
};

mazegenDone = true;
publicVariable "mazegenDone";

[_corner,_mazesize] execVM "events.sqf";
