params ["_corner","_mazeSize"];

_pingSpelunkers = {
    ["Alert",["All Spelunkers have been revealed on the map!"]] remoteExec ["BIS_fnc_showNotification"];
    {
        if (side _x == west || side _x == civilian) then {
            createMarker [name _x,position _x];
            name _x setMarkerShape "ICON";
            name _x setMarkerType "mil_dot";
            name _x setMarkerText name _x;
            name _x setMarkerColor (["ColorBlack","ColorRed","ColorGreen","ColorBlue","ColorYellow","ColorOrange"] call BIS_fnc_selectRandom);
            name _x setMarkerAlpha .5;
            name _x spawn {
                sleep 10;
                deleteMarker _this;
            };
        };
    } forEach allUnits;
};
_pingMonsters = {
    ["Alert",["All Monsters have been revealed on the map!"]] remoteExec ["BIS_fnc_showNotification"];
    {
        if (side _x == east) then {
            createMarker [name _x,position _x];
            name _x setMarkerShape "ICON";
            name _x setMarkerType "mil_dot";
            name _x setMarkerText name _x;
            name _x setMarkerColor (["ColorBlack","ColorRed","ColorGreen","ColorBlue","ColorYellow","ColorOrange"] call BIS_fnc_selectRandom);
            name _x setMarkerAlpha .5;
            name _x spawn {
                sleep 10;
                deleteMarker _this;
            };
        };
    } forEach allUnits;
};
_spelunkersTrip = {
    [[],{
        ["Alert",["All Spelunkers have tripped!"]] call BIS_fnc_showNotification;
        if (vehicle player != player || !(side player == west || side player == civilian)) exitWith {};
        private "_rag";
        _rag = "Land_Can_V3_F" createVehicleLocal [0,0,0];
        _rag setMass 1e10;
        _rag attachTo [player, [0,0,0], "Spine3"];
        _rag setVelocity [0,0,6];
        player allowDamage false;
        detach _rag;
        0 = _rag spawn {
            deleteVehicle _this;
            player allowDamage true;
        };
    }] remoteExec ["BIS_fnc_call"];
};
_monstersTrip = {
    [[],{
        ["Alert",["All Monsters have tripped!"]] call BIS_fnc_showNotification;
        if (vehicle player != player || !(side player == east)) exitWith {};
        private "_rag";
        _rag = "Land_Can_V3_F" createVehicleLocal [0,0,0];
        _rag setMass 1e10;
        _rag attachTo [player, [0,0,0], "Spine3"];
        _rag setVelocity [0,0,6];
        player allowDamage false;
        detach _rag;
        0 = _rag spawn {
            deleteVehicle _this;
            player allowDamage true;
        };
    }] remoteExec ["BIS_fnc_call"];
};
_spelunkersBlackout = {
    [[],{
        ["Alert",["All Spelunkers are blind!"]] call BIS_fnc_showNotification;
        if (vehicle player != player || !(side player == west || side player == civilian)) exitWith {};
        cutText ["","BLACK OUT",.5,true];
        sleep 10;
        cutText ["","BLACK IN",.5,true];
    }] remoteExec ["BIS_fnc_spawn"];
};
_monstersBlackout = {
    [[],{
        ["Alert",["All Monsters are blind!"]] call BIS_fnc_showNotification;
        if (vehicle player != player || !(side player == east)) exitWith {};
        cutText ["","BLACK OUT",.5,true];
        sleep 10;
        cutText ["","BLACK IN",.5,true];
    }] remoteExec ["BIS_fnc_spawn"];
};
_artyStrike = {
    params ["_corner","_mazeSize"];
    ["Alert",["Artillery inbound! Check your map!"]] remoteExec ["BIS_fnc_showNotification"];
    _size = 50;
    _center = [[(_corner select 0) + (_mazeSize * 2.5),(_corner select 1) + (_mazeSize * 2),0],random (_mazeSize * 2),random 360] call BIS_fnc_relPos;
    createMarker ["arty",_center];
    "arty" setMarkerShape "ELLIPSE";
    "arty" setMarkerSize [_size,_size];
    "arty" setMarkerBrush "Solid";
    "arty" setMarkerColor "ColorRed";
    sleep 10;
    for "_i" from 0 to 2*_size do {
        createVehicle ["G_40mm_HE",[(_center select 0) + (.5*_i*cos (_i*25)),(_center select 1) + (.5*_i*sin (_i*25)),20],[],0,"CAN_COLLIDE"] setVelocity [0,0,-10];
    };
    sleep 3;
    deleteMarker "arty";
};
_spelunkerShuffle = {
    ["Alert",["Spelunkers' locations will be shuffled!"]] remoteExec ["BIS_fnc_showNotification"];
    sleep 3;
    _units = [];
    _positions = [];
    {
        if (side _x == west || side _x == civilian) then {
            _units pushBack _x;
            _positions pushBack getPos _x;
        };
    } forEach allUnits;
    {
        _pos = _positions call BIS_fnc_selectRandom;
        _positions = _positions - [_pos];
        _x setPos _pos;
    } forEach _units;
};
_monsterShuffle = {
    ["Alert",["Monsters' locations will be shuffled!"]] remoteExec ["BIS_fnc_showNotification"];
    sleep 3;
    _units = [];
    _positions = [];
    {
        if (side _x == east) then {
            _units pushBack _x;
            _positions pushBack getPos _x;
        };
    } forEach allUnits;
    {
        _pos = _positions call BIS_fnc_selectRandom;
        _positions = _positions - [_pos];
        _x setPos _pos;
    } forEach _units;
};
_allShuffle = {
    ["Alert",["EVERYONE'S locations will be shuffled!"]] remoteExec ["BIS_fnc_showNotification"];
    sleep 3;
    _units = [];
    _positions = [];
    {
        if (side _x == west || side _x == east || side _x == civilian) then {
            _units pushBack _x;
            _positions pushBack getPos _x;
        };
    } forEach allUnits;
    {
        _pos = _positions call BIS_fnc_selectRandom;
        _positions = _positions - [_pos];
        _x setPos _pos;
    } forEach _units;
};

_topView = {
    [[],{
        if (!hasInterface) exitWith {};
        ["Alert",["Get ready for top down cam!"]] call BIS_fnc_showNotification;
        sleep 3;
        _marker = "VR_3DSelector_01_default_F" createVehicleLocal position player;
        _marker attachTo [player,[0,0,2]];
        _cam = "Land_HandyCam_F" createVehicleLocal [0,0,0];
        _cam hideObject true;
        _cam attachTo [player, [0,0,50]];
        _cam setVectorUp [0,0.99,0.01];
        _cam switchCamera "Internal";
        sleep 10;
        player switchCamera "Internal";
        deleteVehicle _cam;
        deleteVehicle _marker;
    }] remoteExec ["BIS_fnc_spawn"];
};

waitUntil {time > 15 + param_spelunkerHeadstart};
["Alert",["The monsters are loose!"]] remoteExec ["BIS_fnc_showNotification"];
waitUntil {time > 25 + param_spelunkerHeadstart}; //events start 10 seconds after monsters released.

while {param_eventFreq != 0} do {
    _event = [_pingSpelunkers,_pingMonsters,_spelunkersTrip,_monstersTrip,_spelunkersBlackout,_monstersBlackout,_artyStrike,_spelunkerShuffle,_monsterShuffle,_topView] call BIS_fnc_selectRandom;
    [_corner,_mazeSize] spawn _event;
    sleep param_eventFreq;
};