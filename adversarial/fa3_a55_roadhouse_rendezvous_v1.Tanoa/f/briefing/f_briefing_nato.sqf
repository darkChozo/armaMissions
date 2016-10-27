// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// FACTION: NATO

// ====================================================================================

waitUntil { !isNil {doubleCrossSides} };

// NOTES: CREDITS
// The code below creates the administration sub-section of notes.

_cre = player createDiaryRecord ["diary", ["Credits","
<br/>
Created by darkChozo.
<br/><br/>
Made with F3 (http://www.ferstaberinde.com/f3/en/)
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
<font size='18'>COMMS</font>
<br/>
You should be able to communicate with CSAT using CC. Feel free to coordinate your plans with them; just remember that they can't see side markers and Syndikat *can* see global markers.
<br/><br/>
<font size='18'>THE MEETING</font>
<br/>
The officers will be considered to be meeting if both are in the <marker name='meetingzone'>meeting area</marker>, close to each other, and have line of sight on each other. You should see messages when the meeting starts or is interrupted.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.


_missionText = "";
if (west in doubleCrossSides) then {
	_missionText = "
1. Escort our CO to the <marker name='meetingzone'>meeting area</marker>.<br/>
2. Protect our CO as he meets with the CSAT CO.<br/>
3. Once we've gotten the information we need, kill the CSAT CO.<br/>
4. Escort our CO out of the area.
<br/><br/>
Syndikat assassins are attempting to kill the officers, and CSAT may be planning to turn on us. Have fun!";
} else {
	_missionText = "
1. Escort our CO to the <marker name='meetingzone'>meeting area</marker>.<br/>
2. Protect our CO as he meets with the CSAT CO.<br/>
3. Escort our CO out of the area.
<br/><br/>
Syndikat assassins are attempting to kill the officers, and CSAT may be planning to turn on us. Have fun!";
};

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
" + _missionText + "
"]];

// ====================================================================================

_situationAdendum = "";
if (west in doubleCrossSides) then {
	_situationAdendum = "Of course, we don't have any plans of working with our enemies. We've got orders to pump the officer for information and then to eliminate him. Let's get this done.";
} else {
	_situationAdendum = "This could be huge for our efforts on Tanoa. Ensure that meeting goes on as planned and that our officer survives. That is, assuming CSAT doesn't pull a fast one on us...";
};

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
In light of increasing Syndikat activity on Tanoa, we've arranged a meeting with a CSAT officer to share tactical information and coordinate our counterinsurgency efforts on the island. We're not exactly on good terms at the moment, so we've agreed to meet on <marker name='meetingzone'>neutral ground</marker>, with both sides bringing an armed escort.
<br/><br/>" + _situationAdendum +
"<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
Syndikat seems to know about everything we do, and will likely try to disrupt the meeting. Keep an eye out.
"]];

// ====================================================================================