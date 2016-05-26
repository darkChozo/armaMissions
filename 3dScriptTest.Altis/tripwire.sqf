params ["_from","_fromPointRel","_to","_toPointRel","_code",["_params",[]]];

if (isNil "dcDrawLine") then {
    dcDrawLine = true;
    addMissionEventHandler ["Draw3d",{
        {
            drawLine3d [_x select 0,_x select 1,[0,0,0,1]];
        } forEach dcTripwires;
    }];
};

if (!isServer) exitWith {};

_fromPoint = _from modelToWorld _fromPointRel;
_toPoint = _to modelToWorld _toPointRel;

if (isNil "dcTripwires") then {
    dcTripwires = []
};
dcTripwires pushBack [_fromPoint,_toPoint];
publicVariable "dcTripwires";

_from enableSimulationGlobal false;
_to enableSimulationGlobal false;

waitUntil {
    _tripped = lineIntersects [AGLToASL _fromPoint,AGLToASL _toPoint,_from,_to];
    if (!_tripped) then {
        _units = nearestObjects [_fromPoint, ["CAManBase"], 50];
        if (count _units > 0) then {
            {
                _intersectPlayer = [vehicle _x, "FIRE"] intersect [_fromPoint, _toPoint];
                if (count _intersectPlayer > 0) exitWith {_tripped = true};
            } forEach _units;
        };
    };
    _tripped
};

systemChat "WHOA";

_index = dcTripwires find [_fromPoint,_toPoint];
dcTripwires deleteAt _index;
publicVariable "dcTripwires";

if (typeName _code == "CODE") then {
    _params spawn _code;
} else {
    _params execVM _code;
};