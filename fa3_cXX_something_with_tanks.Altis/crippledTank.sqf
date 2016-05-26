_this spawn { //limit speed to ~20 kph
    waitUntil {
        _spd = vectorMagnitude (velocity _this);
        if (_spd > 6) then {
            _this setVelocity (vectorNormalized velocity _this vectorMultiply 5)
        };
        sleep .5;
        false
    };
};

if (isServer) then {
    _grp = createGroup civilian;
    _man = _grp createUnit ["C_man_1",position _this,[],0,"NONE"];
    _man moveInGunner _this;
    _man doWatch (_this modelToWorld [0,10,-.9]);
    _man spawn {
        sleep 2;
        vehicle _this setHitPointDamage ["HitTurret",1];
        vehicle _this setHitPointDamage ["HitEngine",.9];
        deleteVehicle _this;
    };
};

_this addAction [
    "Repair Vehicle",
    {
        _this select 1 playAction "MedicOther";
        {
            if (!(_x in ['HitEngine','HitTurret']) && _this select 0 getHitPointDamage _x > .6) then {
                (_this select 0) setHitPointDamage [_x,.6];
            };
            if (_x == 'HitEngine' && _this select 0 getHitPointDamage _x > .9) then {
                (_this select 0) setHitPointDamage [_x,.9];
            };
        } forEach (getAllHitPointsDamage (_this select 0) select 0);
    },
    nil,6,true,true,"","'ToolKit' in items _this &&
                        {!(_this in crew _target)} &&
                        {{(!(_x in ['HitEngine','HitTurret']) && _target getHitPointDamage _x > .6) || {_x == 'HitEngine' && _target getHitPointDamage _x > .9}} count (getAllHitPointsDamage _target select 0) > 0}"
];
