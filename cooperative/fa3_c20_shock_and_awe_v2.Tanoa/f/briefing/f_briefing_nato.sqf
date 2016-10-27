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
<font size='18'>ANTI-AIR</font>
<br/>
We're expecting the enemy to periodically deploy MANPADS against us in <marker name='Lijnhaven'>Lijnhaven</marker>. Flare countermeasures should be able to defeat their tracking but only if we're maintaining speed and altitude.
<br/><br/>
The Blackfish can take a few hits, but if we start taking damage or run low on flares we may want to return to base to <marker name='rearm'>repair and rearm</marker>. The CTRG team's survival might be paramount but if we die, they're sure to follow.
<br/><br/>
<font size='18'>IFF</font>
<br/>
Telemetry aboard the Blackfish will highlight friendly forces with blue hexagons.
<br/><br/>
<font size='18'>FCS</font>
<br/>
The Blackfish's fire control system is capable of locking onto enemy vehicles and calculating firing solutions for hitting them. Make sure you use this capability!
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Support the <marker name='ctrgteam'>CTRG team</marker> as they complete their objectives.
<br/><br/>
Avoid engaging the CTRG team and their <marker name='lsvs'>escape vehicles</marker>.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
A <marker name='ctrgteam'>CTRG team</marker> just called in for immediate air support near the TAF-held town of <marker name='lijnhaven'>Lijnhaven</marker>. HQ was tight-lipped on the details, but apparently they're going to be raiding a <marker name='csathq'>CSAT position</marker> in the middle of town and then making their escape via <marker name='lsvs'>LSV</marker>.
<br/><br/>
Well, whatever they're up to, we're going to walk them through it. The Blackfish is refueled, rearmed and ready to cause some damage.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
<marker name='lijnhaven'>Lijnhaven</marker> is home to a sizeable Tanoa Armed Forces garrison supported by CSAT ""advisors"". They're also likely to muster light AA once we've entered their airspace.
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
Support *will* be danger close; be careful around the <marker name='ctrgteam'>CTRG team</marker> and their <marker name='lsvs'>escape vehicles</marker>. Telemetry aboard the Blackfish will highlight friendly targets in your HUD, make sure you don't engage them!
"]];

// ====================================================================================