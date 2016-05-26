_teleporter = _this select 0;

if (isServer) then {
	createVehicle ["Land_HelipadCircle_F", _teleporter, [], 0, "CAN_COLLIDE"];
};

if (!isNil {_teleporter getVariable "broken"} && (_teleporter getVariable "broken")) exitWith {
	_teleporter addAction ["Initiate teleport to " + (_teleporter getVariable "desc"), {titleText ["It doesn't seem to be working.", "PLAIN"]}, [], 6, true, true, "", "(_this distance _target) < 8"];
};

_dest = _teleporter getVariable "dest";

_teleporter addAction ["Initiate teleport to " + (_dest getVariable "desc"), {
    _men = nearestObjects [_this select 0, ["Man"], 8];
    _light = "#lightpoint" createVehicle position (_this select 0);
    _light setLightColor [1,1,1];
    _light setLightBrightness 10;
    _light spawn {sleep .1; deleteVehicle _this};
    _light = "#lightpoint" createVehicle position (_this select 3);
    _light setLightColor [1,1,1];
    _light setLightBrightness 10;
    _light spawn {sleep .1; deleteVehicle _this};
    [["thunder_1", "thunder_2"] call BIS_fnc_selectRandom,"playSound",_men] call BIS_fnc_MP;
	{
        // put each person in same position relative to teleporter center
        // in other words, calculate an offset from source and add it to dest to get final pos
        _x setPosATL [(getPosATL _x select 0) - (getPosATL (_this select 0) select 0) + (getPosATL (_this select 3) select 0),
                      (getPosATL _x select 1) - (getPosATL (_this select 0) select 1) + (getPosATL (_this select 3) select 1),
                      (getPosATL _x select 2) - (getPosATL (_this select 0) select 2) + (getPosATL (_this select 3) select 2)];
    } forEach _men;
}, _dest, 6, true, true, "", "(_this distance _target) < 8"];