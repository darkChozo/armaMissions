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
<font size='18'>MINES</font>
<br/>
We spotted CSAT engineers laying AT mines at several points in the town. They've definitely mined at the <marker name=outpost>outpost</marker> and they've probably mined some of the crossroads too. Suspected mine positions are marked on your map.
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
We're surrounded. We've holed up in a church, and up until now CSAT has been content to starve us out. That won't last once they spot the NATO task force.
<br/><br/>
Our best bet is probably to bunker down and hold out for NATO. This church used to be a command post, so it's been fortified, though not as well as I'd like. Alternatively, we could try to break out of the compound and meet NATO halfway.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Get to the <marker name=extract>extraction point</marker>.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
CSAT pushed us too far this time. Well, we've had enough, and killed our traitor of a commander. Now we're stuck in the middle of CSAT-controlled <marker name=athira>Athira</marker>. We managed to contact NATO and they've agreed to extract us in exchange for information.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
A whole lot of CSAT troops. We spotted a few cars too, and maybe some sort of armor.
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
One NATO task force.
"]];

// ====================================================================================