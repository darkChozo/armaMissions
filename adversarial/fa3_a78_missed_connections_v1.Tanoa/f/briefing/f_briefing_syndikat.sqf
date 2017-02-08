// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// FACTION: SYNDIKAT

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

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
<font size='18'>MAP-CLICK TELEPORT</font>
<br/>
Group leaders have a one-time-use teleport action. This can be used to teleport anywhere outside of the circle on the map.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Recover the <marker name='heli'>Hellcat</marker> from the airport.
<br/><br/>
Since Syndikat are lawless criminals, anyone who feels up to the task can fly the helicopter.
<br/><br/>
Mission success if the helicopter leaves the AO.<br/>
Mission failure if all Syndikat are killed.<br/>
Everyone loses if the helicopter is destroyed.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
The Gendarmerie have stumbled across one of <marker name='heli'>our helicopters</marker> stashed at the airport. That particular bird has some very valuable contraband hidden away in a secret compartment.
<br/><br/>
We need to get that helicopter back. Assault the airport and recover our chopper!
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
A Gendarmerie security force equipped with SMGs.
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
There will be civilians at the airport; try to avoid killing them. Today's bystander is tomorrow's recruit, after all.
"]];

// ====================================================================================