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
A surface approach would be disastrous, we'd be spotted from kilometers out and get chewed up. We'll approach from under the surface instead - hopefully you remember your dive training.
<br/><br/>
The only way up to the main platform is one of three staircases from the base of the rig. These are natural chokepoints; expect a tough fight getting to the top.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Capture the <marker name='rig'>Blue Pearl Oil Rig</marker>
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
We've had enough of NATO's ""assistance"". The <marker name='rig'>Blue Pearl Oil Rig</marker> (no relation) was built by Tanoan hands, and the Tanoan people should be the ones who benefit from it.
<br/><br/>
They've trained the TAF up into a top fighting force; now it's time to turn that training against them. Take that oil rig for Tanoa!
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
Private security, plus a NATO ""anti-piracy"" force.
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
There are civilian workers keeping the rig functional. We can figure out which ones are traitors later; for now, watch your fire.
"]];

// ====================================================================================