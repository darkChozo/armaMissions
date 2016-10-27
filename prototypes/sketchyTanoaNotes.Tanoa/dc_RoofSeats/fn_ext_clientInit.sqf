
if (!hasInterface) exitWith {};

params ["_vic"];

waituntil {!isnull (finddisplay 46)};
findDisplay 46 displayAddEventHandler ["KeyDown",{
	_override = false;
	if (_this select 1 == 47 && !isNull attachedTo player) then {
		[attachedTo player,player] remoteExec ["dc_fnc_ext_getOut",2];
		_override = true;
	};
	_override
}];

_vic addAction ["Ride on Back",{_this remoteExec ["dc_fnc_ext_getIn",2]},nil,1.5,true,true,"","vehicle _this == _this &&
	!(_this in (_target getVariable ['dc_ext_slots',[]])) &&
	{isNull _x} count (_target getVariable ['dc_ext_slots',[]]) > 0 &&
	_this distance _target < 7"];

_vic spawn {
	_slotsConfig = _this getVariable ["dc_ext_config",nil] select 2;
	while {true} do {
		_slots = _this getVariable ["dc_ext_slots",[]];
		{
			if (!isNull _x && {animationState _x != _slotsConfig select _forEachIndex select 2}) then {
				_x switchMove (_slotsConfig select _forEachIndex select 2);
			};
		} forEach _slots;
	};
	sleep 1;
};