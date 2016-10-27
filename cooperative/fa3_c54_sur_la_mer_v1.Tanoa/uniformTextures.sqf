for "_i" from 1 to 5 do {
	{
		if (uniform _x == "U_B_CombatUniform_mcam") then {
			_x setObjectTexture [0, "\a3\characters_f\BLUFOR\Data\clothing_wdl_co.paa"];
		};
	} forEach allUnits;
	sleep 15;
};
