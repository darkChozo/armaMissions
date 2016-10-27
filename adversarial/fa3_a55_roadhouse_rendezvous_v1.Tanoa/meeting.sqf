if (!isServer) exitWith {};

_meetingTime = 0;
_meetingHappening = false;
_meetingLength = 60 * param_meetingLength;
_doubleCrossTime = .5*_meetingLength + floor random (.5*_meetingLength);
_doubleCrossHappened = false;
meetingComplete = false;
publicVariable "meetingComplete";


while {_meetingTime < _meetingLength && alive UnitNATO_CO && alive UnitCSAT_CO} do {
	sleep 1;
	if (UnitNATO_CO inArea "meetingZone" &&
		UnitCSAT_CO inArea "meetingZone" &&
		vehicle UnitNATO_CO == UnitNATO_CO &&
		vehicle UnitCSAT_CO == UnitCSAT_CO &&
		UnitNATO_CO distance UnitCSAT_CO < 5 &&
		{!lineIntersects [ eyePos UnitNATO_CO, eyePos UnitCSAT_CO, UnitNATO_CO, UnitCSAT_CO]}) then {
		if (!_meetingHappening) then {
			_meetingHappening = true;
			["Alert",["The meeting has started"]] remoteExec ["BIS_fnc_showNotification",[east,west,sideLogic]];
		};
		_meetingTime = _meetingTime + 1;
		if (!_doubleCrossHappened && _meetingTime >= _doubleCrossTime && count doubleCrossSides > 0) then {
			["Alert",["We've gotten everything we need to know. It's time to finish the job."]] remoteExec ["BIS_fnc_showNotification",doubleCrossSides];
			_doubleCrossHappened = true;
		};
	} else {
		if (_meetingHappening) then {
			_meetingHappening = false;
			["Alert",["The meeting was interrupted"]] remoteExec ["BIS_fnc_showNotification",[east,west,sideLogic]];
		};
	};
};

if (alive UnitNATO_CO && alive UnitCSAT_CO) then {
	["Alert",["Meeting complete!"]] remoteExec ["BIS_fnc_showNotification",[east,west,sideLogic]];
	meetingComplete = true;
	publicVariable "meetingComplete";
};
