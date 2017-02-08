if (!hasInterface) exitWith {};

snowS = "#particlesource" createVehicleLocal getpos player;
snowS setParticleCircle [0, [0, 0, 0]];
snowS setParticleRandom [0, [40, 40, 5], [10, 10, 1], 1, 0.025, [0, 0, 0, 0], 0, 0];
snowS setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal", 16, 12, 16,0], "", "Billboard", 1, 10, [0, 0, 6], [0, 0, -12], 0, 1, .6, .3, [.07], [[1, 1, 1, .6]], [1000], 1, 0, "", "", snowS];
snowS setDropInterval 0.0005;

onEachFrame {snowS setPosATL getPosATL player};

{
	_x spawn {
		while {alive _this} do {
			sleep (4*(1 - getFatigue _this) + random 1);
			drop [["\A3\data_f\ParticleEffects\Universal\Universal", 16, 12, 8,1], "", "Billboard", 1, 1 + random .5, _this selectionPosition "Head" vectorAdd [0,.02,0], [0, .5, 0], 1, 1.3, 1, .01, [.1,.5,.3], [[1, 1, 1, .5],[1, 1, 1, 0]], [1], 1, 0, "", "", _this];
			drop [["\A3\data_f\ParticleEffects\Universal\Universal", 16, 12, 8,1], "", "Billboard", 1, 1.5 + random 1, _this selectionPosition "Head" vectorAdd [0,.02,0], [0, .2, 0], 1, 1.3, 1, .01, [.1,.4,.3], [[1, 1, 1, .5],[1, 1, 1, 0]], [1], 1, 0, "", "", _this];
		};
	};
} forEach allUnits;

/*
_kickS = "#particlesource" createVehicleLocal getpos player;
_kickS attachTo [player,[0,0,0]];
_kickS setParticleCircle [0, [0, 0, 0]];
_kickS setParticleRandom [0, [30, 30, 2], [2, 2, 1], 3, .75, [0, 0, 0, 0], 0, 0];
_kickS setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal", 16, 12, 8,1], "", "Billboard", 1, 8, [0,0,-1], [0, 0, 2], 0, 1.4, 1, .2, [8,10], [[1,1,1,0],[1, 1, 1, .6],[1, 1, 1, 0]], [1], 1, 0, "", "", _this];
_kickS setDropInterval 0.3;
*/