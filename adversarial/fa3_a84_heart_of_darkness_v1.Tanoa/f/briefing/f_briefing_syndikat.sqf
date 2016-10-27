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
<font size='18'>COMMANDER'S INTENT</font>
<br/>
The enemy is going to be confined to their base, which gives us a lot of room to maneuver. If we approach from the jungle, we should be able to get right up to their perimeter without being spotted, and maybe even sneak into the base itself.
<br/><br/>
Moonlight will provide decent illumination in the open, but in the jungle it's going to get pretty dark. If you need them, we've got flashlights on our AKMs, though try not to give away our positions too early.
<br/><br/>
<img image='iff.jpg'/>
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Capture <marker name='base'>Comms Bravo</marker>. Enemy forces are confined (approximately) to the marked area of the map, with the exception of enemy recon teams.
<br/><br/>
Mission success will occur if all army forces are destroyed, or if the we occupy the <marker name='base'>orange circle</marker> for two minutes.
<br/><br/>
Mission failure will occur if all our forces are destroyed.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
We've got a target. We're going to be attacking <marker name='base'>Comms Bravo</marker> under cover of night. We take that base, and all of Tanoa is open to us. Let the darkness be your shield...
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
The base is guarded by a platoon of Horizon Islands Army infantry. We know they're under orders to stay within the base perimeter, though they may send out small recon teams to scout.
"]];

// ====================================================================================