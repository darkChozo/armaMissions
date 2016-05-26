params ["_car","_class"];
sleep .01;

_driver = driver _car;
if (!isNull _driver) then {
    _driver allowDamage false;
    _driver linkItem "ItemGPS";
    _car setVariable ["driver",_driver];
    _driver setVariable ["car",_car];
};
if (isNull _driver) exitWith {
    if (isServer) then {
        deleteVehicle _car
    };
};
_car addEventHandler ["GetIn",{
    if (_this select 2 == player && player != _this select 0 getVariable "driver") then {
        ["Alert",["That's not your car!"]] call BIS_fnc_showNotification;
        player action ["Eject",_this select 0];
    };
}];

_car allowDamage false;
_car addAction ["Flip car",{
    _this select 0 setPos [getPos (_this select 0) select 0,getPos (_this select 0) select 1, (getPos (_this select 0) select 2) + 1];
    _this select 0 setVectorUp [0,0,1]
},nil,5.2,true,true,"","isNull driver _target && _this == _target getVariable 'driver'"];
if (_driver == player) then {
    player addAction ["Reset to last checkpoint",{
        player moveInDriver (_this select 3);
        (_this select 3) setPos lastCheckpoint;
    },_car,1,false,true];
};
_car setFuel 0;

if (isNil {numRacers}) then {numRacers = 0};
numRacers = numRacers + 1;

_spawnMarker = {
    params ["_unit","_color"];
    _mkr = createMarkerLocal [format ["%1",_unit],position _unit];
    _mkr setMarkerShapeLocal "ICON";
    _mkr setMarkerTypeLocal "mil_triangle";
    _mkr setMarkerColorLocal _color;
    _mkr setMarkerTextLocal name _unit;
    _mkr setMarkerAlphaLocal .5;
    _mkr setMarkerDirLocal getDir _unit;
    _mkr setMarkerSize [.5,.5];
    [_unit,_mkr] spawn {
        while {true} do {
            (_this select 1) setMarkerPosLocal position (_this select 0);
            (_this select 1) setMarkerDirLocal getDir (_this select 0);
            sleep .2;
        };
    };
};

switch (_class) do {
    case "fuel" : {
        _car setObjectTextureGlobal [0,'#(argb,8,8,3)color(0.05,0.6,0.05,0.5)'];
        if (!isNull _driver) then {
            _driver addUniform "U_C_Driver_1";
            _driver addHeadgear "H_RacingHelmet_1_F";
            [_driver,"ColorGreen"] call _spawnMarker;
        };
    };
    case "redstone" : {
        _car setObjectTextureGlobal [0,'#(argb,8,8,3)color(0.8,0.6,0.15,0.5)'];
        if (!isNull _driver) then {
            _driver addUniform "U_C_Driver_3";
            _driver addHeadgear "H_RacingHelmet_3_F";
            [_driver,"ColorYellow"] call _spawnMarker;
        };
    };
    case "bluking" : {
        _car setObjectTextureGlobal [0,'#(argb,8,8,3)color(0.05,0.05,0.6,0.5)'];
        if (!isNull _driver) then {
            _driver addUniform "U_C_Driver_2";
            _driver addHeadgear "H_RacingHelmet_2_F";
            [_driver,"ColorBlue"] call _spawnMarker;
        };
    };
    case "vrana" : {
        _car setObjectTextureGlobal [0,'#(argb,8,8,3)color(0.15,0.15,0.15,0.5)'];
        if (!isNull _driver) then {
            _driver addUniform "U_C_Driver_4";
            _driver addHeadgear "H_RacingHelmet_4_F";
            [_driver,"ColorBlack"] call _spawnMarker;
        };
    };
    case "red" : {
        _car setObjectTextureGlobal [0,'#(argb,8,8,3)color(0.6,0.15,0.15,0.5)'];
        if (!isNull _driver) then {
            _driver addUniform "U_C_Driver_1_red";
            _driver addHeadgear "H_RacingHelmet_1_red_F";
            [_driver,"ColorRed"] call _spawnMarker;
        };
    };
    case "white" : {
        _car setObjectTextureGlobal [0,'#(argb,8,8,3)color(0.9,0.9,0.9,0.5)'];
        if (!isNull _driver) then {
            _driver addUniform "U_C_Driver_1_white";
            _driver addHeadgear "H_RacingHelmet_1_white_F";
            [_driver,"ColorWhite"] call _spawnMarker;
        };
    };
    case "orange" : {
        _car setObjectTextureGlobal [0,'#(argb,8,8,3)color(0.55,0.25,0,0.5)'];
        if (!isNull _driver) then {
            _driver addUniform "U_C_Driver_1_orange";
            _driver addHeadgear "H_RacingHelmet_1_orange_F";
            [_driver,"ColorWhite"] call _spawnMarker;
        };
    };
};

waitUntil {!isNil {startTime} && {serverTime > startTime}};
_car setFuel 1;