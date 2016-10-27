// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// FACTION: SYNDIKAT

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

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
The obvious approach is to go <marker name='tz3'>over land</marker>. However, we also have <marker name='tz4'>some</marker> <marker name='tz1'>inflatable</marker> <marker name='tz2'>dinghies</marker> nearby. They're risky, but may allow us to attack from an unexpected angle.
<br/><br/>
The village itself is in the shallows. Mangroves will limit visibility and water will limit mobility. There are wooden pathways all around the village but they'll be quite exposed.
<br/><br/>
We may have some guys who can fly choppers or dive. The chopper will mostly be useful for recon; divers can be used to approach stealthily from the ocean.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Kill all CTRG.
<br/><br/>
Group leaders have a one-time teleport action at the start of the mission. This can be used to teleport to any <marker name='tz4'>of</marker> <marker name='tz1'>the</marker> <marker name='tz2'>marked</marker> <marker name='tz3'>areas</marker>. Heli crew probably don't want to teleport.
<br/><br/>
CTRG are trying to secure data at the <marker name='actualobjmarker'>CSAT black site</marker>. This process will take about " + format ["%1",floor targetCapturePoints / 60] + " minutes.
<br/><br/>
The mission will be a success if we kill all CTRG.<br/>
The mission will be a failure if we all die or if CTRG gets away.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
You know those spec ops guys that have been fucking with our operations? Well, we just spotted them heading for <marker name='village'>the old fishing village</marker> off the coast.
<br/><br/>
Our Chinese friends have some sort of <marker name='actualobjmarker'>outpost</marker> there; presumably that's what they're looking for. Doesn't matter, no one screws with Syndikat and gets away with it.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
A force of CTRG infantry.
"]];

// ====================================================================================