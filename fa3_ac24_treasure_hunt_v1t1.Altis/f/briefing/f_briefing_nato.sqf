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
While recovering the device is our top priority, doing so before the chopper is ready means we'll have to defend it. On the other hand, recovery might become a lot more difficult if CSAT grabs it first.
<br/><br/>
If we lose the chopper, we might have to find CSAT's and use that instead. If both choppers get blown up... well, I hope you like Altis, 'cause we're going to be here a while.
<br/><br/>
<font size='18'>MOVEMENT PLAN</font>
<br/>
We have a quadbike we can use to scout, but the rest of us will have to hoof it. We may want to requisition some transport from the locals; either find empty cars or scare the civies out of the full ones.
<br/><br/>
Once it's time to go, remember that we've all received pilot's training, even if most of us suck at it.
<br/><br/>
<font size='18'>SPECIAL TASKS</font>
<br/>
Not that I need to tell you this, but Altis is home to home to a whole bunch of civilians that are just trying to live their lives. Make sure you identify your targets before you shoot.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.
waitUntil {!isNil {deviceTask}};

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Find and capture the device, get our chopper up in the air, and slingload the device off the island and back to mainland Europe.
<br/><br/>
For more details, see " + (createDiaryLink ["Tasks",deviceTask,"your tasks"]) + ".
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
Intel picked up something big this time. Apparently, the AAF's gotten their hands on some sort of ""doomsday"" device. I know, I know, but do you want something like that hanging around in the middle of a civil war?
<br/><br/>
Unfortunately, our <marker name='chopper'>helo</marker> suffered a slight malfunction on the way in. We need to find the device, repair and refuel our chopper, and get the device off the island.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
The AAF have patrols in most settlements, ostensibly for protection of the citizenry. Most of their forces are engaged on the <marker name='frontlines'>front lines</marker>, but you can expect them to call in a <marker name='qrf'>QRF</marker> if engaged.
<br/><br/>
Rumor is that there's also a CSAT team in the AO looking to retrieve the device. If so, chances are they'll be going after the same stuff we are.
"]];

// ====================================================================================
