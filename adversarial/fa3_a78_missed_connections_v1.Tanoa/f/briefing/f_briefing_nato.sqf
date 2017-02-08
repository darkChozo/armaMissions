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

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Prevent Syndikat from taking back <marker name='heli'>their helicopter</marker>.
<br/><br/>
Mission success if all Syndikat are killed.<br/>
Mission failure if the helicopter leaves the AO.<br/>
Everyone loses if the helicopter is destroyed.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
We have a situation. We just discovered that one of the <marker name='heli'>helicopters</marker> at the airport may be a Syndikat smuggling bird.
<br/><br/>
That bird could hold important intel on Syndikat operations, but we can't get anyone in to search it until tomorrow. Until then, secure the site; if Syndikat finds out, they'll want their helicopter back.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
A Syndikat attack would likely consist of infantry wielding machine pistols and the occasional RPG.
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
We can't evacuate the airport without a confirmed threat. While protection of civilians is, of course, a priority, Syndikat typicially don't target innocents without a reason.
"]];

// ====================================================================================