_this addEventHandler ["Fired",{
    systemChat "fired!";
    if (_this select 6 isKindOf "Flare_82mm_AMOS_White") then {
        systemChat "a flare";
        _this select 6 spawn {
            _shell = _this;
            waitUntil {vectorMagnitude velocity _shell < 5};
            _light = "#lightpoint" createVehicleLocal position _shell;
            _light lightAttachObject [_shell,[0,0,0]];
            _light setLightIntensity 1500;
            _light setLightColor [1,1,1];
            _light setLightUseFlare true;
            _light setLightFlareMaxDistance 2000;
            _light setLightFlareSize 30;
            _light setLightAttenuation [1, .005, .005, .003];
            waitUntil {
                _light setLightIntensity (1350 + random 300);
                isNull _shell
            };
            deleteVehicle _light;
        };
    };
}];