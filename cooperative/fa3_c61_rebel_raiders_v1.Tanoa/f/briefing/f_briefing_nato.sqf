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
<font size='18'>MOVEMENT PLAN</font>
<br/>
Movement will be primarily conducted via helicopter. Because we're operating in enemy territory, make sure you scope out LZs before you commit. Our transport helos are lightly armed, but don't expect them to take out an enemy platoon by themselves.
<br/><br/>
<font size='18'>EQUIPMENT</font>
<br/>
Infantry are armed with Mk14s and SPAR-16s, courtesy of the Americans. The Hellcats have twin 6.5 LMGs with somewhat limited ammo, the Huron is equipped with two door 6.5 miniguns, and our attack Littlebird has two 7.62 fixed miniguns.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
1. Destroy all three mortars in the <marker name='mortars'>mortar base</marker>.<br/>
2. Destroy most of the vehicles in the <marker name='motorPool'>motor pool</marker>.<br/>
3. <marker name=base>Return to base.</marker>
<br/><br/>
All fireteam members are carrying explosive charges for use in completing the objectives. You will recieve a notification when each objective is completed.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
HORIZON ISLANDS ARMY HIGH COMMAND<br/>
OPERATION DETAILS
<br/><br/>
2nd Company has been tasked with raiding two enemy installations in southern Tanoa. Destroying these installations will significantly disrupt rebel activities on the main island and will serve as a basis for a full assault.
<br/><br/>
There are two primary objectives - a <marker name='mortars'>mortar battery</marker> and a <marker name='motorPool'>motor pool</marker>. Insert via helicopter, destroy relevant equipment at both objectives, and return to base for debriefing.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
Rebel infantry and light vehicles. We expect enemy presence to be concentrated around the objectives, but be careful once you move into <marker name='frontlines'>rebel territory</marker>.
<br/><br/>
Many of the nearby towns have been occupied by rebel forces and may contain improvised anti-air positions. Helicopter pilots should be careful.
"]];

// ====================================================================================