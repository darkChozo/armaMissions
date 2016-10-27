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
<font size='18'>COMMANDER'S INTENT</font>
<br/>
We're under strict orders to stay within the base's perimeter for fear of ambush. Use the marked area as a guide; we're allowed to fire down the hill but not to go down it. None of that applies to the recon teams, of course.
<br/><br/>
In terms of defensive assets, Comms Bravo doesn't offer much. We have some rudimentary fortifications and some jeeps; while we're not going anywhere in the latter, we can use their lights to illuminate potential enemy ingresses.
<br/><br/>
The base is also playing host to a number of helicopters. We don't have anyone qualified to fly them - not that they're ready to fly anyway - but I happen to know that the Huron is loaded with ammo. It's risky, but it might make for a good defensive bulwark.
<br/><br/>
<img image='iff.jpg'/>
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Defend <marker name='base'>Comms Bravo</marker>. Everyone besides recon teams are restricted to the base and the top of the hill, as marked on the map.
<br/><br/>
Mission success will occur if the rebel force is destroyed.
<br/><br/>
Mission failure will occur if our force is destroyed or if the rebels occupy the <marker name='base'>orange circle</marker> for two minutes.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
It's time for another wonderful night in luxurious <marker name='base'>Comms Bravo</marker>! The forecast calls for a 90% chance of rebel attack, so keep your eyes peeled. Just don't let the darkness get to you...
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
Either nothing, or a rebel infantry assault force wielding AKs and CAR-95-1s. Probably nothing, though.
"]];

// ====================================================================================