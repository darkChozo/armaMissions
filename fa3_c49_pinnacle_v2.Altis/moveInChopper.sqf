_leader = _this select 0;
_chopper = _this select 1;

if ({alive _x && isPlayer _x} count crew _chopper == 0) then {
    {
        unassignVehicle _x;
        _x setVehiclePosition [_chopper,[],0]
    } forEach crew _chopper;

    group _leader addVehicle _chopper;
    _leader assignAsDriver _chopper;
    _leader moveInDriver _chopper;
    if (count units group _leader > 1) then {
        units group _leader select 1 assignAsGunner _chopper;
        units group _leader select 1 moveInGunner _chopper;
    };
};