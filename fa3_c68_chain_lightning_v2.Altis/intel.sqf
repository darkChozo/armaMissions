_intel = _this select 0;
_index = _this select 1;
_indexStr = format ["%1", _index];

_intel addAction ["Take Intel", {deleteVehicle (_this select 0);}];

if (side player in [west,sideLogic]) then {
    _marker = createMarkerLocal [format ["intel%1", _index], position _intel];
    _marker setMarkerTypeLocal "hd_objective";
    _marker setMarkerText "Camp"
};