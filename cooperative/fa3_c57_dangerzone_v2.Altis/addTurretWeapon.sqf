/*
 *  Add a weapon and magazines to the specified vehicle turret.
 *
 *	usage: [vehicle,turretPath,weapon,magazines,numberOfMagazines] execVM "addTurretWeapon.sqf";
 *	
 *	arguments:
 *		vehicle: the vehicle to remove weapons from
 *		turretpath: the turretpath of the turret to remove weapons to. You can
 *			get the turret path by sitting in the vehicle position and calling
 *			"hint format ["%1", assignedVehicleRole player]", which will give
 *			something like "["Turret",[0]]". The [0] is the turret path.
 *			[-1] is the driver and [0] is generally the main gunner.
 *		weapon: the vehicle weapon to add to the vehicle (see
 *			https://community.bistudio.com/wiki/Arma_3_CfgWeapons_Vehicle_Weapons)
 *		magazines (optinoal): an array of magazines to add to the turret
 *		magazinesCount (optional): the number of each magazine to add.
 *			Default is 1.
 *
 *	example usage:
 *	nul = [this, [0], "cannon_105mm", ["40Rnd_105mm_APFSDS"]] execVM "addTurretWeapon.sqf";
 *		When placed in the init field of a vehicle, add a 105mm cannon and 40
 *		APFSDS shells to the main turret (ie. the gun on a technical, the
 *		gunner on an IFV, the only position on a static HMG). Note that light
 *		vehicles will likely have to have their mass increased to deal with the
 *		recoil.
 *
 *	nul = [this, [0], "mortar_155mm_AMOS", ["6Rnd_155mm_Mo_smoke", "2Rnd_155mm_Mo_LG"], 4] execVM "addTurretWeapon.sqf";
 *		When placed in the init field of a vehicle, add a 155mm howitzer, 24
 *		smoke shells and 8 laser-guided shells to the main turret.
 */

_veh = _this select 0;
_turretPath = _this select 1;
_weapon = _this select 2;
_magazines = [];
if (count _this > 3) then {_magazines = _this select 3;};
_magazinesCount = 1;
if (count _this >4) then {_magazinesCount = _this select 4;};

_veh addWeaponTurret [_weapon,_turretPath];
{
	for "_i" from 1 to _magazinesCount do {
		_veh addMagazineTurret [_x, _turretPath];
	};
} forEach _magazines;