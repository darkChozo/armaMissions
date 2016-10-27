_this setVariable ["armed",false];

bombTimer = {
    for "_i" from 1 to 40 do {
        playSound3d ["A3\Sounds_F\sfx\Beep_Target.wss",_this];
        sleep 1;
    };
};

_setOffBomb = {
    [[_this select 0,true], "lock",_this select 0] call BIS_fnc_MP;
    _this select 0 setVariable ["armed",true,true];
    _this select 1 playMove "Acts_carFixingWheel";
};

_this addEventHandler ["Killed",{
    createVehicle ["Bo_GBU12_LGB",position (_this select 0),[],0,"CAN_COLLIDE"] setDamage 1;
    if (_this select 0 distance bunker1 < 20) then {
        bunker1 setVariable ["destroyed",true,true];
    };
    if (_this select 0 distance bunker2 < 20) then  {
        bunker2 setVariable ["destroyed",true,true];
    };
}];

_this addAction ["Set Bomb Timer (40 seconds)",_setOffBomb,nil,0,true,true,"","_this distance _target < 5 && {alive _target} && {!(_target getVariable 'armed')} && {{alive _x} count crew _target == 0} && {speed _target < 5}"];

if (isServer) then {
    waitUntil {sleep 1; _this getVariable "armed"};
    sleep 15;
    for "_i" from 1 to 40 do {
        playSound3d ["A3\Sounds_F\sfx\Beep_Target.wss",_this];
        sleep 1;
    };
    [[_this,1], "setDamage", _this] call BIS_fnc_MP;
};