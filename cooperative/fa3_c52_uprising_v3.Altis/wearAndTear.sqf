_veh = _this select 0;
_maxDamage = _this select 1;
_minFuel = 1 - _maxDamage;
if (count _this > 2) then { _minFuel = _this select 2 };

{_veh setHitPointDamage [_x,random _maxDamage]} forEach (getAllHitPointsDamage _veh select 0);
_veh setFuel (_minFuel + random (1-_minFuel));