if (!local _this) exitWith {};

_this addEventHandler ["Killed", {_this spawn {
    _killer = _this select 1;
    if (!(typeOf _killer == "B_MBT_01_cannon_F")) exitWith {};

    [["Alert", ["GOD IS ANGRY"]], "BIS_fnc_showNotification",crew _killer] call BIS_fnc_MP;

    sleep 5;

    if (isServer) then {
        _center = createCenter sideLogic;    
        _group = createGroup _center;
        _zlb = _group createUnit ["ModuleLightning_F",position _killer,[],0,""];
    };
    sleep .3;
    _killer setHitPointDamage ["HitLTrack", 1];
    _killer setHitPointDamage ["HitRTrack", 1];
    _killer setHitPointDamage ["HitTurret", 1];
    _killer setHitPointDamage ["HitGun", 1];
    
}}];

_this addEventHandler ["HandleDamage", {
    _damage = (_this select 2);
    if (_this select 4 in ["FuelExplosion","FuelExplosionBig","BasicAmmoExplosion"] && !(_this select 1 in ["glass_1","glass_2","glass_3","glass_4","glass_5"])) then {
        _damage = _damage * .2;
    };
    _damage
}];