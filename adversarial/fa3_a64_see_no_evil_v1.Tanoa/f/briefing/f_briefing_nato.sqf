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
Blatantly inspired by some ShackTac mission.
<br/><br/>
Made with F3 (http://www.ferstaberinde.com/f3/en/)
"]];

if (player in units GrpNATO_SUR) then {
// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
We need to leave the beacons on if we're to have any chance of being rescued; however, this will let Syndikat track us. The good news is that the tracking isn't very accurate, and whatever's interfering with our radios probably won't help.
<br/><br/>
It's dark out. As far as we know, Syndikat doesn't have access to NVGs, so this is a very good thing. Use the darkness to your advantage.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Survive until you are rescued.
<br/><br/>
Syndikat will be able to track your rescue beacons and get a (very) rough idea of where you are.
<br/><br/>
After some time, you'll reestablish communications with the rescue team. A message will pop up when this happens. Until then, no talking to the rescuers or putting markers in side/global!
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
Things could be worse. Sure, our helicopter did crash, and sure, we're stranded deep in Syndikat territory, but at least we're not dead.
<br/><br/>
We can't get in contact with NATO command, something to do with the weather maybe. All we can do is turn on our rescue beacons and survive...
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
Maybe Syndikat didn't notice the loud bang and the burning wreck?
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
NATO will almost certainly send in a SAR chopper to look for us.
"]];

// ====================================================================================
} else {

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Without comms with the survivors, it'll be difficult to find them, let alone coordinate a pickup. The area's also going to be crawling with Syndikat, making anything at low altitude pretty risky.
<br/><br/>
It's pretty dark out. We've got NVGs, Syndikat and the survivors most likely don't. Use that to your advantage. Just try not to get shot down; if Syndikat recover those NVGs things could get hairy for the survivors.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Find the survivors and bring them back to base.
<br/><br/>
Your helicopters will take about two minutes to refuel at the start of the mission.
<br/><br/>
We can track their rough locations using their rescue beacons. Look for the circles on your map.
<br/><br/>
After some time, we'll reestablish communications with the survivors. A message will pop up when this happens. Until then, no talking to the survivors or putting markers in side/global!
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
We just lost a <marker name='downedchopper'>chopper</marker> deep in Syndikat territory. They reported engine trouble before the radio cut out; we haven't been able to reestablish comms since.
<br/><br/>
Those helicopters carry rescue radio beacons, and we've detected a signal on that frequency. That means survivors. We've got to find them before Syndikat does.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
The survivors landed square in the middle of Syndikat territory. Expect search parties equipped with AKs.
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
There were 8 people on that chopper; we're not sure how many survived.
"]];
};