if (!isServer) exitWith {};

{
	_this setHitPointDamage [_x,random .8];
} forEach (getAllHitPointsDamage _this select 0);
_this setFuel random .8;