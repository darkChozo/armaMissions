if (!isServer) exitWith {};

chooseColor = {
    _color = "";
    switch (floor random 3) do {
        case 0 : {
            _color = "red";
            _this setObjectTextureGlobal [1,'#(argb,8,8,3)color(1,0,0,1)'];
        };
        case 1 : {
            _color = "green";
            _this setObjectTextureGlobal [1,'#(argb,8,8,3)color(0,1,0,1)'];
        };
        case 2 : {
            _color = "blue";
            _this setObjectTextureGlobal [1,'#(argb,8,8,3)color(0,0,1,1)'];
        };
    };
    _color
};

colorGrid = [];
for "_i" from 0 to 4 do {
    colorGrid pushBack [];
    for "_j" from 0 to 2 do {
        colorGrid select _i pushBack (["red","green","blue"] call BIS_fnc_selectRandom);
    };
};
publicVariable "colorGrid";

_bomb = _this call BIS_fnc_selectRandom;
{
    _marker = createMarker [format ["%1",_x], position _x];
    _marker setMarkerShape "ICON";
    _marker setMarkerType "mil_circle";

    if (_x != _bomb) then {
        deleteVehicle _x;
    } else {
        [_marker,{
            if (side player == east) then {
                _this setMarkerTextLocal "Detonator";
            };
        }] remoteExec ["BIS_fnc_call",0,true];
    };
} forEach _this;

_bomb execVM "actualBomb.sqf";
[_bomb,1] call BIS_fnc_dataTerminalAnimate;
_bomb setObjectTextureGlobal [0,"bomb0.jpg"];
_bomb setVariable ["color",_bomb call chooseColor];
_bomb setVariable ["counter",0];
_bomb setVariable ["colorChange",0];

[_bomb,["Press red button",{buttonGuess = "red"; publicVariableServer "buttonGuess";}]] remoteExec ["addAction",0,true];
[_bomb,["Press green button",{buttonGuess = "green"; publicVariableServer "buttonGuess";}]] remoteExec ["addAction",0,true];
[_bomb,["Press blue button",{buttonGuess = "blue"; publicVariableServer "buttonGuess";}]] remoteExec ["addAction",0,true];

bomb = _bomb;

"buttonGuess" addPublicVariableEventHandler {
    _targetColor = "";
    if (bomb getVariable "counter" < 5 && bomb getVariable "color" != "") then {
        _targetColor = colorGrid select (bomb getVariable "counter") select (["red","green","blue"] find (bomb getVariable "color"));
    };
    if (_this select 1 == _targetColor) then {
        //success!
        [bomb,"Beep_Target"] remoteExec ["say3d"];
        bomb setObjectTextureGlobal [1,'#(argb,8,8,3)color(0,0,0,0)'];
        bomb setVariable ["counter",(bomb getVariable "counter") + 1];
        bomb setVariable ["color",""];
        bomb setObjectTextureGlobal [0,format ["bomb%1.jpg",bomb getVariable "counter"]];
        bomb setVariable ["colorChange", time + 3];
        if (bomb getVariable "counter" >= 5) then {
            [1] call f_fnc_mpEnd;
        };
    } else {
        // failure...
        [bomb,"Simulation_Fatal"] remoteExec ["say3d"];
        bomb setVariable ["color",""];
        bomb setObjectTextureGlobal [1,'#(argb,8,8,3)color(0,0,0,0)'];
        bomb setVariable ["colorChange", time + 15];
    };
};

_prevTime = 0;
while {true} do {
    if (_bomb getVariable "colorChange" != _prevTime && {time > _bomb getVariable "colorChange"}) then {
        _bomb setVariable ["color", _bomb call chooseColor];
        _prevTime = _bomb getVariable "colorChange";
    };
    sleep 1;
};
