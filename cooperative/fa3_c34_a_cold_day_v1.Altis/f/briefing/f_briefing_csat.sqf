// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// FACTION: CSAT

// ====================================================================================

// NOTES: CREDITS
// The code below creates the administration sub-section of notes.

_cre = player createDiaryRecord ["diary", ["Credits","
<br/>
Created by darkChozo.
<br/><br/>
Made with F3 (http://www.ferstaberinde.com/f3/en/)
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Eliminate all FIA forces in the <marker name='ao'>AO</marker>.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
Intelligence has located a <marker name='ao'>major FIA cell</marker> in northwestern Altis. They've set up camp and occupied several of the abandoned compounds in the area.
<br/><br/>
Unusual weather or not, we've still got a job to do. Clear all FIA presence from the AO.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
FIA irregulars. They've set up several <marker name='base'>camps</marker> in the area; while we don't expect them to have any tactical value, they'll likely be where you find the most FIA.
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
Friendly forces are driving us to the <marker name='dropoff'>dropoff point</marker>. After that, we're on our own.
"]];

// ====================================================================================
