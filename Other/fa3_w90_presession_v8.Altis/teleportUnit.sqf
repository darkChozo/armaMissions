

["MapClickTeleport",["Select Teleport Position"]] call BIS_fnc_showNotification;
openMap [true, false];
f_telePositionSelected = false;
f_telePosition = [0,0,0];
onMapSingleClick "f_telePosition = _pos; f_telePositionSelected = true;";
waitUntil {f_telePositionSelected};

player setPos f_telePosition;

openMap false;

["MapClickTeleport",["You have been moved to the selected location"]] call BIS_fnc_showNotification;