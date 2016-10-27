/*
 *	dc_fnc_ext_clientInit
 *
 *  Clientside init for Extra Seats. Sets up interface and animations.
 */
if (!hasInterface) exitWith {};

params ["_vic"];

// Set up getout keybind
if (isNil {dc_ext_getOutKeybind}) then {
	waituntil {!isnull (finddisplay 46)};
	findDisplay 46 displayAddEventHandler ["KeyDown",{
		_override = false;
		if (_this select 1 == 47 && !isNull attachedTo player) then {
			[attachedTo player,player] remoteExec ["dc_fnc_ext_getOut",2];
			_override = true;
		};
		_override
	}];
	dc_ext_getOutKeybind = true;
};

// Set up get in (on?) action
_vic addAction ["Ride on Back",{_this remoteExec ["dc_fnc_ext_getIn",2]},nil,1.5,true,true,"","vehicle _this == _this &&
	!(_this in (_target getVariable ['dc_ext_slots',[]])) &&
	{isNull _x} count (_target getVariable ['dc_ext_slots',[]]) > 0 &&
	_this distance _target < 7"];

// Set up animations for already-mounted units
_slotsConfig = _vic getVariable ["dc_ext_config",nil] select 2;
_slots = _vic getVariable ["dc_ext_slots",[]];
{
	if (!isNull _x ) then {
		_x switchMove (_slotsConfig select _forEachIndex select 2);
	};
} forEach _slots;
