/*_this addEventHandler ["Fired", {
    if (local (_this select 0)) then {
        _vel = (velocity (_this select 6)) vectorMultiply .05;
        _pos = _this select 6 modelToWorld [0,1,0];
        _vdir = vectordir (_this select 6);
        _vup = vectorUp (_this select 6);
        deleteVehicle (_this select 6);
        _shell = "IncinerateShell" createVehicle _pos;
        _shell setVectorDirAndUp [_vdir,_vup];
        _shell setVelocity _vel;
        _l = "Chemlight_yellow" createVehicle _pos;
        [_shell,_l] spawn { waitUntil {_this select 1 setPos getPos (_this select 0); _this select 0 == objNull} };
        _shell spawn {sleep 5; deleteVehicle _this;};
    };
}];*/

while {true} do {
    if (player == _this) then {
        _dist = 999999999;
        {
            if ((side _x == west || side _x == civilian) && _this distance _x < _dist) then {
                _dist = _this distance _x;
            };
        } forEach playableUnits;
        hint format ["Nearest spelunker is %1 meters away.",floor _dist];
        sleep 1;
    };
};