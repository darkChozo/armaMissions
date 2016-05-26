_veh = player;
_vel = velocity player select 2;
for "_i" from 1 to 100 do {
    drop [
        ["\A3\data_f\ParticleEffects\Universal\Universal", 16, 0, 32,0],
        "",
        "Billboard",
        0, 
        1 + random 0.5,
        [0, -2, 1.5],
        [-20 + random 40, -20 + random 40, -15 + _vel],
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
        0.1
    ];
};