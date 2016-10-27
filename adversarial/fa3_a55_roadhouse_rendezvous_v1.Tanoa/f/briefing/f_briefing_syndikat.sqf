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
Made with F3 (http://www.ferstaberinde.com/f3/en/)
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
We were only able to send in a few men; a larger force would be detected and they'd call off the meeting. That means we stand no chance in a proper fight. We'll have to use guerilla tactics instead.
<br/><br/>
The ideal situation would be to identify the officer and snipe him from afar. More often than not, officers don't carry weapons or wear helmets, but this is hardly a guarantee. Use your judgement.
<br/><br/>
There's significant tension between NATO and CSAT right now, and they'll probably spend as much time keeping an eye on each other as they do keeping watch. Use that paranoia to your advantage.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Assassinate the officers.
<br/><br/>
Group leaders have a one-time teleport at the start of the mission. This can only be used to teleport to one of the <marker name='telezone1'>marked</marker> <marker name='telezone2'>areas</marker>.
<br/><br/>
We've also been ordered to restrict our movements to the marked AO (the red rectangle). 
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
Word's come in. CSAT and NATO have set up a meeting between two of their officers, and we're the topic of discussion. That meeting can't be allowed to happen.
<br/><br/>
They're meeting in <marker name='meetingzone'>the old abandoned roadhouse</marker>. Take out those officers before they can organize against us.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
Both sides are sending armed escorts to protect the officers, both from us and from each other.
"]];

// ====================================================================================