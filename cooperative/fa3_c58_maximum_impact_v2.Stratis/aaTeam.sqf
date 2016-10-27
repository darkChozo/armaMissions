_team = group _this;
_leader = leader _team;

_leader setVariable ["verified",false];
if (hasInterface) then {
    {
        _x setVariable ["leader", _leader]; // need to do this because dead groups
        _x addAction ["Verify Kill",{_this select 0 getVariable "leader" setVariable ["verified",true,true]},nil,6,true,true,"","!alive _target && !(_target getVariable 'leader' getVariable 'verified')"];
    } forEach units _team;
};

if (isServer) then {
    {
        doStop _x;
        _x limitSpeed 0;
        _x disableAI "TARGET";
    } forEach units _team;
    waitUntil {sleep .5; (_leader getVariable "verified")};
    aaTeamsDead = aaTeamsDead + 1;
    [["Alert",[format ["AA Team %1/3 Taken Out",aaTeamsDead]]],"BIS_fnc_showNotification"] call BIS_fnc_MP;
};