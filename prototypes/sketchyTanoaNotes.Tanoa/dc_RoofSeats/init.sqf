if (!isServer) exitWith {};

params ["_vic",["_test",false]];

if (isNil {dc_fnc_ext_clientInit}) then {
	dc_fnc_ext_clientInit = compileFinal preprocessFileLineNumbers "dc_RoofSeats\fn_ext_clientInit.sqf";
	publicVariable "dc_fnc_ext_clientInit";
};
if (isNil {dc_fnc_ext_getIn}) then {
	dc_fnc_ext_getIn = compileFinal preprocessFileLineNumbers "dc_RoofSeats\fn_ext_getIn.sqf";
};
if (isNil {dc_fnc_ext_getInClient}) then {
	dc_fnc_ext_getInClient = compileFinal preprocessFileLineNumbers "dc_RoofSeats\fn_ext_getInClient.sqf";
	publicVariable "dc_fnc_ext_getInClient";
};
if (isNil {dc_fnc_ext_getOut}) then {
	dc_fnc_ext_getOut = compileFinal preprocessFileLineNumbers "dc_RoofSeats\fn_ext_getOut.sqf";
};
if (isNil {dc_fnc_ext_getOutClient}) then {
	dc_fnc_ext_getOutClient = compileFinal preprocessFileLineNumbers "dc_RoofSeats\fn_ext_getOutClient.sqf";
	publicVariable "dc_fnc_ext_getOutClient";
};

_vicConfigs = [
	["APC_Tracked_01_base_F",[0,-5,-.5],[
		[[.9,-2.6,-.1],90,"passenger_inside_1_Idle"],      //middle, looking right
		[[-.9,-1.9,-.1],270,"passenger_inside_1_Idle"],	   //middle, looking left, forward
		[[-.9,-2.6,-.1],270,"passenger_inside_1_Idle"],    //middle, looking left, rear
		[[0,-2.6,-.1],0,"passenger_boat_4_Idle"],          //middle middle, looking forward
		[[1.45,-4.2,-.12],90,"passenger_inside_1_Idle"],   //rear right, looking right
		[[-1.45,-4.2,-.12],270,"passenger_inside_1_Idle"], //rear left, looking left
		[[.9,-4.6,-.15],180,"passenger_bench_1_idle"],     //rear right, looking back
		[[-.9,-4.6,-.15],180,"passenger_bench_1_idle"],    //rear left, looking back
		[[0,-3.6,-.1],180,"passenger_bench_1_idle"],       //rear center, looking back
		[[1.3,-3.6,-.1],50,"passenger_inside_1_Idle"],     //right, diagonal forward
		[[-1.3,-3.6,-.1],-50,"passenger_inside_1_Idle"]    //left, diagonal forward
	]],
	["APC_Wheeled_02_base_F",[.35,-5.2,-.5],[
		[[.35,-4.2,0],180,"passenger_bench_1_idle"],      //back middle
		[[-.4,-4.3,-.05],180,"passenger_bench_1_idle"],   //back left
		[[1.1,-4.3,-.05],180,"passenger_bench_1_idle"],   //back right
		[[.8,-3.6,0],90,"passenger_flatground_2_Idle"],   //side right
		[[-.2,-3.6,0],270,"passenger_flatground_2_Idle"], //side left
		[[1.1,0,0],0,"passenger_inside_1_Idle"]			  //front
	]],
	["APC_Tracked_02_base_F",[0,-5.8,-.5],[
		[[-1.1,-4.8,-.25],180,"passenger_bench_1_idle"],  //back left
		[[1.1,-4.8,-.25],180,"passenger_bench_1_idle"],   //back right
		[[-.38,-4.5,-.25],180,"passenger_bench_1_idle"],  //back middle left
		[[.38,-4.5,-.25],180,"passenger_bench_1_idle"]    //back middle right
	]]
	/*
	["Plane_Civil_01_base_F",[1,1.4,0],[
		[[-1.2,1.2,-.7],0,"passenger_bench_1_idle"],
		[[1.1,1.2,-.7],0,"passenger_bench_1_idle"],
		[[-2,1.15,-.65],0,"passenger_bench_1_idle"],
		[[2,1.15,-.65],0,"passenger_bench_1_idle"],
		[[-2.8,1.1,-.6],0,"passenger_bench_1_idle"],
		[[2.8,1.1,-.6],0,"passenger_bench_1_idle"],
		[[-3.6,1.1,-.55],0,"passenger_bench_1_idle"],
		[[3.6,1.1,-.55],0,"passenger_bench_1_idle"],
		[[-4.4,1.1,-.55],0,"passenger_bench_1_idle"],
		[[4.4,1.1,-.55],0,"passenger_bench_1_idle"],
		[[-.1,.2,.6],0,"passenger_boat_1_idle"]
	]]*/
];

_config = nil;
{
	if (_vic isKindOf (_x select 0)) exitWith {
		_config = _x;
	};
} forEach _vicConfigs;

if (isNil {_config}) exitWith {};

_vic setVariable ["dc_ext_config",_config,true];
_array = [];
_array resize count (_config select 2);
_vic setVariable ["dc_ext_slots",_array apply {objNull},true];

[_vic] remoteExec ["dc_fnc_ext_clientInit",0,true];

sleep .01;
if (_test) then {
	_grp = createGroup west;
	for "_i" from 1 to count (_config select 2) do {
		[_vic,_grp createUnit ["B_Soldier_F",position _vic,[],0,"NONE"]] call dc_fnc_ext_getIn;
	};
	_grp setBehaviour "SAFE";
};

_vic spawn {
	while {true} do {
		_slots = _this getVariable ["dc_ext_slots",[]];
		_badIdxs = [];
		{
			if (!isNull _x && { !alive _x}) then {
				_badIdxs pushBack _forEachIndex;
			};
		} forEach _slots;
		{
			detach (_slots select _x);
			_slots set [_x,objNull];
		} forEach _badIdxs;
		sleep 1;
	};
};
