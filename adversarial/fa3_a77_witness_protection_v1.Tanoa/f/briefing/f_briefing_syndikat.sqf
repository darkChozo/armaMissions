// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// FACTION: SYNDIKAT

// ====================================================================================

// NOTES: CREDITS
// The code below creates the administration sub-section of notes.

_cre = player createDiaryRecord ["diary", ["Credits","
<br/>
*** Insert mission credits here. ***
<br/><br/>
Made with F3 (http://www.ferstaberinde.com/f3/en/)
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
Created by darkChozo.
"]];


// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Eliminate the informant.
<br/><br/>
The informant is not allowed to leave the <marker name='compound'>marked compound</marker>.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
We've got ourselves a rat. He knew what was coming and ran off to the police; they're holding him in <marker name='compound'>compound</marker> in Ouméré. Show him what happens when you betray the Syndikat.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
Gendarmes armed with SMGs, as usual.
"]];

// ====================================================================================