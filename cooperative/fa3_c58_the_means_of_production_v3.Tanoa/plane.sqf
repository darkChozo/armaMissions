_this addWeaponTurret ["LMG_M200",[-1]];
for "_i" from 1 to 3 do {
	_this addMagazineTurret ["200Rnd_65x39_Belt_Tracer_Yellow",[-1]];
};

_smokeAction = _this addAction ["Drop Smoke",{
	_this select 0 spawn {
		for "_i" from 1 to 5 do {
			createVehicle ["SmokeShell",_this modelToWorld [0,-1,-1],[],0,"CAN_COLLIDE"] setVelocity (velocity _this vectorMultiply .75);
			sleep .5;
		};
	};
	_this select 0 setVariable ["smokeLeft",(_this select 0 getVariable ["smokeLeft",0]) - 1,true];
},nil,1.5,false,true,"","_this in crew _target && 
						{!((isNull (_target getVariable ['controller',objNull]) && _this == driver _target) || _this == (_target getVariable ['controller',objNull])) &&
						_target getVariable ['smokeLeft',0] > 0}"];

_fragAction = _this addAction ["Drop Frags",{
	_this select 0 spawn {
		for "_i" from 1 to 3 do {
			createVehicle ["GrenadeHand",_this modelToWorld [0,-1,-1],[],0,"CAN_COLLIDE"] setVelocity (velocity _this vectorMultiply .75);
			sleep .5;
		};
	};
	_this select 0 setVariable ["fragsLeft",(_this select 0 getVariable ["fragsLeft",0]) - 1,true];
},nil,1.5,false,true,"","_this in crew _target && 
						{!((isNull (_target getVariable ['controller',objNull]) && _this == driver _target) || _this == (_target getVariable ['controller',objNull])) &&
						(_target getVariable ['fragsLeft',0] > 0)}"];

/*
_this addAction ["Drop Poison Gas",{
	_this select 0 spawn {
		for "_i" from 1 to 5 do {
			_nade = createVehicle ["Land_TacticalBacon_F",_this modelToWorld [0,-1,-1],[],0,"CAN_COLLIDE"];
			_nade setVelocity (velocity _this vectorMultiply .5);
			[_nade,{
				sleep 2;
				_particle = "#particlesource" createVehicleLocal getpos _this;
				_particle attachTo [_this,[0,0,0]];
				_particle setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal", 16, 7, 48], "", "Billboard", 1, 10, [0, 0, 0], [0, 0, .05], 1, 1.275, 1, 0.066, [0, 2, 4, 4], [[0.9, 0.9, 0.5, 0.5],[0.9, 0.9, 0.5, .5],[0.9, 0.9, 0.5, 0]], [0, 1], 1, 0, "", "", _this];
				_particle setParticleRandom [0, [0, 0, 0], [0.75, 0.75, .1], 0, 0.25, [0.05, 0.05, 0.05, 0.05], 0, 0];
				_particle setDropInterval 0.1;
				_particle setParticleFire [.02,10,1];
				waitUntil {sleep 1; isNil {_this} || {isNull _this}};
				deleteVehicle _particle;
			}] remoteExec ["BIS_fnc_spawn"];
			_nade spawn {sleep 45; deleteVehicle _this;};
			
			sleep .5;
		};
	};
}];*/

_bombAction = _this addAction ["Drop Improvised Bomb",{
	_bomb = createVehicle ["Land_MetalBarrel_F",(_this select 0) modelToWorld [0,-1,-1],[],0,"CAN_COLLIDE"];
	_bomb setVelocity (velocity (_this select 0) vectorMultiply .75);
	_bomb spawn {
		sleep 10;
		createVehicle ["SatchelCharge_Remote_Ammo_Scripted",position _this,[],0,"CAN_COLLIDE"] setDamage 1;
		deleteVehicle _this;
	};
	_this select 0 setVariable ["bombsLeft",(_this select 0 getVariable ["bombsLeft",0]) - 1,true];
},nil,1.5,false,true,"","_this in crew _target && 
						{!((isNull (_target getVariable ['controller',objNull]) && _this == driver _target) || _this == (_target getVariable ['controller',objNull])) &&
						(_target getVariable ['bombsLeft',0] > 0)}"];

[_this,_smokeAction,_fragAction,_bombAction] spawn {
	while {true} do {
		_this select 0 setUserActionText [_this select 1,format ["Drop Smoke Grenades (%1 left)",_this select 0 getVariable ["smokeLeft",0]]];
		_this select 0 setUserActionText [_this select 2,format ["Drop Frag Grenades (%1 left)",_this select 0 getVariable ["fragsLeft",0]]];
		_this select 0 setUserActionText [_this select 3,format ["Drop Improvised Bomb (%1 left)",_this select 0 getVariable ["bombsLeft",0]]];
		sleep 1;
	};
};

_this spawn {
	while {true} do {
		if (local _this && _this distance getMarkerPos "rearm" < 28) then {
			_this setFuel 1;
			_this setDamage 0;
			_this setVehicleAmmo 1;
			_this setVariable ["smokeLeft",5,true];
			_this setVariable ["fragsLeft",3,true];
			_this setVariable ["bombsLeft",2,true];
			["Alert",["Plane Rearmed"]] remoteExec ["BIS_fnc_showNotification",crew _this];
			sleep 60;
		};
		sleep 5;
	};
};

_this addEventHandler ["ControlsShifted",{ _this select 0 setVariable ["controller",_this select 1,true]; }];
