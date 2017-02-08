// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// FACTION: AAF

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
NATO positions can be attacked in any order. Their advance seems to be poorly organized, so we don't expect any significant reinforcements between locations.
<br/><br/>
<font size='18'>MOVEMENT PLAN</font>
<br/>
We have three Zamaks that can be used to get to the AO. We also may be able to hijack NATO vehicles if we need additional mobility.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Raise our flag at all five <marker name='flag1'>lo</marker><marker name='flag2'>ca</marker><marker name='flag3'>ti</marker><marker name='flag4'>on</marker><marker name='flag5'>s.</marker>
<br/><br/>
Each flag can be raised by a hold action on the flagpole.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
NATO has begun their push towards <marker name='zaros'>Zaros</marker>. They've occupied many of the <marker name='flag2'>settlements</marker> and <marker name='flag3'>compounds</marker> <marker name='flag1'>to</marker> <marker name='flag4'>the</marker> <marker name='flag5'>west</marker>, and set up patrols in the area.
<br/><br/>
This land belongs to the people, not NATO. Strike back, and raise our flag in defiance of their actions!
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
NATO infantry and light vehicles.
"]];

// ====================================================================================