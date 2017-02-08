// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// FACTION: SYNDIKAT

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
The prototype's probable <marker name='flightpath'>flight path</marker> is marked on your map. It'll take off shortly after mission start; we'll be able to track its transponder as it moves.
<br/><br/>
The VTOL will travel some distance after we hit it with a SAM. We may want to position the SAM teams ahead of the main force so that we can move in on the crash site as quickly as possible.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
1. Shoot down the VTOL<br/>
        The VTOL's projected <marker name='flightpath'>flight path</marker> is marked on your map.
<br/><br/>
2. Collect intel on the VTOL<br/>
        Do this by keeping someone close to the crashed VTOL.
<br/><br/>
3. <marker name='extract'>Extract</marker>
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
Syndikat's going multinational! CSAT have hired us to get intel on a <marker name='vtol'>NATO VTOL prototype</marker>. The VTOL's being shipped off to Europe for testing, but before that they're stopping on an obscure Mediterranean island to refuel.
<br/><br/>
This is the time to strike. The VTOL will take time to gain altitude; that means it'll be in MANPAD range. We shoot it down, get the intel, and get out.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
NATO maintains regular patrols on the <marker name='road'>main road</marker> in northeastern Altis. They also have several bases in the region, as marked on your map; expect an armed response when the VTOL goes down.
"]];

// ====================================================================================