player addEventHandler ["HandleDamage",{
    _damage = _this select 2;
    player sideChat (_this select 4);
    if (_this select 4 == "SatchelCharge_Remote_Ammo_Scripted" || _this select 4 == "") then {
        _damage = 0;
    };
    _damage
}];

player addAction ["ROCKET JUMP", {
    createMine ["SatchelCharge_F",position player,[],0] setDamage 1;
    player setVelocity [velocity player select 0,velocity player select 1,20];
}];