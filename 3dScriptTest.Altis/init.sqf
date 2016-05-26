enableSaving [false,false];

player addAction ["Call Down Drop Pod",compileFinal preprocessFileLineNumbers "dropPodAction.sqf"];


{
    [_x select 0,[-.08,0,0],_x select 1,[-.08,0,0],{
        for "_i" from 1 to 3 do {
            "GrenadeHand" createVehicle (position _this) setVelocity [random 1,random 1,0];
        }
    },_x select 2] execVM "tripwire.sqf";
} forEach [
            [trappost1a,trappost1b,trap1],
            [trappost2a,trappost2b,trap2]
          ];

{
    [_x select 0,[-.08,0,0],_x select 1,[-.08,0,0],{
        playSound3d ["A3\Sounds_F\Arsenal\weapons\LongRangeRifles\M320\M320_short_01.wss",_this];
        playSound3d ["A3\Sounds_F\Arsenal\weapons\LongRangeRifles\M320\M320_tail_interior.wss",_this];
        drop [["\A3\data_f\ParticleEffects\Universal\Universal", 16, 0, 32,0], "", "Billboard", 1, .5, [.9, .05, 0], [0, 0, 0], 1, 1.275, 1, 0, [0, .3,0], [[1, 1, 1, 1]], [4], 1, 0, "", "", _this];
        drop [["\A3\data_f\ParticleEffects\Universal\Universal", 16, 6, 16,0], "", "Billboard", 1, 1, [.9, .05, 0], [0, .5, 0], 1, 1.275, 1, 0, [0, 1], [[.5, .5, .5, 1]], [.7], 1, 0, "", "", _this];
        _round = "B_408_Ball" createVehicle (_this modelToWorld [.95,.05,0]);
        _round setVelocity (vectorDir _this vectorCrossProduct vectorUp _this vectorMultiply 1200);
    },_x select 2] execVM "tripwire.sqf";
} forEach [
            [trappost3a,trappost3b,trap3]
          ];

{
    [_x select 0,[-.08,0,0],_x select 1,[-.08,0,0],{
        for "_i" from 1 to 10 do {
            playSound3d ["A3\Sounds_F\Arsenal\weapons\Rifles\Katiba\Katiba_01.wss",_this];
            playSound3d ["A3\Sounds_F\Arsenal\weapons\Rifles\Katiba\Katiba_tail_interior.wss",_this];
            drop [["\A3\data_f\ParticleEffects\Universal\Universal", 16, 0, 32,0], "", "Billboard", 1, .5, [.5, .05, 0], [0, 0, 0], 1, 1.275, 1, 0, [0, .3,0], [[1, 1, 1, 1]], [4], 1, 0, "", "", _this];
            drop [["\A3\data_f\ParticleEffects\Universal\Universal", 16, 6, 16,0], "", "Billboard", 1, 1, [.5, .05, 0], [0, .5, 0], 1, 1.275, 1, 0, [0, 1], [[.5, .5, .5, 1]], [.7], 1, 0, "", "", _this];
            _round = "B_65x39_Case" createVehicle (_this modelToWorld [.5,0,0]);
            _round setVelocity (vectorDir _this vectorCrossProduct vectorUp _this vectorMultiply 1200);
            sleep .13;
        };
    },_x select 2] execVM "tripwire.sqf";
} forEach [
            [trappost4a,trappost4b,trap4]
          ];

if (isServer) then {
    sleep 10;
    for "_i" from 1 to 30 do {
        [] spawn {
            _pod = getMarkerPos "drop" call compile loadFile "dropPodRocket.sqf";
            pod = _pod;
            publicVariable "pod";

            _grp = createGroup west;
            _grp addVehicle _pod;
            for "_i" from 1 to 5 do {
                _grp createUnit ["B_Soldier_F",position _pod,[],0,"NONE"] moveInCargo _pod;
            };
            waitUntil {getPos _pod select 2 < 5};
            sleep 5;
            _grp leaveVehicle _pod;
        };
    };
};
