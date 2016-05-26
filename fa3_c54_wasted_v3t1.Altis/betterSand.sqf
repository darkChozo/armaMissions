/*
	Parameter(s):
	_this select 0: OBJECT - Sandstorm center
	_this select 1 (Optional): NUMBER - particle refresh time
	_this select 2 (Optional): NUMBER - color brightness coeficient (1 - bright, 0 dark)
	_this select 3 (Optional): BOOL - true for flying newspapers

	Returns:
	ARRAY - Particle sources
*/
private ["_obj","_density","_colorCoef","_newspapers","_pos","_velocity","_relPos","_color","_alpha","_ps","_newsParams","_newsRandom","_newsCircle","_newsInterval","_times","_herald","_tribune","_result"];

_obj = _this select 0;
_density = .05;
_colorCoef = 1;
_newspapers = true;
_pos = position _obj;

//--- Dust
_duration = 4;
_velocity = [0,7,0];
_relPos = [0, 0, 0];
_color = [1.0 * _colorCoef, 0.9 * _colorCoef, 0.8 * _colorCoef];
_alpha = 0.2;
_ps = "#particlesource" createVehicleLocal _pos;  
_ps setParticleParams [["A3\Data_F\ParticleEffects\Universal\universal.p3d", 16, 12, 8, 0], "", "Billboard", 1, _duration, _relPos, _velocity, 1, 1.275, 1, 0, [5], [_color + [0], _color + [_alpha], _color + [0]], [1000], 1, 0, "", "", _obj];
_ps setParticleRandom [3, [500, 500, 0], [0, 0, 0], 1, 0, [0, 0, 0, 0.05], 0, 0];
_ps setParticleCircle [0.1, [0, 0, 0]];
_ps setDropInterval _density;
