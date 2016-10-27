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

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
<font size='18'>REPAIR, REFUEL, REARM</font>
<br/>
We can't afford those fancy toolkits that the military uses to effect field repairs. If our vehicles get damaged, we have technicians on standby at <marker name='repair'>the airport</marker>.
<br/><br/>
That means that if our vehicles are immobilized, we'll have to abandon them. We can recover them later.
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
<font size='18'>MOVEMENT PLAN</font>
<br/>
Our resources on Tanoa are somewhat limited, so we'll have to make do with what we have. Vehicle assignments are as follows:
<br/><br/>
	* Alpha will ride with TH1 and TH2.<br/>
	* Bravo will ride in/on CO Vic (a gunless Panther).<br/>
	* Charlie will take a truck.
<br/><br/>
At the moment, Syndikat seem to be focused on holding the plant and haven't set up guards or patrols in the surrounding area. Still, be careful on the approach.
<br/><br/>
<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
We have an attack Littlebird armed with 6.5mm LMGs, if we can find a pilot certified on the thing.
<br/><br/>
<font size='18'>SPECIAL TASKS</font>
<br/>
Syndikat are holding the hostages in a <marker name='hostages'>warehouse</marker> inside the plant. Be careful about stray fire, especially from AH1; those sheet metal walls won't do much to stop a bullet.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
1. Secure the <marker name='plant'>power plant</marker>.<br/>
2. Ensure the <marker name='hostages'>hostages</marker> survive.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
As you know, we've been contracted by the Horizon Islands government to protect the only <marker name='plant'>power plant</marker> on the island of Tanoa, in response to increasing Syndikat activity on the island. Our analysts pegged this as a low risk operation, and assigned a small garrison to the plant.
<br/><br/>
Well, I hope those analysts have some new prospects lined up, because two hours ago a sizeable Syndikat force seized the plant, taking the workers and surviving security forces <marker name='hostages'>hostage</marker>. Now it's our turn to bail them out and retake the plant.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
Syndikat paramilitaries, exact numbers unknown.
"]];

// ====================================================================================