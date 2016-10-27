params ["_unit","_uav"];
{
	if (_x != _uav && !(_x isKindOf "B_UAV_01_F")) then {
		_unit disableUAVConnectability [_x,true];
	};
} forEach allUnitsUAV;