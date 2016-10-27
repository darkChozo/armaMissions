
_unit = _this select 0;

_unit setcaptive false;

if !(side _unit == west) exitWith{};

_action = _unit addaction ["Teleport",{_handle = [] execVM "teleportUnit.sqf"},"", 0, false,true,"","_this == player"];

player addEventHandler ["HandleDamage", {
    if ((isPlayer (_this select 3) || _this select 3 in playableUnits) &&
		{_this select 3 != player && _this select 3 != vehicle player &&
        player distance getMarkerPos "pvp" > 1000 &&
        player distance getMarkerPos "pvp_1" > 2000}) 
    then {
		[[],{
			if (vehicle player != player) then {
				player action ["Eject",vehicle player];
			};
			player playMoveNow "AmovPercMstpSnonWnonDnon_exercisePushup";
			hintSilent "Don't shoot your friends!";
		}] remoteExec ["BIS_fnc_spawn",_this select 3];
        if (true) exitWith {0};
    };
}];
