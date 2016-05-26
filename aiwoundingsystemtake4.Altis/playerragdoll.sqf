/*player addEventHandler ["AnimStateChanged", {
    if (_this select 1 == "incapacitated") then {
        player allowDamage false;
        player setPosWorld getPosWorld player;
        player allowDamage true;
    };
}]; 
KK_fnc_forceRagdoll = {
    if (vehicle player != player) exitWith {};
    private "_rag";
    _rag = "Land_Can_V3_F" createVehicleLocal [0,0,0];
    _rag setMass 1e10;
    _rag attachTo [player, [0,0,0], "Spine3"];
    _rag setVelocity [0,0,6];
    player allowDamage false;
    detach _rag;
    0 = _rag spawn {
        deleteVehicle _this;
        player allowDamage true;
    };
};

//to test
[] spawn {
    sleep 5; 
    call KK_fnc_forceRagdoll;
};*/