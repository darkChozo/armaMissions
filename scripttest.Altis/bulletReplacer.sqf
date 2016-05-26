_this addEventHandler ["Fired", {
    _replacement = "";
    if (_this select 6 isKindOf "B_93x64_Ball") then {_replacement = "B_12Gauge_Pellets"};
    if (_this select 6 isKindOf "SmokeShell") then {_replacement = "IncinerateShell"};
    if (_replacement != "") then {
        player sideChat format ["replacing %1 with %2",_this select 6,_replacement];
        _vel = vectorNormalized velocity (_this select 6) vectorMultiply getNumber (configFile >> "CfgAmmo" >> _replacement >> "typicalSpeed");
        _pos = _this select 6 modelToWorld [0,.5,0];
        _vdir = vectordir (_this select 6);
        _vup = vectorUp (_this select 6);
        deleteVehicle (_this select 6);
        _shell = _replacement createVehicle _pos;
        _shell setVectorDirAndUp [_vdir,_vup];
        _shell setVelocity _vel;
    };
}];