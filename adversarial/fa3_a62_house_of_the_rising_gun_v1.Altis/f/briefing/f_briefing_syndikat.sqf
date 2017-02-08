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
Recover the autonomous GMG backpack, and bring it to <marker name='greenline'>our side of the AO.</marker>
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
An opportunity has come up. One of our patrols stumbled upon a FIA courier carrying a CSAT-pattern backpack. The courier managed to get away, but not before taking a few lethal-looking rounds to the chest. Last we saw, he was stumbling towards the old <marker name='hotel'>ghost hotel</marker>, trailing blood.
<br/><br/>
Coincidentally, word is that a CSAT autonomous GMG went missing in Molos a few days ago. That sort of tech is worth millions on the black market. Go to the <marker name='hotel'>hotel</marker>, and recover that backpack.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
<marker name='fia'>FIA</marker> has sent a strike force to recover the GMG.
<br/><br/>
<font size='18'>EQUIPMENT</font><br/>
Due to increasingly stringent AAF anti-trafficking measures, nether side has access to weapons more powerful than a pistol.
"]];

// ====================================================================================