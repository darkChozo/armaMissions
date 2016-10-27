_light = "#lightpoint" createVehicleLocal position _this;
_light lightAttachObject [_this, [0,0,0]];
_light setLightColor [1,1,1];
_light setLightBrightness .5;

light = _light;