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
Protect the informant.
<br/><br/>
The informant is not allowed to leave the <marker name='compound'>marked compound</marker>.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
Our Syndikat informant was compromised! We've taken him under protective custody but now there's a horde of Syndikat thugs bearing down on us. Protect that informant!
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
Looks like mostly low-level Syndikat thugs armed with machine pistols.
"]];

// ====================================================================================