_unit = _this;

if (!isServer) exitWith {};
sleep 10;
[_unit,"hololight",true,true,false] call BIS_fnc_MP;

_unit addEventHandler ["Killed", {
    (_this select 0) spawn {sleep 5; deleteVehicle _this;};
}];
_unit addEventHandler ["HandleDamage",{
    _unit = _this select 0;
    _selection = _this select 1;
    _damage = _this select 2;
    _damagescaling = .12;
    if (_this select 1 == "") then {
        _damage = damage _unit + (_damagescaling*((_damage - damage _unit)/100));
    } else {
        _damage = (_unit getHit _selection) +  (_damagescaling*(_damage - (_unit getHit _selection)));
    };
    _damage
}];
