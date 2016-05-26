// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// FACTION: CSAT

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

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Defeat the NATO forces and seize the compound.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
CSAT command has identified a compound that would be an ideal vacation spot for Important Government Officials. However, we have reason to believe that NATO has their own nefarious plans for the property.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
Up to 15 vile NATO riflemen.
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
Up to 15 virtuous CSAT riflemen.
"]];

// ====================================================================================