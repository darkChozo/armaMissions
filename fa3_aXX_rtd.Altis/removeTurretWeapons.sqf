/*
 *  Remove all weapons and magazines from the specified turret.
 *
 *	usage: [vehicle,turretPath] execVM "removeTurretWeapons.sqf";
 *	
 *	arguments:
 *		vehicle: the vehicle to remove weapons from
 *		turretpath: the turretpath of the turret to remove weapons to. You can
 *			get the turret path by sitting in the vehicle position and calling
 *			"hint format ["%1", assignedVehicleRole player]", which will give
 *			something like "["Turret",[0]]". The [0] is the turret path.
 *			[-1] is the driver and [0] is generally the main gunner.
 *
 *	example usage: nul = [this, [0]] execVM "removeTurretWeapons.sqf";
 *		When placed in the init field of a vehicle, this will remove all weapons
 *		and magazines from the main turret (ie. the gun on a technical, the
 *		gunner on an IFV, the only position on a static HMG).
 */

_veh = _this select 0;
_turretPath = _this select 1;

{_veh removeWeaponTurret [_x,_turretPath];} forEach (_veh weaponsTurret _turretPath);
{_veh removeMagazinesTurret [_x,_turretPath];} forEach (_veh magazinesTurret _turretPath);