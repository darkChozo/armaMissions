params ["_obj","_value"];

_backside = "UserTexture10m_F" createVehicle position _obj;
_backside setPos position _obj;
_backside setVectorDirAndUp [[-(vectorDir _obj select 0),-(vectorDir _obj select 1),-(vectorDir _obj select 2)],
                             [(vectorUp _obj select 0),(vectorUp _obj select 1),(vectorUp _obj select 2)]];

switch (_value) do {
    case 100 : {
        _obj setObjectTexture [0,"img\100pts.paa"];
        _backside setObjectTexture [0,"img\100pts.paa"];
    };
    case 50 : {
        _obj setObjectTexture [0,"img\50pts.paa"];
        _backside setObjectTexture [0,"img\50pts.paa"];
    };
    case 25 : {
        _obj setObjectTexture [0,"img\25pts.paa"];
        _backside setObjectTexture [0,"img\25pts.paa"];
    };
    case 10 : {
        _obj setObjectTexture [0,"img\10pts.paa"];
        _backside setObjectTexture [0,"img\10pts.paa"];
    };
    case 5 : {
        _obj setObjectTexture [0,"img\5pts.paa"];
        _backside setObjectTexture [0,"img\5pts.paa"];
    };
};