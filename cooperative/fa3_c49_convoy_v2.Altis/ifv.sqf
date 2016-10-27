_veh = objNull;
_vision = true;
_survivors = true;

if (typeName _this == "ARRAY") then {
    _veh = _this select 0;
    _vision = _this select 1;
    if (count _this > 2) then {
        _survivors = _this select 2;
    };
} else {
    _veh = _this;
};
["v_ifv",_veh] call f_fnc_assignGear;

if (_vision && param_vision in [0,2]) then {
    _veh disableTIEquipment true;
};
if (_vision && param_vision in [0,1]) then {
    _veh disableNVGEquipment true;
};
_veh allowCrewInImmobile true;
_veh setUnloadInCombat [false,false];
[_veh, 
[["convoy",242],["highwaytohell",209],["attackofthe60ftlesbianoctopus",118],["magicbus",198],["holidayincambodia",225],["ohbondageupyours",169],["ofortuna",144]],
[["LeadTrack01a_F",162],["Track06_CarnHeli",111],["Track10_StageB_action",96],["Track04_Underwater1",96],["Track03_OnTheRoad",88]]] execVM "radio.sqf";

waitUntil {!isNil "survivorGroup"};
sleep 2;
if (isServer && count crew _veh > 0) then {
    _grp = createGroup independent;
    for '_i' from 7 to (6 - floor random 3) step -1 do {
        _unit = survivorGroup createUnit ["i_survivor_F", [0,0,0], [], 0, "FORM"];
        _unit moveInCargo [_veh,_i];
        if (isNil "lockCargoScript") then {
            lockCargoScript = {
                _this select 0 lockCargo [_this select 1, _this select 2];
            };
            publicVariable "lockCargoScript";
        };
        [_veh,_i,true] remoteExec ["lockCargoScript",_veh];
        if (random 1 > .5) then {
            _unit setDamage .7;
            _anim = getArray (configfile >> "CfgMovesMaleSdr" >> "States" >> animationState _unit >> "interpolateTo");
            _unit switchmove (_anim select 0);
        };
        _unit disableAI "ANIM";
        _unit disableAI "TARGET";
        _unit disableAI "AUTOTARGET";
        _unit disableAI "FSM";
        _unit disableAI "MOVE";
        _unit disableAI "CHECKVISIBLE";
    };
};