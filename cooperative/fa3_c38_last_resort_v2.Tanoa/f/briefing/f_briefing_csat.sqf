// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// FACTION: CSAT

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
We'll be inserting via boat. The bulk of Syndikat forces are going to be overseeing the meeting itself; we expect only patrols on the coast. We've got a drone in the air and a sub in the sea that can be used to identify viable landing sites.
<br/><br/>
Try not to beach the boats - they'll be useful when we want to extract. If we need additional transport, we may need to requisition it. Remember your training; as special forces we're qualified on rotary and fixed wing aircraft.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
1. Find and destroy the <marker name='weapons'>arms caches</marker>. (Riflemen are carrying explosive charges)<br/>
2. Extract off the island.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
Syndikat is about to sell a significant amount of weapons and ammunition to FIA rebels on <marker name='island'>Ravi-ta Island</marker>. If completed, the <marker name='weapons'>arms deal</marker> would significantly complicate our operations in the Mediterranean.
<br/><br/>
Your mission is to disrupt the deal and destroy the <marker name='weapons'>arms</marker>. We've been tracking this for months; don't let us down.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
<marker name='island'>Ravi-ta Island</marker> is a Syndikat stronghold, and you can expect them to come out in full force for such an important operation.
"]];

// ====================================================================================
