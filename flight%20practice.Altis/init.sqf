enableSaving [false,false];

lzs = [[],[],[]];

{
	_diff = _x getVariable "difficulty";
	if (isNil {_diff}) then {
		systemChat format ["bad lz: %1",_x];
	} else {
		lzs select _diff pushBack _x;
	};
} forEach allMissionObjects "Land_HelipadEmpty_F";

// for debug
markBadLzs = {
	{
		_theselzs = _x;
		_diff = _forEachIndex;
		{
			_mkr = createMarker [format ["%1",_x],position _x];
			_mkr setMarkerShape "ICON";
			_mkr setMarkerType "mil_dot";
			_mkr setMarkerColor (["ColorGreen","ColorYellow","ColorRed"] select _diff);
			_thislz = _x;
			if ({_thislz distance _x < 3000 && _thislz distance _x > 1000} count _theselzs <= 2) then {
				_mkr = createMarker [format ["%1",random 1],position _x];
				_mkr setMarkerShape "ICON";
				_mkr setMarkerType "hd_warning";
			};
		} forEach _x;
	} forEach lzs;
};

_lzMarker = createMarker ["lzMarker",[0,0,0]];
_lzMarker setMarkerShape "ICON";
_lzMarker setMarkerType "mil_objective";


_direcitonMarker = createMarker ["directionMarker",[0,0,0]];
_direcitonMarker setMarkerShape "ICON";
_direcitonMarker setMarkerType "mil_arrow";

lzDifficulties = [true,true,true];
smokeOnLZ = true;
arrowEnabled = true;


addMissionEventHandler ["EachFrame", {
	_dist = 80*(((abs speed player) / 25) + 1);
	if (!isNil {lz} && arrowEnabled && {_dist + 95 < player distance2d lz}) then {
		_dir = [player,lz] call BIS_fnc_dirTo;
		"directionMarker" setMarkerDir _dir;
		"directionMarker" setMarkerPos ([player,_dist,_dir] call BIS_fnc_relPos);
		"directionMarker" setMarkerAlpha 1;
	} else {
		"directionMarker" setMarkerAlpha 0;
	};
}];

_nade = "SmokeShellGreen_Infinite" createVehicle [0,0,0];

helicopterTypeNames = ["Littlebird","Hellcat","Orca","Mohawk","Taru","Huron"];
helicopterTypes = ["B_Heli_Light_01_F","I_Heli_light_03_unarmed_F","O_Heli_Light_02_unarmed_F","I_Heli_Transport_02_F","O_Heli_Transport_04_F","B_Heli_Transport_03_unarmed_F"];
helicopterType = 0;
respawnHelo = {
	deleteVehicle helo;
	helo = helicopterTypes select helicopterType createVehicle position lz;
	player moveInDriver helo;
};
player addAction ["<t color='#FF0000'>Respawn Helo</t>",respawnHelo];

player addAction ["<t color='#FF0000'>Config</t>",{
	createDialog "ConfigDialog";
}];

lz = objNull;
oldLz = objNull;
chooseNewLz = {
	_validLzs = [];
	{
		if (lzDifficulties select _forEachIndex) then {
			{
				_dist = _x distance player;
				if (_dist > 1000 && _dist < 3000 && _x != oldLz) then {
					_validLzs pushBack _x;
				};
			} forEach _x;
		};
	} forEach lzs;
	oldLz = lz;
	lz = selectRandom _validLzs;
	if (isNil {lz}) then {
		"lzMarker" setMarkerAlpha 0;
		["Alert",["Could not find valid LZ.<br/>Try updating your settings."]] call BIS_fnc_showNotification;
	};
};

while {true} do {
	call chooseNewLz;
	
	if (!isNil {lz}) then {
		"lzMarker" setMarkerPos position lz;
		"lzMarker" setMarkerAlpha 1;
		if (smokeOnLZ) then {
			_nade setPos position lz;
		} else {
			_nade setPos [0,0,0];
		};
		["TaskUpdated",["","New LZ Available"]] call BIS_fnc_showNotification;
	};
	
	waitUntil {
		sleep 1;
		
		!isNil {lz} && {getPos vehicle player select 2 < 2} && {vectorMagnitude velocity vehicle player < .01} && {player distance2D lz < 15}
	};
};
