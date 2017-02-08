if (!hasInterface) exitWith {};

params ["_obj","_type","_pos"];


switch _type do {
	case "smoke" : {
		_PS3 = "#particlesource" createVehicleLocal getPos _obj;
		_PS3 attachTo [_obj,_pos];
		_PS3 setParticleCircle [0, [0, 0, 0]];
		_PS3 setParticleRandom [0, [0, 0, 0], [0.5, 0.5, 0], 0, 0.25, [0.05, 0.05, 0.05, 0.05], 0, 0];
		_PS3 setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal_02", 8, 3, 1], "", "Billboard", 1, 15, [0, 0, 0.5], [0, 0, 4], 1, 1.275, 1, 0.066, [2, 5, 5, 10, 10], [[0.1, 0.1, 0.1, 0.75], [0.4, 0.4, 0.4, 0.5], [1, 1, 1, 0.2], [0, 0, 0, 0]], [0], 1, 0, "", "", _PS3];
		_PS3 setDropInterval 0.05;
	};
	case "fire" : {
		_ps = "#particleSource" createVehicle position _obj;
		_ps attachTo [_obj,_pos];
		_ps setParticleClass "ObjectDestructionFire2Smallx";
		_ps setDropInterval .05;
	};
};