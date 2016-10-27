_ps = "#particleSource" createVehicleLocal position _this;
_ps setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal", 16, 14, 5,1], "", "Billboard", 1, 10, [0, 0, .5], [0, 0, 0], 1, 1.275, 1, 0.066, [1], [[0, 0, 0, 1]], [1], 1, 0, "", "", _this];
_ps setParticleRandom [0,[2,2,.3],[.2,.2,0],1,.2,[0,0,0,0],0,0];
_ps setDropInterval 1;

if (isServer) then {
    while {true} do {
        playSound3d [format ["A3\Sounds_f\ambient\single_sfx\fly_%1.wss",ceil random 4],_this,false,getPosASL _this,.5];
        sleep random 10;
    };
};