{
	if (group _x in [GrpFIA_CO,GrpFIA_ASL,GrpFIA_A1,GrpFIA_A2,GrpFIA_BSL,GrpFIA_B1,GrpFIA_B2]) then {
		_x moveInCargo transport1;
	} else {
		_x moveInCargo transport2;
	};
} forEach playableUnits;