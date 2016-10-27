if (!isServer) exitWith {};

params ["_vic",["_test",false]];

if (isNil {dc_fnc_ext_clientInit}) then {
	dc_fnc_ext_clientInit = compileFinal preprocessFileLineNumbers "dc_vanillaDesant\fn_ext_clientInit.sqf";
	publicVariable "dc_fnc_ext_clientInit";
};
if (isNil {dc_fnc_ext_getIn}) then {
	dc_fnc_ext_getIn = compileFinal preprocessFileLineNumbers "dc_vanillaDesant\fn_ext_getIn.sqf";
};
if (isNil {dc_fnc_ext_getInClient}) then {
	dc_fnc_ext_getInClient = compileFinal preprocessFileLineNumbers "dc_vanillaDesant\fn_ext_getInClient.sqf";
	publicVariable "dc_fnc_ext_getInClient";
};
if (isNil {dc_fnc_ext_getOut}) then {
	dc_fnc_ext_getOut = compileFinal preprocessFileLineNumbers "dc_vanillaDesant\fn_ext_getOut.sqf";
};
if (isNil {dc_fnc_ext_getOutClient}) then {
	dc_fnc_ext_getOutClient = compileFinal preprocessFileLineNumbers "dc_vanillaDesant\fn_ext_getOutClient.sqf";
	publicVariable "dc_fnc_ext_getOutClient";
};

