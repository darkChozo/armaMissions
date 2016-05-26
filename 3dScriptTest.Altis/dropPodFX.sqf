if (!hasInterface) exitWith {};

_veh = _this;

_rocket = false;
{_veh setObjectTexture [_x,'#(argb,8,8,3)color(0.9,0.8,0.7,0.5)'];} forEach [0,1];
_soundSource = objNull;
while {position _veh select 2 > 20} do {
    if (player distance _veh < getObjectViewDistance select 0 && {_veh getVariable "rocketOn"}) then {
        if (!_rocket) then {
            _soundSource = "Logic" createVehicleLocal position _veh;
            _soundSource attachTo [_veh,[0,0,0]];
            _soundSource say3d "rocket";
            _rocket = true;
        };
        _veh spawn {
            for "_i" from 1 to 60 do {
                drop [
                    ["\A3\data_f\ParticleEffects\Universal\Universal", 16, 0, 32,0],
                    "",
                    "Billboard",
                    0,
                    1 + random 0.5,
                    [-.5 + random 1, -.5 + random 1, -2],
                    [-5 + random 10, -5 + random 10, -40 + (velocity _this select 2)],
                    1,
                    0.05,
                    0.04,
                    0, 
                    [0.5, 10 + random 20],
                    [
                        [1,1,1,1],
                        [1,1,1,0.3],
                        [1,1,1,0.1],
                        [1,1,1,0.03],
                        [1,1,1,0.01],
                        [1,1,1,0.003],
                        [1,1,1,0.001],
                        [1,1,1,0]
                    ],
                    [1],
                    0.1,
                    0.1,
                    "",
                    "",
                    _this,
                    random 360,
                    true,
                    .1
                ];
                sleep .01;
            };
        };
    };
    sleep .5;
};

_ps = "#particlesource" createVehicleLocal getpos _veh;
_ps setParticleParams [
                    ["\A3\data_f\ParticleEffects\Universal\Universal", 16, 0, 32,0],
                    "",
                    "Billboard",
                    0,
                    1 + random 0.5,
                    [-.5 + random 1, -.5 + random 1, -2],
                    [-5 + random 10, -5 + random 10, -40],
                    1,
                    0.05,
                    0.04,
                    0, 
                    [0.5, 10 + random 20],
                    [
                        [1,1,1,1],
                        [1,1,1,0.3],
                        [1,1,1,0.1],
                        [1,1,1,0.03],
                        [1,1,1,0.01],
                        [1,1,1,0.003],
                        [1,1,1,0.001],
                        [1,1,1,0]
                    ],
                    [1],
                    0.1,
                    0.1,
                    "",
                    "",
                    _veh,
                    random 360,
                    true,
                    .1
                ];
_ps setParticleRandom [.5,[0.5, 0.5, 0],[5,5,0],0,.5,[0,0,0,0],0,0];
_ps setDropInterval .005;
_ps attachTo [_veh,[0,0,-2]];
sleep 3;
deleteVehicle _ps;
if (_rocket) then {
    deleteVehicle _soundSource;
};
