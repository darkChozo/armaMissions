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

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
<font size='18'>MINES</font>
<br/>
Our advance scouts spotted CSAT engineers laying AT mines in the town. They've confirmed mines at the <marker name=outpost>outpost</marker> and suspect mines at many of the crossroads as well. Suspected mine positions are marked on your map.
<br/>
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Get to the <marker name=aafflag>AAF squad</marker> and escort them to the <marker name=extract>extraction point</marker>.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
An <marker name=aafflag>AAF squad</marker> deep within CSAT-occupied territory have staged a mutiny against the CSAT-AAF alliance. They are offering valuable intel to NATO in exchange for their safety.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
At least two platoons of CSAT infantry with light vehicle support in <marker name=athira>Athira</marker>. Expect reinforcements from <marker name=csatflag>the airport</marker>.
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
One stranded AAF squad. Also a mortar team for artillery support and an extraction helo.
"]];

// ====================================================================================