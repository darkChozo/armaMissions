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

// NOTES: CREDITS
// The code below creates the administration sub-section of notes.

_cre = player createDiaryRecord ["diary", ["Credits","
<br/>
Made with love by darkChozo, with unhelpful input from other members of the Folk ARPS Politburo.
<br/><br/>
Made with F3 (http://www.ferstaberinde.com/f3/en/)
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
<font size='18'>HAND FLARES</font><br/>
You may be issued with some hand flares. During the night these can be used to decorate our perimeter, or indicate your fire lanes.
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font><br/>
Rudimentary fighting positions have been prepared for us at the <marker name = 'mkrVillage'>village</marker>. We will occupy these positions and wait for nightfall.
<br/><br/>
Once we're all set, use the satellite phone in the <marker name='mkrBunker'>bunker</marker> to call NATO command and let them know that their village is in safe hands. Then all we have to do is wait...
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Defend a <marker name = 'mkrVillage'>picturesque Tanoan village</marker> from a CSAT night attack.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
Comrades of the Third International Fighting Brigade in the name of Che Guevara, Aziz has found us jobs on Tanoa. We'll run bars and hotels, and send home good money. Aziz has even arranged our flights, and it's all totally legitimate!
<br/><br/>
There's just one tiny thing we have to do after we land.
<br/><br/>
Which is maybe to defend a <marker name = 'mkrVillage'>village</marker> ... against CSAT aggressors ... using second-hand AKMs and RPG-7s ... at night.
<br/><br/>
<font size='18'>ENEMY FORCES</font><br/>
The NATO work placement guys assured Aziz that CSAT never attacks with more than a platoon. Or a company. It's unclear (the Skype connection was bad).
<br/><br/>
<font size='18'>FRIENDLY FORCES</font><br/>
While moving to the <marker name = 'mkrVillage'>village</marker> we may see some of the troops we're relieving, but that night we'll be on our own.
"]];

// ====================================================================================