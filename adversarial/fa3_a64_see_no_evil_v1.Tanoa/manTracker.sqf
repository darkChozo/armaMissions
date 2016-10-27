if (!isServer) exitWith {};
sleep 5;

_interval = 90;
_radius = 300 + (6.3 * ({side _x == independent} count playableUnits));
_stepSize = (_radius / 70) * (_interval / 60);

_markers = [];
_idx = 0;
_time = 0;
while {true} do {
	_markers = [];
	{
		_unit = _x;
		if (alive _unit && {{_unit distance getMarkerPos _x < _radius} count _markers == 0}) then {
			_mkr = createMarker [format ["tracker%1",_idx],[position _unit,random (.6*_radius),random 360] call BIS_fnc_relPos];
			_mkr setMarkerShape "ELLIPSE";
			_mkr setMarkerSize [_radius,_radius];
			_mkr setMarkerBrush "SOLID";
			_mkr setMarkerColor "ColorCiv";
			_markers pushBack _mkr;
			[_mkr,_interval] spawn {
				sleep ((_this select 1) - 30);
				for "_i" from 20 to 0 step -1 do {
					_this select 0 setMarkerAlpha (_i/20);
					sleep 3;
				};
				deleteMarker (_this select 0);
			};
			_idx = _idx + 1;
		};
	} forEach units GrpNATO_SUR;
	if (testMode == 0) then {
		sleep _interval;
	} else {
		format ["time: %1 radius: %2",_time * (_interval/60),_radius] remoteExec ["systemChat"];
		sleep 2;
		{deleteMarker _x} forEach _markers;
	};
	_time = _time + 1;
	if (_radius > 50) then {
		_radius = _radius - _stepSize;
	};
};