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
The enemy have fortified Georgetown in preparation for our assault. Keep to cover, and watch out for static emplacements. We may want to avoid long-range engagements altogether; their Mk-14s will generally outperform our AKs at range anyway.
<br/><br/>
<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
We may have access to mortar support. Our mortar batteries are supporting multiple assaults on the city, so the amount we'll be able to call at any one time will be limited.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Capture the <marker name='radio'>radio tower</marker> and <marker name='fob'>FOB</marker>.
<br/><br/>
Our AO is marked on the map with red lines. Stay within the AO to avoid interfering with other attacks on the city.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
The assault on Georgetown has begun! Our target is <marker name='hills'>Georgetown Hills</marker>, the very same district where our so-called leaders lounged while the rest of the world burned.
<br/><br/>
We have two primary objectives; the <marker name='radio'>radio tower</marker> that overlooks the area, and the offices that government forces have converted into an <marker name='fob'>FOB</marker>. Onwards to glory!
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
Horizon Islands Army infantry.
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
We're not the only ones attacking the city. Stay inside the marked area to avoid interfering with other units.
"]];

// ====================================================================================