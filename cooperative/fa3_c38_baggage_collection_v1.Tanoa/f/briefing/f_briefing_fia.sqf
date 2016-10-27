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

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
We have about three minutes of fuel left in the VTOLs, so find a landing site and set down ASAP. We'll almost certainly have to abandon them when we land. Don't worry about it, it's not like they were ours to begin with.
<br/><br/>
Our Blue Pearl friends had just loaded up our stuff for transport when CSAT rolled in, so look for the containers that are already loaded on trucks. Just try not to destroy them...
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Retrieve all three shipping containers from the <marker name='port'>port</marker>. The containers are already mounted on trucks for transport. Mission success occurs when all surviving trucks exit the AO.
<br/><br/>
If all the trucks are destroyed or rendered immobile, the mission will fail.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
Finally, no more Altis! Time for some fun in the sun in beautiful Tanoa.
<br/><br/>
Only one problem; the fuel alarm just went off on the VTOL we stole. Oh, and word is that CSAT has occupied the <marker name='port'>port</marker> where we shipped all our stuff. Two problems, then.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
A platoon or two of CSAT infantry supported by armed vehicles.
"]];

// ====================================================================================