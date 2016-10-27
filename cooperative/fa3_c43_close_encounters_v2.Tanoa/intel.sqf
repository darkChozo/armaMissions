params ["_obj","_cachenum"];

if (_cacheNum > param_numCahes - 1) exitWith {deleteVehicle _obj};

_obj addAction ["Take Intel",{
	_cache = caches select (_this select 3);
	if (isNull (_cache select 0) || !alive (_cache select 0)) then {
		["Alert",["Intel Found! But we already destroyed this cache..."]] remoteExec ["BIS_fnc_showNotification"];
	} else {
		["Alert",["Intel Found! Cache located!"]] remoteExec ["BIS_fnc_showNotification"];
		_mkr = createMarker [format ["cacheMkr%1",_this select 3],position (_cache select 0)];
		_mkr setMarkerShape "ICON";
		_mkr setMarkerType "hd_objective";
		_mkr setMarkerText "Cache";
	};
	_mkr = createMarker [format ["intelMkr%1",_this select 3],position (_this select 0)];
	_mkr setMarkerShape "ICON";
	_mkr setMarkerType "mil_destroy";
	_mkr setMarkerText "Intel Collected";
	_mkr setMarkerDir 45;
	deleteVehicle (_this select 0);
},_cachenum,6,true,true,"","_this distance _target < 4"];