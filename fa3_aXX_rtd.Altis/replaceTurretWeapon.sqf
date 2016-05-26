/*
 *  Like addTurretWeapon but removes all existing weapons first.
 *
 *	usage: [vehicle,turretPath,weapon,magazines,numberOfMagazines] execVM "replaceTurretWeapon.sqf";
 *	
 *	Usage is identical to addTurretWeapon, see that documentation for more
 *	details.
 */

_veh = _this select 0;
_turretPath = _this select 1;
_weapon = _this select 2;
_magazines = [];
if (count _this > 3) then {_magazines = _this select 3;};
_magazinesCount = 1;
if (count _this > 4) then {_magazinesCount = _this select 4;};

script = [_veh, _turretPath] execVM "removeTurretWeapons.sqf";
waitUntil {scriptDone script};
[_veh, _turretPath, _weapon, _magazines, _magazinesCount, 4] execVM "addTurretWeapon.sqf";