// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// FACTION: NATO

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
The black site is only going to be lightly defended if it's defended at all. Be careful, but move quick; we only have a couple of minutes before Syndikat get here.
<br/><br/>
The fishing village is located in the shallows off the coast; visibility is quite bad due to the mangroves and the water will impede movement. Keep this in mind when choosing your defensive positions.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Secure the data at the <marker name='actualobjmarker'>CSAT black site</marker>, then leave the area.
<br/><br/>
Someone will need to be in the room to supervise the upload. The process will take about " + format ["%1",floor targetCapturePoints / 60] + " minutes.
<br/><br/>
The mission will be a success if we secure the data and escape, or kill all Syndikat.<br/>
The mission will be a partial success if we secure the data but die in the process.<br/>
The mission will be a failure if we die before we secure the data.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
We've located a <marker name='actualobjmarker'>CSAT black site</marker> in an <marker name='village'>old abandoned fishing village</marker> off the coast. That site could contain data vital to ongoing operations in the region.
<br/><br/>
The problem is that Syndikat know we're here. Fend off their attack and secure that data.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
A Syndikat strike force is closing in on our position. There may also be CSAT operatives at the <marker name='actualobjmarker'>black site</marker>, be careful approaching it.
"]];

// ====================================================================================