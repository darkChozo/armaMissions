private ["_trackerFactions","_trackedFactions","_updatePeriod","_gridResolution"];

sleep .1;


// "BLU_F", "BLU_G_F", "OPF_F", "OPF_G_F", "IND_F", "IND_G_F", "CIV_F"
_trackerFactions = _this select 0;
_trackedFactions = _this select 1;
_updatePeriod = 60;
if (count _this > 2) then {_updatePeriod = _this select 2;};
_gridResolution = 1;
if (count _this > 3) then {_gridResolution = _this select 3;};

//if (!(faction player in _trackerFactions)) exitWith {}; 

sleep 1;

_markers = [];
while {true} do {
    {_x setMarkerAlpha 0;} forEach _markers;
    {
        if (faction _x in _trackedFactions) then {
            _xx = floor ((position _x select 0) / (100 * _gridResolution));
            _y = floor ((position _x select 1) / (100 * _gridResolution));
            _marker = format ["tracker%1%2", _xx, _y];
            if (_marker in _markers) then {
                _marker setMarkerAlpha .5;
            } else {
                createMarkerLocal [_marker, [(_xx * 100 * _gridResolution) + (_gridResolution * 50),(_y * 100 * _gridResolution) + (_gridResolution * 50)]];
                _marker setMarkerShape "RECTANGLE";
				_marker setMarkerColor "ColorRed";
                _marker setMarkerAlpha .5;
                _marker setMarkerSize [_gridResolution * 50, _gridResolution * 50];
                _marker setMarkerType "mil_warning";
                _markers = _markers + [_marker];
            };
        };
    } forEach allUnits;
    sleep _updatePeriod;
};