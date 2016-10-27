private ["_target", "_side", "_cutoff"];

_target = _this select 0;
_side = _this select 1;
_cutoff = -1;
if (count _this > 2) then {_cutoff = _this select 2};

_light = "#lightpoint" createVehicleLocal getPos _target;
_light attachTo [_target, [0,0,1]];
_light setLightBrightness 1;
switch (toUpper _side) do {
	case "RED": {
		_light setLightAmbient [1, 0, 0];
		//_light setLightColor [1, 0, 0];
	};
	case "BLUE": {
		_light setLightAmbient [0, .1, 1];
		//_light setLightColor [0, .1, 1];
	};
	case "GREEN": {
		_light setLightAmbient [0, 1, 0];
		//_light setLightColor [0, 1, 0];
	};
	case "WHITE": {
		_light setLightAmbient [1, 1, 1];
		//_light setLightColor [1, 1, 1];
	};
	case "YELLOW": {
		_light setLightAmbient [1, 1, 0];
		//_light setLightColor [1, 1, 0];
	};
	default {};
};

if (_cutoff > 0) then {
    _light setLightAttenuation [_cutoff,1,1,1,_cutoff,_cutoff];
};

while {true} do {
    if (!alive _target) then {
        deleteVehicle _light;
    };
    sleep 10;
};