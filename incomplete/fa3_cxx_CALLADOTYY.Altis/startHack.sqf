hackStarted = false;
hackCompelte = false;

_this addAction ["Start hack",{
    _laptop = "Land_laptop_unfolded_F" createVehicle position (_this select 0);
    _laptop attachTo [table2,[.1,.08,.55]];
    _laptop setDir 330;
    hackStarted = true;
    publicVariable "hackStarted";
},nil,6,true,true,"","!hackStarted"];

if (isServer) then {
    waitUntil {hackStarted};
    ["Alert",["Hack started!"]] remoteExec ["BIS_fnc_showNotification"];
    sleep 120;
    hackComplete = true;
    publicVariable "hackComplete";
};