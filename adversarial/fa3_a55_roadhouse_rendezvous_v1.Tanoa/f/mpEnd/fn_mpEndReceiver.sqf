// F3 - Multiplayer Ending Controller
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// DECLARE VARIABLES AND FUNCTIONS

private ["_ending","_state"];

_ending = _this select 0;
_state = if (count _this > 1) then {_this select 1} else {true};

// ====================================================================================

// SERVER DELAY
// If this script is executing on the server a small delay is used.

if (isServer) then
{
// DEBUG
	if (f_param_debugMode == 1) then
	{
		player sideChat "DEBUG (f_fnc_mpEndReciever): This is the server.";
	};
};

// DEBUG
if (f_param_debugMode == 1) then
{
	player sideChat format ["DEBUG (f_fnc_mpEndReciever): _ending = %1, _state = %2",_ending,_state];
};

// ====================================================================================

// CLEAN-UP OBJECTIVES & TRIGGER CUT-SCENES ETC.
// This is an opportunity to set all objectives to pass/fail, trigger cut-scenes etc.
// depending on the ending that has been selected. Initially, we identify the desired
// ending using the parsed value. By default allowed values are: 1,2,3,4,5,6.


switch (_ending) do
{
// Ending #1
	case 1:
	{
// Place any custom code for ending #1 after this line:
	_message = "Results:\n\n";

	if (west in doubleCrossSides) then {
		if (east in doubleCrossSides) then {
			_message = _message + "Both sides had orders to double-cross."
		} else {
			_message = _message + "NATO had orders to double-cross."
		};
	} else {
		if (east in doubleCrossSides) then {
			_message = _message + "CSAT had orders to double-cross."
		} else {
			_message = _message + "Neither side had orders to double-cross."
		};
	};
	_message = _message + "\n";
	
	_message = _message + "The NATO CO is " + (if (alive UnitNATO_CO) then {"alive."}else{"dead."}) + "\n";
	_message = _message + "The CSAT CO is " + (if (alive UnitCSAT_CO) then {"alive."}else{"dead."}) + "\n";
	_message = _message + "The meeting was " + (if (meetingComplete) then {""}else{"not "}) + "completed.";
	
	_message remoteExec ["hint"];
	
	sleep 10;

// Do not allow custom code for ending #1 to continue after this comment.
	};

// Default
	default {

	};
};

// Using the integer we've got we use format to compile a string (e.g. "end1") and call the BIS function with it.
_ending = format ["end%1",_ending];
[_ending,_state] spawn BIS_fnc_endMission;

// ====================================================================================

// EXIT THE SPECTATOR SCRIPT IF IS OPEN
// Clients just "hang" if the mission has ended but are still inside the
// spectator script.
if (dialog) then
{
	closeDialog 0;
};

// ====================================================================================

