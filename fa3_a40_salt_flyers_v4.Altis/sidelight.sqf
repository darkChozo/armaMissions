private ["_target", "_side"];

_target = _this select 0;
_side = _this select 1;

_light = "#lightpoint" createVehicleLocal getPos _target;
_light attachTo [_target, [0,0,0]];
_light setLightBrightness 1;
switch (toUpper _side) do {
	case "RED": {
		_light setLightAmbient [1, 0, 0];
		_light setLightColor [1, 0, 0];
	};
	case "BLUE": {
		_light setLightAmbient [0, .1, 1];
		_light setLightColor [0, .1, 1];
	};
	case "GREEN": {
		_light setLightAmbient [0, 1, 0];
		_light setLightColor [0, 1, 0];
	};
	case "WHITE": {
		_light setLightAmbient [1, 1, 1];
		_light setLightColor [1, 1, 1];
	};
	case "YELLOW": {
		_light setLightAmbient [1, 1, 0];
		_light setLightColor [1, 1, 0];
	};
	default {
		_light setLightAmbient [0, 0, 0];
		_light setLightColor [0, 0, 0];
	};
};

while {true} do {
	if (!alive _target) then {
		{deleteVehicle _x;} forEach attachedObjects _target;
	};
	sleep 10;
};