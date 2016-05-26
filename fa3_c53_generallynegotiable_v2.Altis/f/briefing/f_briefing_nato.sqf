// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// FACTION: NATO

// ====================================================================================

// TASKS
// The code below creates tasks. Two (commented-out) sample tasks are included.
// Note: tasks should be entered into this file in reverse order.

// _task2 = player createSimpleTask ["OBJ_2"];
// _task2 setSimpleTaskDescription ["IN DEPTH OBJECTIVE DESCRIPTION", "SHORT OBJECTIVE DESCRIPTION", "WAYPOINT TEXT"];
// _task2 setSimpleTaskDestination WAYPOINTLOCATION;
// _task2 setTaskState "Created";

// _task1 = player createSimpleTask ["OBJ_1"];
// _task1 setSimpleTaskDescription ["IN DEPTH OBJECTIVE DESCRIPTION", "SHORT OBJECTIVE DESCRIPTION", "WAYPOINT TEXT"];
// _task1 setSimpleTaskDestination WAYPOINTLOCATION;
// _task1 setTaskState "Created";


// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
<font size='18'>VEHICLES</font>
<br/>
The general and his staff have been provided with an unarmed Hunter.
<br/>
<font size='18'>CIVILIANS</font>
<br/>
Despite the CSAT occupation, there are still civilians refusing to abandon the town. Collateral damage is to be avoided; too many dead civilians will sour the negotiations.
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
The enemy is largely concentrated in the town but expect to encounter patrols on the way there. Move to the town, secure the area around the meeting place, and prepare to defend the general against reinforcements.
<br/><br/>
<font size='18'>SPECIAL TASKS</font>
<br/>
The general and civilian leader must both survive the mission. Be VERY CAREFUL about stray fire when approaching the meeting place.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
1. Escort the general to the meeting place<br/>
2. Protect the general as he negotiates with the local leader<br/>
3. Escort the general away from the area.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
A local leader has agreed to meet with a high-ranking NATO general in <marker name = 'town'>Selakano</marker> to negotiate a pledge of support for the NATO cause. Unfortunately, CSAT caught wind of the meeting and has sent troops to disrupt it.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
A platoon of infantry garrisoning the town, supported by unknown reinforcements from the <marker name = 'csatarea'>CSAT-controlled airbase</marker> to the north and the <marker name = 'csatarea_1'>CSAT outpost</marker> to the east.
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
A platoon of infantry commanded by the NATO general.
"]];

// ====================================================================================