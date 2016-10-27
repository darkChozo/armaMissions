// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// FACTION: CSAT

// ====================================================================================

// NOTES: CREDITS
// The code below creates the administration sub-section of notes.

_cre = player createDiaryRecord ["diary", ["Credits","
<br/>
Created by Peasant for FolkARPS, with help from the kind people of #missionmaking
<br/><br/>
Made with F3 (http://www.ferstaberinde.com/f3/en/)
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
The UAV can be controlled directly by the UAV operator and as a support asset by the JTAC
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Clear the 5 compounds at <marker name='obj1'>1</marker>, <marker name='obj2'>2</marker>, <marker name='obj3'>3</marker>, <marker name='obj4'>4</marker> and <marker name='obj5'>5</marker>
<br/><br/>
<font size='18'>MOVEMENT PLAN</font>
<br/>
no specific instructions at this time
<br/><br/>
<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
1 K-40 Ababil-3 UAV armed with 2 laser guided bombs. 
<br/><br/>
<font size='18'>SPECIAL TASKS</font>
<br/>
1. The UAV is a valuable asset: make sure it is not exposed to enemy fire. 
2. Permission has been granted to use high explosives against enemy occupied buildings.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Investigate compounds <marker name='obj1'>1</marker>, <marker name='obj2'>2</marker>, <marker name='obj3'>3</marker>, <marker name='obj4'>4</marker> and <marker name='obj5'>5</marker> and eliminate any FIA forces present.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
FIA guerillas have esatblished a presence in the Skopos Peninsula. Intel has identified a series of compounds around <marker name='obj4'>Sfaka</marker> which have been occupied by the FIA and are being used for training and storage.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
Around 50 FIA infantry plus a small number of technicals, possibly supported by NATO special forces. The FIA do not have MANPADS, but NATO special forces may be carrying them.
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
A friendly mechanised platoon has establised a blocking position to the <marker name='block'>north</marker>
"]];

// ====================================================================================
