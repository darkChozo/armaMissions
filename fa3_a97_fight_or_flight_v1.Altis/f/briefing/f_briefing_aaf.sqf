// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// FACTION: AAF

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

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
<font size='18'>ASSETS</font><br/>
We have a couple of Zamaks and a Strider that we'll use to approach the hideout. Also, we've already got a UAV orbiting the hideout that will give us some very useful intel.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
1. Find and kill the FIA officer.
<br/><br/>
After 30 minutes, the officer will be able to escape and we'll lose.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
We've discovered a <marker name='fialoc'>FIA hideout</marker> in an old observation post on Kap Thelos. Our informants tell us that a high-ranking FIA officer is also in the area.
<br/><br/>
Taking out that officer would strike a heavy blow against the FIA.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
A platoon of FIA infantry.
"]];

// ====================================================================================