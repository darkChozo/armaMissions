// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// FACTION: SYNDIKAT

// ====================================================================================

// NOTES: CREDITS
// The code below creates the administration sub-section of notes.

_cre = player createDiaryRecord ["diary", ["Credits","
<br/>
Created by darkChozo.
<br/><br/>
Blatantly inspired by some ShackTac mission.
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
It's dark out and we don't have any of those fancy night vision goggles. We'll have to depend on our gunlights, as well as the lights on our trucks and helicopters, in order to see.
<br/><br/>
The signal we detected is probably some sort of beacon. We can use it to track the location of the survivors, though not very accurately.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Capture the crash survivors, by force if necessary. If it comes down to it, we'd rather that they die than get back to NATO.
<br/><br/>
We're able to track the general location of the survivors; look for the circles on the map.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
A <marker name='downedchopper'>NATO chopper</marker> just crashed in the middle of our territory. We've picked up some sort of signal from the crash site; survivors, maybe?
<br/><br/>
Well, if anyone did survive, we're gonna find them. No one waltzes into Syndikat territory and gets away with it.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
That helicopter came from off-island and crashed pretty hard. Chances are that any survivors will be injured, unarmed, and generally unable to defend themselves.
<br/><br/>
NATO's sure to send in a rescue party. Keep an eye on the sky for helicopters.
"]];

// ====================================================================================