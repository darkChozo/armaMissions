_cam = "camera" camCreate [0,0,0];
_cam cameraEffect ["Internal","Back",format ["stealthrtt%1",netId _this]];
_cam attachTo [_this,[0,-1.5,.5]];
_cam camSetFov 2;
_cam setVectorDirAndUp [[0,0,-1],[0,1,0]];
_this setObjectTexture [0,format ["#(argb,512,512,1)r2t(stealthrtt%1,1)",netId _this]];
_this setObjectTexture [1,format ["#(argb,512,512,1)r2t(stealthrtt%1,1)",netId _this]];
unitBackpack _this setObjectTexture [0,format ["#(argb,512,512,1)r2t(stealthrtt%1,1)",netId _this]];