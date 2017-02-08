// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// FACTION: FIA

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
Coordinate with friendly forces to drive the AAF out of <marker name='paros'>Paros</marker>. Enemy positions will be marked on your map as they are reported in.
<br/><br/>
<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
The JTAC and forward observer can call in NATO airstikes. There is no limit to the number of airstrikes that can be called in, but they'll need time to rearm and refuel between strikes.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
· Defend <marker name='fia'>our base</marker><br/>
· Push the AAF out of <marker name='paros'>Paros</marker>
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
The AAF have begun their push on <marker name='paros'>Paros</marker>. Show them that FIA hold this town!
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
An AAF assault force, staged in <marker name='aaf'>Kalochori</marker>.
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
Friendly soldiers are defending the <marker name='fia'>base</marker> against the assault.
"]];

// ====================================================================================