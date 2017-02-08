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

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
<font size='18'>SATCHEL CHARGES</font>
<br/>
We'll need explosives in order to destroy that armor. Riflemen are carrying satchel charges, and there are additional satchels in the trucks if you run out of riflemen.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
1. Destroy the <marker name='armor'>armor</marker> at the motor pool.<br/>
2. Find and steal the <marker name='shipping'>CSAT LSV</marker> at the shipping yard.<br/>
3. <marker name='extract'>Extract south</marker>.
<br/><br/>
Mission success if all objectives are completed.<br/>
Partial success if the LSV is destroyed before we can extract it.<br/>
Mission failure if we all die.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
The TAF have a stranglehold on Tanoa. We've been pushed to the interior of the island as they reap the benefits of holding the ports and major cities.
<br/><br/>
Well, we've identified an opporunity to strike back. AAF armor is awaiting repairs at a <marker name='armor'>motor pool</marker>, and we've recieved intel that CSAT have sent the TAF a prototype light strike vehicle in a nearby <marker name='shipping'>shipping yard</marker>. Destroy that armor and steal that vehicle.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
TAF infantry are stationed in most of the major settlements on the coast. The <marker name='msr'>main road</marker> is also a major supply artery for the island and frequently sees TAF traffic.
"]];

// ====================================================================================