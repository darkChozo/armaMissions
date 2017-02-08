_this animate ["HideTurret",1];

_gun = "I_HMG_01_A_F" createVehicle position _this;
_gun attachTo [_this,[1,-2.5,.65]];
createVehicleCrew _gun;
gunner _gun disableAI "TARGET"; gunner _gun disableAI "AUTOTARGET";
_gun removeWeaponTurret ["HMG_static",[0]];
_gun addWeaponTurret ["LMG_M200",[0]];
for "_i" from 1 to 5 do {
	_gun addMagazineTurret ["200Rnd_65x39_Belt_Tracer_Yellow",[0]];
};

_this removeWeaponTurret ["LMG_M200",[0]];
_this removeWeaponTurret ["missiles_titan",[0]];
_this removeWeaponTurret ["autocannon_30mm_CTWS",[0]];
_this addAction ["Control Gun",{_gun = gunner (attachedObjects (_this select 0) select 0); player remoteControl _gun; _gun switchCamera "INTERNAL";},nil,3,false,true,"","_this in _target && cameraOn == vehicle player"];