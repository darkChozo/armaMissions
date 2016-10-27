// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// FACTION: NATO

// ====================================================================================

// NOTES: CREDITS
// The code below creates the administration sub-section of notes.

_cre = player createDiaryRecord ["diary", ["Credits","
<br/>
Made with F3 (http://www.ferstaberinde.com/f3/en/)
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
<font size='18'>Competition Boundaries</font>
<br/>
Should you stray into the red-marked areas on your map, the explosive charge cunningly hidden in your aircraft will go off. You will receive a warning when approaching the boundary. Use of GPS is advised.
<br/><br/>
<font size='18'>IFF</font>
<br/>
Your helicopter is equipped with a state-of-the-art IFF system. BLUFOR helicopters will be highlighted in blue, while OPFOR helicopters will be highlighted in red.
<br/><br/>
<font size='18'>Rearmament</font>
<br/>
If you run out of ammo, a <marker name='rearm'>rearm point</marker> can be found in the middle of the map.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Destroy the enemy before they destroy you!
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
Congrats comrade! You have been volunteered for the 48th annual Who is Best At Helicopters competition, where <marker name='nato'>BLUFOR</marker> and <marker name='csat'>OPFOR</marker> compete to answer the ultimate question of competence. Party technicians have dragged you to the competition field where a specially-upgraded AH-9 awaits.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
A bunch of upgraded AH-9s.
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
An equal but opposite force of AH-9s.
"]];

// ====================================================================================
