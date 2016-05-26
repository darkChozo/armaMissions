if (!isServer) exitWith {};

_stuff = ["B_Heli_Light_01_F","B_MRAP_01_F","O_MRAP_02_F","B_MBT_01_cannon_F","C_Hatchback_01_sport_F"];
//_stuff = ["B_APC_Tracked_01_CRV_F","B_Heli_Light_01_F","B_MRAP_01_F","C_Offroad_01_F","C_Boat_Civil_01_F","C_Hatchback_01_sport_F","O_MRAP_02_F","I_MRAP_03_F"];
sleep 15;

["Alert",["Look up!"]] remoteExec ["BIS_fnc_showNotification"];

_period = 1;

while {true} do {
    _thing = createVehicle [_stuff call BIS_fnc_selectRandom,[getPosATL stuffspawn select 0,(getPosATL stuffspawn select 1) - 12 + random 24,getPosATL stuffspawn select 2],[],0,"CAN_COLLIDE"];
    _thing allowDamage false;
    _thing setDir random 360;
    clearWeaponCargoGlobal _thing;
    clearMagazineCargoGlobal _thing;
    _thing setVectorUp [random 1, random 1, random 1];
    _thing lock true;
    _thing setVelocity [0,0,-15];
    _thing spawn {
        sleep 30;
        deleteVehicle _this;
    };
    if (time > 300) then {_period = .5};
    sleep _period;
};