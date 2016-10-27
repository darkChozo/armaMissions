if (isServer) then {
	_potentialCaches = ["cache"] call ws_fnc_collectObjects;

	//systemChat format ["%1",_potentialCaches];
	//{ _mkr = createMarker [format ["%1",netId _x],position _x]; _mkr setMarkerShape "ICON"; _mkr setMarkerType "hd_dot"} forEach _potentialCaches;

	caches = [];
	cachesDestroyed = 0;
	for "_i" from 0 to param_numCaches - 1 do {
		_cache = selectRandom _potentialCaches;
		_cache addEventHandler ["Killed", {
			cachesDestroyed = cachesDestroyed + 1;
			["Alert",[format ["Cache %1/%2 destroyed!",cachesDestroyed,param_numCaches]]] remoteExec ["BIS_fnc_showNotification"];
		}];
		_potentialCaches = _potentialCaches - [_cache];
		_fullCache = nearestObjects [_cache,["ReammoBox_F"],30];
		caches pushBack _fullCache;
		{
			if (_x isKindOf "FIA_Box_Base_F") then {
				clearMagazineCargoGlobal _x;
				clearWeaponCargoGlobal _x;
				_x addWeaponCargoGlobal ["arifle_AKM_F",6];
				_x addWeaponCargoGlobal ["launch_RPG7_F",1];
				_x addWeaponCargoGlobal ["LMG_03_F",3];
				_x addMagazineCargoGlobal ["200Rnd_556x45_Box_F",40];
				_x addMagazineCargoGlobal ["30Rnd_762x39_Mag_F",10];
				_x addMagazineCargoGlobal ["RPG7_F",2];
			};
			_x addEventHandler ["HandleDamage", {
				_damage = _this select 2;
				if (!({(_this select 4) isKindOf _x} count ["PipeBombCore","RocketCore","BombCore","MissileCore","ShellCore"] > 0)) then {
					_damage = 0;
				};
				_damage
			}];
			_x addEventHandler ["Killed",{
				{
					_x setDamage 1;
				} forEach nearestObjects [_this select 0,["ReammoBox_F"],5];
			}];
		} forEach _fullCache;
	};
	{
		{ deleteVehicle _x } forEach nearestObjects [_x,["ReammoBox_F"],30];
	} forEach _potentialCaches;

	_potentialIntels = [intel] call ws_fnc_collectObjectsNum;
	_intelNum = 0;
	intels = [];
	{
		if (_forEachIndex < 5 max param_numCaches) then {
			_x setVariable ["intelNum",_intelNum,true];
			intels pushBack _x;
			_intelNum = _intelNum + 1;
			if (_intelNum >= param_numcaches) then { _intelnum = 0};
		} else {
			deleteVehicle _x;
		};
	} forEach _potentialIntels;

	publicVariable "intels";
	publicVariable "caches";
};

waitUntil {!isNil {caches} && !isNil {intels}};


{
	_x select 0 addMPEventHandler ["MPKilled", {
		_fire = "#particleSource" createVehicleLocal position (_this select 0);
		_fire setPos position (_this select 0);
		_fire setParticleClass "BigDestructionFire";
		_smoke = "#particleSource" createVehicleLocal position (_this select 0);
		_smoke setPos position (_this select 0);
		_smoke setParticleClass "BigDestructionSmoke";
		_light = "#lightpoint" createVehicleLocal position (_this select 0);
		_light lightAttachObject [_fire,[0,0,1]];
		_light setLightBrightness 1;
		_light setLightColor [.8,.35,.2];
	}];
} forEach caches;

{
	_x addAction ["Take Intel",{
		_cache = caches select (_this select 3);
		if (isNull (_cache select 0) || {!alive (_cache select 0) || !isNil {_cache select 0 getVariable "alreadyMarked"}}) then {
			["Alert",["Intel Found! But we already know about this cache..."]] remoteExec ["BIS_fnc_showNotification"];
		} else {
			["Alert",["Intel Found! Cache located!"]] remoteExec ["BIS_fnc_showNotification"];
			_mkr = createMarker [format ["cacheMkr%1",_this select 3],position (_cache select 0)];
			_mkr setMarkerShape "ICON";
			_mkr setMarkerType "hd_objective";
			_mkr setMarkerText "Cache";
			_cache select 0 setVariable ["alreadyMarked",true,true];
		};
		_mkr = createMarker [format ["intelMkr%1",_this select 3],position (_this select 0)];
		_mkr setMarkerShape "ICON";
		_mkr setMarkerType "mil_destroy";
		_mkr setMarkerDir 45;
		deleteVehicle (_this select 0);
	},_x getVariable "intelNum",6,true,true,"","_this distance _target < 4"];
} forEach intels;