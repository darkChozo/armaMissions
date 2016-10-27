params ["_display","_side"];

_display setObjectTexture [0,format ["#(argb,512,512,1)r2t(helmetcam%1,1)",netId _display]];

_cam = "camera" camCreate [0,0,0];
_cam cameraEffect ["Internal", "Back", format ["helmetcam%1",netId _display]];

_groups = [];

{
	if (_x in [GrpNATO_DC,GrpNATO_ASL,GrpNATO_A1,GrpNATO_A2,GrpNATO_BSL,GrpNATO_B1,GrpNATO_B2] &&
		{count units _x > 0}) then {
		_groups pushBack [_x,units _x];
	};
} forEach allGroups;

if (count _groups == 0) exitWith {
	deleteVehicle _cam;
};

_display setVariable ["groups",_groups,true];
_display setVariable ["cam",_cam];
_display setVariable ["camTargetIdx",[0,0],true];


_display spawn {
	while {true} do {
		_camTarget = _this getVariable "groups" select (_this getVariable "camTargetIdx" select 0) select 1 select (_this getVariable "camTargetIdx" select 1);
		if (_camTarget == vehicle _camTarget) then {
			_this getVariable "cam" attachTo [_camTarget,[0,.1,0],"neck"];
		} else {
			_mempoints = ( configfile >> "CfgVehicles" >> (typeOf vehicle _camTarget) >> "memoryPointDriverOptics" ) call BIS_fnc_getCfgData;
			if (typeName _mempoints == "ARRAY") then {_mempoints = _mempoints select 0};
			_this getVariable "cam" attachTo [vehicle _camTarget,[0,0,0],_mempoints];
		};
		sleep .5;
	};
};

dc_hc_nextGroup = {
	params ["_display"];
	_idx = _display getVariable "camTargetIdx";
	_groups = _display getVariable "groups";
	_cam = _display getVariable "cam";
	_idx set [0,(_idx select 0) + 1];
	if (_idx select 0 >= count _groups) then {_idx set [0,0]};
	_idx set [1,0];
	_camTarget = _groups select (_idx select 0) select 1 select 0;
	_display setVariable ["idx",_idx,true];
};
dc_hc_nextUnit = {
	params ["_display"];
	_idx = _display getVariable "camTargetIdx";
	_groups = _display getVariable "groups";
	_cam = _display getVariable "cam";
	_idx set [1,(_idx select 1) + 1];
	if (_idx select 1 >= count (_groups select (_idx select 0) select 1)) then {_idx set [1,0]};
	_camTarget = _groups select (_idx select 0) select 1 select (_idx select 1);
	_display setVariable ["idx",_idx,true];
};

[_display,_display addAction ["Next Group",{[_this select 0] call dc_hc_nextGroup}]] spawn {
	while {true} do {
		_idx = _this select 0 getVariable "camTargetIdx";
		_group = _this select 0 getVariable "groups" select (_idx select 0);
		(_this select 0) setUserActionText [_this select 1,"Next Group",
			format ["Next Group<br/><t color='#9999ff'>Current: %1%2 %3</t>",
			_group select 0,(_idx select 1) + 1,name (_group select 1 select (_idx select 1))]];
		sleep .5;
	};
};
[_display,_display addAction ["Next Unit",{[_this select 0] call dc_hc_nextUnit}]] spawn {
	while {true} do {
		_idx = _this select 0 getVariable "camTargetIdx";
		_group = _this select 0 getVariable "groups" select (_idx select 0);
		(_this select 0) setUserActionText [_this select 1,"Next Unit",
			format ["Next Unit<br/><t color='#9999ff'>Current: %1%2 %3</t>",
			_group select 0,(_idx select 1) + 1,name (_group select 1 select (_idx select 1))]];
		sleep .5;
	};
};
