_this addAction ["Equip Gear", {
    _gearAssigned = false;
    if (["_SL", format ["%1",_this select 1]] call BIS_fnc_inString)  then { ["dc",_this select 1] call f_fnc_assignGear; _gearAssigned = true;};
    if (["_M", format ["%1",_this select 1]] call BIS_fnc_inString)   then { ["m",_this select 1] call f_fnc_assignGear; _gearAssigned = true;};
    if (["_FTL", format ["%1",_this select 1]] call BIS_fnc_inString) then { ["ftl",_this select 1] call f_fnc_assignGear; _gearAssigned = true;};
    if (["_AR", format ["%1",_this select 1]] call BIS_fnc_inString)  then { ["ar",_this select 1] call f_fnc_assignGear; _gearAssigned = true;};
    if (["_AT", format ["%1",_this select 1]] call BIS_fnc_inString)  then { ["rat",_this select 1] call f_fnc_assignGear; _gearAssigned = true;};
    if (["_R", format ["%1",_this select 1]] call BIS_fnc_inString)   then { ["aar",_this select 1] call f_fnc_assignGear; _gearAssigned = true;};
    if (!_gearAssigned) then {["r",_this select 1] call f_fnc_assignGear;};
    _this select 1 setVariable ["needsEquipment",false,true];
},nil,6,true,true,"","!isNil {_this getVariable 'needsEquipment'} && {_this getVariable 'needsEquipment' && _this distance _target < 4}"];