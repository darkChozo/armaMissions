[
    _this,
    ["sheriff",1],
    ["AddTread",0,"AddTread_Short",1,"AddCargoHook_COver",0]
] call BIS_fnc_initVehicle;

_this addAction ["Get In As Pilot (No DLC)",{_this select 1 moveInDriver (_this select 0)},nil,1.5,false,true,"","isNull driver _target && !(player in crew _target)"];
_this addAction ["Get In As Copilot (No DLC)",{_this select 1 moveInTurret [_this select 0,[0]]},nil,1.5,false,true,"","{assignedVehicleRole _x select 0 == 'Turret' && {assignedVehicleRole _x select 1 select 0 == 0}} count crew _target == 0 && !(player in crew _target)"];