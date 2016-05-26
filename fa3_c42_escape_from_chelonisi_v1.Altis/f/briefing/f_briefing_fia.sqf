// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// FACTION: FIA

// ====================================================================================

// NOTES: CREDITS
// The code below creates the administration sub-section of notes.

_cre = player createDiaryRecord ["diary", ["Credits","
<br/>
Created by darkChozo. Based on a mission concept by AJAX.
<br/><br/>
Made with F3 (http://www.ferstaberinde.com/f3/en/)
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
<font size='18'>PRISONERS</font>
<br/>
Up to ten random prisoners have hidden pistols that can be equipped with a scroll wheel weapon. Equipping a weapon or leaving the <marker name='cellblock'>cell block</marker> will turn the guards hostile towards you.
<br/><br/>
All prisoners have a map during the briefing, but once the mission starts, only prisoner leaders will. Make sure you know where you're going!
<br/><br/>
<font size='18'>OPTIONAL RULES</font>
<br/>
For extra fun, the prisoners and the rescue team aren't allowed to talk to each other until they link up. Ask your host if this rule is in effect.
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
We've distributed up to 10 pistols among the prisoners. They're not much, but they'll be enough to take out the guards in the <marker name='cellblock'>cell block</marker> and take their weapons and armor.
<br/><br/>
Once the prisoners are free, they can try to escape through the <marker name='admin'>administration area</marker> to the main entrance. However, they will face heavy resistance on this route. They may want to raid the <marker name='armory'>armory</marker> for supplies first.
<br/><br/>
Our men on the outside have two primary goals - distract the prison garrison from the outside, and prevent any reinforcements from reaching the prison. Given their numbers, they may want to avoid direct confrontation where possible.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Escape the prison. Escape will be considered successful when all units are at least 1.5km away from the prison.
<br/><br/>
The mission will fail if more than 75% of the prisoners die.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
We've finally found out where our men are being held! They're in the <marker name='prisoncenter'>old prison on Chelonisi Island</marker>, and our AAF informant tells us that they're to be handed over to NATO to face trial.
<br/><br/>
We're not going to let NATO get their hands on them. Last night, we managed to sneak in some pistols to the prisoners. And today, they break out.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
The prison garrison, all infantry. They're prepared for an attack from the outside, so all the heavily armed troops are near the entrance in the <marker name='admin'>administration area.</marker> Also watch out for the outward-facing HMGs in the <marker name='guardtower'>guard towers.</marker>
<br/><br/>
We're also expecting reinforcements once the prison goes into lockdown. If we're lucky, NATO might even show up to safeguard their prize.
"]];

// ====================================================================================