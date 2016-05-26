// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// FACTION: CIVILIAN

// ====================================================================================

// NOTES: CREDITS
// The code below creates the administration sub-section of notes.

_cre = player createDiaryRecord ["diary", ["Credits","
<br/>
Created by darkChozo
<br/><br/>
Made with F3 (http://www.ferstaberinde.com/f3/en/)
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
It's time to race! Drive your Ifrit to the finish line!
<br/><br/>
Drive through all the checkpoints to complete a lap. Complete " + format ["%1",param_maxLaps] + " to finish the race!
<br/><br/>
If you get stuck, you can flip or reset your car using scroll wheel actions.
"]];

// ====================================================================================