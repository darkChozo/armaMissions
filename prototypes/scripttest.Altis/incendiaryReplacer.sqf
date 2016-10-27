_this addEventHandler ["Fired", {
    if (_this select 6 isKindOf "Grenade") then {
        _vel = velocity (_this select 6);
        _pos = _this select 6 modelToWorld [0,1,0];
        _vdir = vectordir (_this select 6);
        _vup = vectorUp (_this select 6);
        deleteVehicle (_this select 6);
        _shell = "IncinerateShell" createVehicle _pos;
        _shell setVectorDirAndUp [_vdir,_vup];
        _shell setVelocity _vel;
        _l = "Chemlight_yellow" createVehicle _pos;
        [_shell,_l] spawn { waitUntil {_this select 1 setPos getPos (_this select 0); _this select 0 == objNull} };
    };
}];