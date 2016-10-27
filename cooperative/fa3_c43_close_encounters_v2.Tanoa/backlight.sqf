_light = "#lightpoint" createVehicleLocal position _this;
_light lightAttachObject [_this, [0,0,0]];
_light setLightAmbient [1,1,1];
_light setLightAttenuation [1,2,5,0];
_light setLightBrightness 1;

backlight = _light;