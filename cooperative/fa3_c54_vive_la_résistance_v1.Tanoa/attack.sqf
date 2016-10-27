if ((isNil {hc} && !isServer) || (!isNil {hc} && (isServer || hasInterface))) exitWith {};

_infSpawns = ["infantryspawn"] call ws_fnc_collectMarkers;
_vicSpawns = ["vicSpawn"] call ws_fnc_collectMarkers;
_heliSpawns = ["heliSpawn"] call ws_fnc_collectMarkers;

_lastWaveGroups = [];
_firstWave = true;

// an active group has multiple people and isn't too far away
_activeGroupCond = {!(isNull _x || {{alive _x} count units _x <= 1} || {leader _x distance getMarkerPos "centerOfTown" > 275})};

{
	_numSquads = _x select 0;
	_vicsToSpawn = _x select 1;
	
	_infIdx = 0;
	_vicIdx = 0;
	_heliIdx = 0;
	
	_groups = [];
	_vicGroups = [];

	for "_i" from 1 to _numSquads do {
		waitUntil {
			sleep 1;
			{side _x == east} count allUnits < 90 ||
			_activeGroupCond count _lastWaveGroups <= 1
		};
		_grp = createGroup east;
		{
			_grp createUnit [_x,getMarkerPos (_infSpawns select _infIdx),[],10,"NONE"];
		} forEach ["O_T_Soldier_SL_F","O_T_Soldier_A_F","O_T_Soldier_LAT_F","O_T_Soldier_AR_F","O_T_Medic_F","O_T_Soldier_F","O_T_Soldier_F"];
		_groups pushBack _grp;
		{_x disableAI "PATH"} forEach units _grp;
		_infIdx = _infIdx + 1;
		if (_infIdx >= count _infSpawns) then {_infIdx = 0};
	};

	{
		waitUntil {
			sleep 1;
			{side _x == east} count allUnits < 90 ||
			_activeGroupCond count _lastWaveGroups <= 1
		};
		_vic = nil;
		switch (_x) do {
			case "lsv" : {
				_vic = "O_T_LSV_02_armed_F" createVehicle getMarkerPos (_vicSpawns select _vicIdx);
				createVehicleCrew _vic;
				_vicIdx = _vicIdx + 1;
				if (_vicIdx >= count _vicSpawns) then {_vicIdx = 0};
			};
			case "btr" : {
				_vic = "O_T_APC_Tracked_02_cannon_ghex_F" createVehicle getMarkerPos (_vicSpawns select _vicIdx);
				createVehicleCrew _vic;
				_vic lock 3;
				_vicIdx = _vicIdx + 1;
				if (_vicIdx >= count _vicSpawns) then {_vicIdx = 0};
			};
			case "marid" : {
				_vic = "O_T_APC_Wheeled_02_rcws_ghex_F" createVehicle getMarkerPos (_vicSpawns select _vicIdx);
				createVehicleCrew _vic;
				_vic lock 3;
				_vicIdx = _vicIdx + 1;
				if (_vicIdx >= count _vicSpawns) then {_vicIdx = 0};
			};
			case "tank" : {
				_vic = "O_T_MBT_02_cannon_ghex_F" createVehicle getMarkerPos (_vicSpawns select _vicIdx);
				createVehicleCrew _vic;
				_vic lock 3;
				_vicIdx = _vicIdx + 1;
				if (_vicIdx >= count _vicSpawns) then {_vicIdx = 0};
			};
			case "orca" : {
				_vic = "O_Heli_Light_02_F" createVehicle getMarkerPos (_heliSpawns select _heliIdx);
				createVehicleCrew _vic;
				_vic lock 3;
				_vicIdx = _vicIdx + 1;
				if (_vicIdx >= count _heliSpawns) then {_vicIdx = 0};
			};
			case "kajman" : {
				_vic = "O_Heli_Attack_02_F" createVehicle getMarkerPos (_heliSpawns select _heliIdx);
				_vic removeWeaponTurret ["missiles_SCALPEL",[0]];
				_vic removeMagazineTurret ["8Rnd_LG_scalpel",[0]];
				_vic removeWeaponTurret ["gatling_30mm",[0]];
				_vic removeMagazineTurret ["250Rnd_30mm_HE_shells_Tracer_Green",[0]];
				_vic addWeaponTurret ["autocannon_30mm",[0]];
				_vic addMagazineTurret ["140Rnd_30mm_MP_shells_Tracer_Green",[0]];
				_vic addMagazineTurret ["140Rnd_30mm_MP_shells_Tracer_Green",[0]];
				_vic addWeaponTurret ["GBU12BombLauncher",[0]];
				_vic addMagazineTurret ["2Rnd_GBU12_LGB",[0]];
				_vic addMagazineTurret ["2Rnd_GBU12_LGB",[0]];
				createVehicleCrew _vic;
				_vic lock 3;
				_vicIdx = _vicIdx + 1;
				if (_vicIdx >= count _heliSpawns) then {_vicIdx = 0};
			};
		};

		[_vic] call ws_fnc_betterVehicle;
		_grp = group (crew _vic select 0);
		{_x disableAI "PATH"} forEach units _grp;
		_vicGroups pushBack _grp;
	} forEach _vicsToSpawn;
	
	[] execVM "f\removeBody\f_addRemoveBodyEH.sqf";
	
	if (_forEachIndex == 0) then {sleep 90};

	waitUntil {
		sleep 5;
		_activeGroupCond count _lastWaveGroups <= 1
	};
	
	if (!(_forEachIndex == 0)) then {
		sleep 10;
		[arty1,1] remoteExec ["setVehicleAmmo",arty1];
		arty1 doArtilleryFire [[getMarkerPos "centerOfTown",random 160,random 360] call BIS_fnc_relPos,"32Rnd_155mm_Mo_shells",8];
		sleep 3;
		[arty2,1] remoteExec ["setVehicleAmmo",arty2];
		arty2 doArtilleryFire [[getMarkerPos "centerOfTown",random 160,random 360] call BIS_fnc_relPos,"32Rnd_155mm_Mo_shells",8];
		sleep 60;
	};
	{
		 while {(count (waypoints _x)) > 0} do {deleteWaypoint ((waypoints _x) select 0)};
		_x addWaypoint [[getMarkerPos "centerOfTown",random 85,random 360] call BIS_fnc_relPos,0] setWaypointType "SAD";
		{_x enableAI "PATH"} forEach units _x;
	} forEach _groups;
	
	
	sleep 30;
	
	{
		 while {(count (waypoints _x)) > 0} do {deleteWaypoint ((waypoints _x) select 0)};
		_wp = _x addWaypoint [[getMarkerPos "centerOfTown",random 100,random 360] call BIS_fnc_relPos,0];
		_wp setWaypointSpeed "LIMITED";
		{_x enableAI "PATH"} forEach units _x;
		sleep 20;
	} forEach _vicGroups;
	
	sleep 5;

	_lastWaveGroups = (_groups+_vicGroups);
	lastWaveGroups = _lastWaveGroups;
	publicVariable "lastWaveGroups";
} forEach [[6,["lsv","lsv"]],
           [8,["orca","lsv","marid","lsv","lsv"]],
		   [9,["orca","lsv","btr","lsv","tank","kajman"]]];

waitUntil {
	sleep 5;
	{!(isNull _x || {{alive _x} count units _x <= 1})} count _lastWaveGroups <=4; 
};

{
	 while {(count (waypoints _x)) > 0} do {deleteWaypoint ((waypoints _x) select 0)};
	_x addWaypoint [getMarkerPos "retreat",0];
} forEach _lastWaveGroups;

waitUntil {
	sleep 5;
	_count = 0;
	{_count = _count + ({alive _x && _x distance getMarkerPos "centerOfTown" < 275} count units _x)} foreach _lastWaveGroups;
	_count <= 2
};

[1] call f_fnc_mpEnd;