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

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
The <marker name='sawmill'>sawmill</marker> is surrounded on three sides by jungle. A jungle approach would probably give us the most cover, but we'll have to watch out for patrols, and it'll be difficult to utilize vehicles if we have them.
<br/><br/>
Syndikat has used minefields to defend their bases in the past. If there's one here, it'll be marked; Syndikat has way too much turnover to keep people up to date on where not to blow up.
<br/><br/>
<font size='18'>EQUIPMENT</font>
<br/>
We're equipped with SPAR-16s, LIM-85s, and MK-14s. We also don't have NVGs. Seems a bit outdated...
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Capture the <marker name='sawmill'>sawmill</marker> and kill Solomon Maru.
<br/><br/>
To capture the <marker name='sawmill'>sawmill</marker>, clear it of enemies and hold it for at least 90 seconds.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
We have reliable intel that a high-ranking Syndikat officer is visiting one of their distribution centers, located in an old <marker name='sawmill'>sawmill</marker>.
<br/><br/>
This is too big an opportunity to pass up, even if there is a monsoon rolling in. Take out that camp.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
Syndikat thugs have been seen patrolling the jungle around the sawmill, and the sawmill itself is almost certainly guarded by Syndikat's elite paramilitary troops.
"]];

// ====================================================================================