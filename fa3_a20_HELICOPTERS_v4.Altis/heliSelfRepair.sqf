/* 
Simple script for self-repairing helicopters. ~35 seconds after losing a
module required for flight, all flight-required modules will be repaired.
Will not repair hull, sling, instruments or antitorque (real men don't need
atorque to fly).
*/

private ["_heli"];

_heli = _this select 0;

while {true} do {
	if (local _heli && (fuel _heli <= 0 || _heli getHitPointDamage "hitEngine" >= 1 || _heli getHitPointDamage "hitHRotor" >= 1 || _heli getHitPointDamage "hitFuel" >= 1)) then {
		if (driver _heli == player && alive player) then {hint "Self-repair initiated...";};
		sleep 30;
		if (fuel _heli <= 0) then {_heli setFuel 1;};
		if (_heli getHitPointDamage "hitEngine" >= 1) then {_heli setHitPointDamage ["hitEngine", .5]};
		if (_heli getHitPointDamage "hitHRotor" >= 1) then {_heli setHitPointDamage ["hitHRotor", .5];};
		if (_heli getHitPointDamage "hitFuel" >= 1) then {_heli setHitPointDamage ["hitFuel", 0];};
		if (driver _heli == player && alive player) then {hint "Self-repair complete!";};
	};
	sleep 10;
}