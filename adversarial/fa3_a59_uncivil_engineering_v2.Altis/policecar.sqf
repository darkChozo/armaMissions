[
    _this,
    ["white",1],
    ["hidePolice",0,"BeaconsStart",1,"HideGlass2",1,"HideBumper1",0,"HideConstruction",0,"Proxy",0,"Destruct",0]
] call BIS_fnc_initVehicle;

if (!hasInterface) exitWith {};

_this setVariable ["siren",false];
_this addAction ["Turn On Siren",{(_this select 0) setVariable ["siren",true,true]},nil,0,false,false,"","!(_target getVariable 'siren') && _this == driver _target"];
_this addAction ["Turn Off Siren",{(_this select 0) setVariable ["siren",false,true]},nil,0,false,false,"","(_target getVariable 'siren') && _this == driver _target"];

while {true} do {
    if (_this getVariable "siren") then {
        _this say3d "AlarmCar";
        sleep 2;
    } else {
        sleep 1;
    };
};