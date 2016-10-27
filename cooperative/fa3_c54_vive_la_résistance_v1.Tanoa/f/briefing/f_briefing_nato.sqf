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
We don't have much time before the CSAT assault begins. We expect the attack to come in waves, with the intensity stepping up between waves.
<br/><br/>
We're heavily outnumbered. Engaging them as they come into town will give us the cover advantage but will also expose us to more fire. We may want to draw them in and set up close-quarters kill zones instead.
<br/><br/>
<font size='18'>SUPPLY CACHES</font>
<br/>
We've got a cache of <marker name='explosives'>explosives</marker> that can be used in the defense; we may want to save some of these for bigger threats, however. If we start running out of ammo, we also have <marker name='ammo1'>ammo</marker> <marker name='ammo2'>caches</marker> for resupply.
<br/><br/>
<font size='18'>ENEMY ARTILLERY</font>
<br/>
We know the enemy has artillery nearby and we can expect them to use it against us. Listen for the reports and get to cover when you hear them. Losses might be unavoidable, but they can be minimized if you keep something between you and the shrapnel.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Defend <marker name='belfort'>Belfort</marker>.
<br/><br/>
Mission success will occur when CSAT is forced to withdraw.
<br/><br/>
Mission failure will occur if there are no BLUFOR left in Belfast.
<br/><br/>
REMINDER: YOU CAN'T PLACE MINES DURING SAFE START
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
The invasion happened so fast. Less than a day in and CSAT already control most of Tanoa. We may well be the last holdouts.
<br/><br/>
Well, we're not going out without a fight. CTRG are providing combat direction, the gendarmes and Syndikat have provided equipment, and we've even got some civilian volunteers for the defence. <marker name='belfort'>Belfort</marker> must not fall!
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
A <marker name='csat'>Chinese CSAT invasion force</marker>. Exact composition is unknown, but expect to see most of their arsenal. We've also heard artillery batteries firing somewhere to the north.
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
We put those who were unable or unwilling to fight in buildings and told them to barricade the doors behind them. Remember, we're fighting for more than just ourselves.
"]];

// ====================================================================================