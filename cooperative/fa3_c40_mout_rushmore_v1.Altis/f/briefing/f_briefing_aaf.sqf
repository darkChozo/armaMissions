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

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
NATO is concentrated in three bases in the city - a <marker name='motorPool'>motor pool</marker>, a block of houses they've converted into <marker name='barracks'>barracks</marker>, and the hospital that they've been using as their <marker name='headquarters'>headquarters</marker>. Enemy resistance will be concentrated in these bases, and if we take them out the remnants should be easy enough to clean up.
<br/><br/>
They'll be on alert but they don't know we're coming. We don't anticipate any civilians in the AO, but try to limit collateral damage. We're trying to save Kavala, not destroy it.
<br/><br/>
<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
CAS is active in the area; we may be able to divert them to support us.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
1. Clear out the <marker name='motorPool'>motor pool</marker>.<br/>
2. Clear out the <marker name='barracks'>barracks</marker>.<br/>
3. Clear out the <marker name='headquarters'>headquarters</marker>.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
The order's come down. NATO's our enemy now, and it's our job to drive them out of Kavala.
<br/><br/>
They've got three major bases in the city. Take them out.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
A platoon or two of NATO infantry with some vehicle support. They'll mostly start in their bases but that probably won't last when the shooting starts.
"]];

// ====================================================================================