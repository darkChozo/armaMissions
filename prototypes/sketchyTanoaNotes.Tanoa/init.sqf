enableSaving [false,false];
[player] execVM "fn_zeusInit.sqf";
[] execVM "r0ed_SurvivableCrashes\init.sqf";


_part = "#particleSource" createVehicleLocal position badman;
_part attachTo [badman,[0,0,.5]];
_part setParticleClass "ObjectDestructionFire1Smallx";
_part = "#particleSource" createVehicleLocal position badman;
_part attachTo [badman,[0,0,.5]];
_part setParticleClass "ObjectDestructionSmoke1_2Smallx";

_light = "#lightpoint" createVehicleLocal position badman;
_light lightAttachObject [badman,[0,0,2]];
_light setLightColor [.8,.3,.3];
_light setLightDayLight true;
_light setLightBrightness 1;
_light spawn {
	while {true} do {
		_this setLightBrightness (.9 + random .2);
		sleep .02;
	}
};


for "_xx" from -20 to 20 do {
	for "_yy" from -20 to 20 do {
		if (sqrt (_xx^2 + _yy^2) < 20) then {
			_square = createVehicle ["UserTexture10m_F",ASLToAGL (getPosASL lavasource vectorAdd [_xx * 10,_yy * 10,0]),[],0,"CAN_COLLIDE"];
			_square setVectorDirAndUp [[0,0,-1],[0,1,0]];
			_square setObjectTexture [0,"lavaTexture.jpg"];
		};
	};
};
_killplane = createTrigger ["EmptyDetector",getPos lavaSource];
_killplane setTriggerArea [200,200,0,false];
_killplane setTriggerActivation ["ANY","PRESENT",true];
_killplane setTriggerStatements ["{getPosASL _x select 2 < getPosASL lavaSource select 2} count thisList > 0","{ if (getPosASL _x select 2 < getPosASL lavaSource select 2) then {_x setDamage 1}} forEach thisList",""];
sleep 1;
{hideObject _x} forEach nearestTerrainObjects [lavasource,["TREE","BUSH","SMALL TREE"],200];