bluforSpotted = true;

if (isServer) then {
    loudspeaker1 spawn {
        for "_i" from 1 to 150 do {
            if (alive _this) then {
                playSound3d ["A3\Sounds_F\sfx\siren.wss",_this,false,_this modelToWorld [0,0,10],3];
                sleep 2;
            };
        };
    };
};