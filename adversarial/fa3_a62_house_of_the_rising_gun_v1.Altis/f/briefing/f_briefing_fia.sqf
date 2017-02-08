// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// FACTION: FIA

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
Recover the autonomous GMG backpack, and bring it to <marker name='bluline'>our side of the AO.</marker>
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
We've got a problem. Our brother, Markos, was transporting a stolen CSAT autononmous GMG when he was engaged by a Syndikat patrol. He managed to get away, but not before being grevously injured.
<br/><br/>
His last message indicated that he'd made it to the <marker name='hotel'>ghost hotel</marker> before succuming to his wounds. We must recover that GMG. That sort of tech could be vital to our struggle. 
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
<marker name='syn'>Syndikat</marker> has sent a strike force to recover the GMG.
<br/><br/>
<font size='18'>EQUIPMENT</font><br/>
Due to increasingly stringent AAF anti-trafficking measures, nether side has access to weapons more powerful than a pistol.
"]];

// ====================================================================================