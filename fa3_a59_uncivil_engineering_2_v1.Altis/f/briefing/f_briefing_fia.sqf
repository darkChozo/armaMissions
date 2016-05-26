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

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
The cops that are already here seem to be poorly armed, but if nothing else they'll still be able to track our movements. Taking them out would be ideal, but we may have to settle for surpressing them.
<br/><br/>
Several of our comrades are carrying IEDs. Use these to defend the detonator or defend possible approaches.
<br/><br/>
While regular cops can be quite dangerous, watch out for counter-terrorism units. They carry heavy armor, fancy spec-ops gear, and tend to drive surplus military MRAPs around. Aim for the wheels!
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Defend the detonator.
<br/><br/>
The police know the detonator is on one of the black circles.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
Brothers! We've been training for weeks and the day has finally arrived! We will show the world how strong our conviction is when we blow up the <marker name='windfarm'>construction site</marker>!
<br/><br/>
The bomb timer is set for twenty minutes. Defend the detonator with your lives.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
A few <marker name='cops'>cops</marker> have already shown up, and they've doubtlessly got <marker name='reinforcements'>reinforcements</marker> coming in.
<br/><br/>
<img image='cops.jpg'/>
"]];

// ====================================================================================