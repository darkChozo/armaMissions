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
The enemy is mostly concentrated in the village itself, but we have spotted small patrols in the neighboring jungle. Be careful on the approach, and try to limit your exposure to the Syndikat in the village on the way in.
<br/><br/>
The village is located in the shallows off the coast. Mangroves will make visibility quite poor, keep it slow and steady as you move through.
<br/><br/>
<font size='18'>EQUIPMENT</font>
<br/>
SWAT is more heavily armed than your average gendarme, but we're still not military. Team leaders have UGLs with smoke only, and regular riflemen carry carbines. We do have grenades, though.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Clear out all Syndikat from the <marker name='village'>village</marker>.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
We've located what seems to be one of Syndikat's primary distribution centers, located in an <marker name='village'>old fishing village</marker>. We need to move in fast before they realize they've been compromised and relocate.
<br/><br/>
There's a major Syndikat presence there, so we're sending in the heavy hitters. Clear out that village.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
Syndikat infantry. I'd tell you to arrest them, but let's be honest; Syndikat don't surrender.
"]];

// ====================================================================================