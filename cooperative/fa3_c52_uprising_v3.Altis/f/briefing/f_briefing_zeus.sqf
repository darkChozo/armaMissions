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
<font size='18'>CACHES</font>
<br/>
Each squad has one ammo cache and one weapons cache with about a fireteam's worth of equipment. If present, the CO and MMG teams have their own caches. Technical teams have equipment in their vehicles.
<br/><br/>
<font size='18'>OBJCETIVES</font>
<br/>
<marker name=syrta>Syrta</marker> will be ours when we clear out the majority of AAF in the area.
<br/><br/>
We've already recorded the <marker name=broadcast>broadcast</marker> so the only thing left to do is to upload it. To do this, we need to get someone into the <marker name=broadcastloc>broadcast center building</marker>. The process should take a minute or two, but if it's interrupted we'll have to start over.
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
For weeks, we've been stashing away smuggled weapons, ammo, equipment, and vehicles in preparation for the attack. Until we retrieve these <marker name=caches>caches</marker>, you'll be limited to whatever you brought with you.
<br/><br/>
We also don't have enough weapons for everyone, so we might have to acquire some equipment from AAF patrols.
<br/><br/>
Speaking of patrols, we've spotted several in the area. They probably don't know about the attack (they'd have sent more men), but they may have found the caches. Be careful.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
• Retrieve our equipment from the <marker name=caches>caches</marker>.<br/>
• Take <marker name=syrta>Syrta</marker>.<br/>
• Take the <marker name=broadcast>broadcast center</marker> and announce our cause to the world.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
The time for action has finally come, brothers! Today, we take <marker name=syrta>Syrta</marker> and strike the first blow against our AAF oppressors. But first, we must arm ourselves...
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
Roughly a company of AAF troops, likely with vehicle support.
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
Just us.
"]];

// ====================================================================================