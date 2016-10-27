if (!isServer) exitWith {};

while {true} do {
	if (dayTime > 1.01 && dayTime < 6) then {
		_shell = "F_40mm_Red" createVehicle ([position _this,random 50,random 360] call BIS_fnc_relPos vectorAdd [0,0,200]);
		_shell setVelocity [0,0,-.01];
		[_shell,{
            _shell = _this;
            sleep 3;
            _light = "#lightpoint" createVehicleLocal position _shell;
            _light lightAttachObject [_shell,[0,0,0]];
            _light setLightIntensity 1500;
            _light setLightColor [1,.2,.2];
            _light setLightUseFlare true;
            _light setLightFlareMaxDistance 2000;
            _light setLightFlareSize 30;
            _light setLightAttenuation [1, .005, .005, .003];
            waitUntil {
                _light setLightIntensity (1350 + random 350);
                isNull _shell
            };
            deleteVehicle _light;
        }] remoteExec ["BIS_fnc_spawn"];
		sleep (20 + random 5);
	};
};

/*
_angle = 0;
while {true} do {
	if (dayTime > 1.01 && dayTime < 6) then {
		[flareLauncher,1] remoteExec ["setVehicleAmmo",flareLauncher];
		flareLauncher doArtilleryFire [[position _this,random 40,random 360] call BIS_fnc_relPos,"8Rnd_82mm_Mo_Flare_white",1];
		sleep (20 + random 5);
	};
};*/