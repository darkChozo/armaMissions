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
While recovering the device is the highest priority, doing so before the chopper is ready means we'll have to defend it. On the other hand, if NATO gets to the device first, it's going to be a lot harder to recover it.
<br/><br/>
If we lose the chopper, we might have to find NATO's and use that instead. If both choppers get blown up... well, we're going to have a lot of trouble moving that device.
<br/><br/>
<font size='18'>MOVEMENT PLAN</font>
<br/>
We have a quadbike we can use to scout, but the rest of us will have to go on foot. We may want to acquire some transport from the civilians; either find empty cars or scare the civies out of the full ones.
<br/><br/>
Once it's time to extract, remember that all of us have had at least rudimentary flight training.
<br/><br/>
<font size='18'>SPECIAL TASKS</font>
<br/>
The AAF are our enemy, not the people of Altis. Make sure you check your targets before you fire.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

waitUntil {!isNil {deviceTask}};

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Find and capture the device, get our chopper up in the air, and slingload the device off the island and back to the Middle East.
<br/><br/>
For more details, see " + (createDiaryLink ["Tasks",deviceTask,"your tasks"]) + ".
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
We never should have trusted the AAF. Well, if they're not going to uphold their side of the deal, we'll find someone who will. But first, we need to recover the device.
<br/><br/>
Unfortunately, our <marker name='chopper'>chopper</marker> took heavy damage during insertion. We need to find the device, repair and refuel our chopper, and get the device off the island.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
The AAF have patrols in most settlements, ostensibly for protection of the citizenry. Most of their forces are engaged on the <marker name='frontlines'>front lines</marker>, but you can expect them to call in a <marker name='qrf'>QRF</marker> if engaged.
<br/><br/>
Intelligence claims that there's a NATO team on the island looking for the device. If this is true, they'll probably have the same objectives as us.
"]];

// ====================================================================================
