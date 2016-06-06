params [["_object",nil,[objNull]],["_color",nil,["string"]],["_relPos",[0,0,0],[[]]]];
if (isNil {_object} || isNil {_color}) exitWith {"error in dc_fnc_airSmoke: invalid parameters"};

_colorArray = "";
switch (_color) do {
    case "red" : { _colorArray = [1,0,0] };
    case "green" : { _colorArray = [0,1,0] };
    case "blue" : { _colorArray = [0,0,1] };
    case "yellow" : { _colorArray = [1,1,0] };
    case "purple" : { _colorArray = [1,0,1] };
    case "cyan" : { _colorArray = [0,1,1] };
    case "black" : { _colorArray = [0,0,0] };
};

_ps = "#particlesource" createVehicleLocal getpos _object;
_ps attachTo [_object,_relPos];
_ps setParticleCircle [0, [0, 0, 0]];
_ps setParticleRandom [2, [0, 0, 0], [0.2, 0.2, 0.2], .5, 0.25, [0, 0, 0, 0.1], 0, 0];
_ps setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal", 16, 7, 48], "", "Billboard", 1, 16, _relPos, [0, 0, 0], 0, 10, 7.9, 0.066, [1.5, 20,25], [_colorArray + [1],_colorArray + [1],_colorArray + [1],_colorArray + [0],_colorArray + [0]], [0.05,0.1], 1, 0, "", "", _object];
_ps setDropInterval 0.05;

[_object,_ps] spawn {
    waitUntil {sleep 1; isNil {_this select 0} || {isNull (_this select 0) || !alive (_this select 0)}};
    deleteVehicle (_this select 1);
};