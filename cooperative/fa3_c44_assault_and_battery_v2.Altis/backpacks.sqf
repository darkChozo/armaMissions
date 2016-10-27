_this setVariable ["satchelsLeft", 4];
_this setVariable ["medikitsLeft", 1];

if (!hasInterface) exitWith {};

_satchelAction = _this addAction [format ["Take Satchel Charges (%1 left",_this getVariable "satchelsLeft"], {
    _this select 1 addBackpackGlobal "B_AssaultPack_ocamo";
    _this select 1 addItemToBackpack "SatchelCharge_Remote_Mag"; 
    _this select 1 addItemToBackpack "SatchelCharge_Remote_Mag"; 
    _this select 0 setVariable ["satchelsLeft", (_this select 0 getVariable "satchelsLeft") - 1, true];
},[],1.5,true,false,"","_target getVariable 'satchelsLeft' > 0 && backpack _this == '' && _this distance _target < 5"];


_medikitAction = _this addAction [format ["Take Medikit (%1 left",_this getVariable "medikitsLeft"], {
    _this select 1 addBackpackGlobal "B_AssaultPack_ocamo";
    _this select 1 addItemToBackpack "Medikit";
    _this select 0 setVariable ["medikitsLeft", (_this select 0 getVariable "medikitsLeft") - 1, true];
},[],1.5,true,false,"","_target getVariable 'medikitsLeft' > 0 && backpack _this == '' && _this distance _target < 5"];

while {(_this getVariable "satchelsLeft" > 0) || (_this getVariable "medikitsLeft" > 0)} do {
    _this setUserActionText [_satchelAction, format ["Take Satchel Charges (%1 left)",_this getVariable "satchelsLeft"]];
    _this setUserActionText [_medikitAction, format ["Take Medikit (%1 left)",_this getVariable "medikitsLeft"]];
    sleep 2;
};

_this removeAction _satchelAction;
_this removeAction _medikitAction;