_vicConfigs = [
	["B_APC_Tracked_01_rcws_F",[0,-5.7,-1.5],[
		[[.9,-2.6,-.1],90,"passenger_inside_1_Idle",[2.5,-2.6,-1.1],90],      //middle, looking right
		[[-.9,-1.9,-.1],270,"passenger_inside_1_Idle",[-2.5,-1.6,-1.1],270],	   //middle, looking left, forward
		[[-.9,-2.6,-.1],270,"passenger_inside_1_Idle",[-2.5,-2.6,-1.1],270],    //middle, looking left, rear
		[[0,-2.6,-.1],0,"passenger_boat_4_Idle"],          //middle middle, looking forward
		[[1.45,-4.2,-.12],90,"passenger_inside_1_Idle",[2.5,-4.2,-1],90],   //rear right, looking right
		[[-1.45,-4.2,-.12],270,"passenger_inside_1_Idle",[-2.5,-4.2,-1],270], //rear left, looking left
		[[.9,-4.6,-.15],180,"passenger_bench_1_idle"],     //rear right, looking back
		[[-.9,-4.6,-.15],180,"passenger_bench_1_idle"],    //rear left, looking back
		[[0,-3.6,-.1],180,"passenger_bench_1_idle"],       //rear center, looking back
		[[1.3,-3.6,-.1],50,"passenger_inside_1_Idle",[2.3,-2.6,-1],50],     //right, diagonal forward
		[[-1.3,-3.6,-.1],-50,"passenger_inside_1_Idle",[-2.3,-2.6,-1],-50]    //left, diagonal forward
	]],
	["B_APC_Tracked_01_CRV_F",[0,-5.7,-1.5],[
		[[.9,-2.6,-.1],90,"passenger_inside_1_Idle",[2.5,-2.6,-1.1],90],      //middle, looking right
		[[-.9,-1.9,-.1],270,"passenger_inside_1_Idle",[-2.5,-1.6,-1.1],270],	   //middle, looking left, forward
		[[-.9,-2.6,-.1],270,"passenger_inside_1_Idle",[-2.5,-2.6,-1.1],270],    //middle, looking left, rear
		[[0,-2.6,-.1],0,"passenger_boat_4_Idle"],          //middle middle, looking forward
		[[1.3,-3.6,-.1],50,"passenger_inside_1_Idle",[2.3,-2.6,-1],50],     //right, diagonal forward
		[[-1.3,-3.6,-.1],-50,"passenger_inside_1_Idle",[-2.3,-2.6,-1],-50]    //left, diagonal forward
	]],
	["APC_Wheeled_02_base_F",[.35,-5.2,-1],[
		[[.35,-4.2,0],180,"passenger_bench_1_idle"],      //back middle
		[[-.4,-4.3,-.05],180,"passenger_bench_1_idle"],   //back left
		[[1.1,-4.3,-.05],180,"passenger_bench_1_idle"],   //back right
		[[.8,-3.6,0],90,"passenger_flatground_2_Idle",[1.8,-3.6,-1],90],   //side right
		[[-.2,-3.6,0],270,"passenger_flatground_2_Idle",[-1.2,-3.6,-1],270], //side left
		[[1.1,0,0],0,"passenger_inside_1_Idle",[1.1,2,-1],0],		  //front right
		[[.5,0,0],0,"passenger_inside_1_Idle",[.5,2,-1],0]			  //front left
	]],
	["O_APC_Tracked_02_cannon_F",[0,-5.8,-1],[
		[[-1.1,-4.8,-.25],180,"passenger_bench_1_idle"],  //back left
		[[1.1,-4.8,-.25],180,"passenger_bench_1_idle"],   //back right
		[[-.38,-4.5,-.25],180,"passenger_bench_1_idle"],  //back middle left
		[[.38,-4.5,-.25],180,"passenger_bench_1_idle"]    //back middle right
	]],
	["I_APC_Wheeled_03_cannon_F",[0,-5.8,-1.5],[
		[[1,-4.6,-.25],0,"passenger_flatground_2_Idle"],  //back right
		[[.3,-4.6,-.25],0,"passenger_flatground_2_Idle"], //back middle
		[[-.6,-4.3,-.25],225,"passenger_bench_1_idle",[-.7,-4.5,-.25],225],   //back left
		[[1.4,1.8,-.5],0,"passenger_inside_1_Idle",[1.4,3,-1],0],	  //front right
		[[.8,1.8,-.5],0,"passenger_inside_1_Idle",[.8,3,-1],0]  	  //front left
	]],
	["B_APC_Wheeled_01_cannon_F",[0,-5.8,-1.5],[
		[[-.2,-4.75,-1.8],-90,"passenger_boat_holdright"], //back left
		[[.35,-4.6,-1.77],50,"gunner_standup01"]		   //back right
	]],
	["B_MRAP_01_F",[0,-5,-1.5],[
		[[1.25,-1.4,-1.41],10,"passenger_boat_holdleft2",[1.7,-1.2,-1.4],90],  	//front right
		[[-1.4,-1.4,-1.41],0,"passenger_boat_holdright",[-1.7,-1.2,-1.4],-90],	//front left
		[[1.3,-2.1,-1.41],0,"passenger_boat_holdleft",[1.7,-2.1,-1.4],90], 		//back right
		[[-1.4,-2.1,-1.41],0,"passenger_boat_holdright2",[-1.7,-2.1,-1.4],-90]   //back left
	]],
	["MRAP_01_gmg_base_F",[0,-5,-2],[
		[[1.25,-1.4,-1.98],10,"passenger_boat_holdleft2",[1.7,-1.4,-2],90],  		//front right
		[[-1.4,-1.4,-1.98],0,"passenger_boat_holdright",[-1.7,-1.4,-2],-90],   //front left
		[[1.3,-2.1,-1.98],0,"passenger_boat_holdleft",[1.7,-2.1,-2],90], 		//back right
		[[-1.4,-2.1,-1.98],0,"passenger_boat_holdright2",[-1.7,-2.1,-2],-90]   //back left
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
		_unit = _grp createUnit ["B_Soldier_F",position _vic,[],0,"NONE"];
		_unit disableAI "ANIM";
		[_vic,_unit] call dc_fnc_ext_getIn;
	};
	_grp setBehaviour "SAFE";
};

_vic spawn {
	while {true} do {
		_slots = _this getVariable ["dc_ext_slots",[]];
		_badIdxs = [];
		{
			if (!isNull _x && {!alive _x || _x getVariable ["f_wound_down",false]}) then {
				_badIdxs pushBack _forEachIndex;
			};
		} forEach _slots;
		{
			detach (_slots select _x);
			_slots set [_x,objNull];
		} forEach _badIdxs;
		_this setVariable ["dc_ext_slots",_slots,true];
		sleep 1;
	};
};
