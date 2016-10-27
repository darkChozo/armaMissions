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
Bala Airstrip used to be a WWII airfield, and some of the surviving fortifications surrounding it have been appropriated by CSAT. Bunker locations are marked on the map.
<br/><br/>
<font size='18'>RULES OF ENGAGEMENT</font>
<br/>
There are still plenty of refugees on Tanoa. Make sure you're IDing your targets.
<br/><br/>
To mitigate collateral damage, we've been ordered to restrict IFV main guns to vehicle targets only. 
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
1. Capture <marker name='city'>Yanukka</marker><br/>
2. Capture <marker name='airstrip'>Bala Airstrip</marker>
<br/><br/>
Capture = remove all CSAT troops from the marked area.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
CSAT has been using <marker name='airstrip'>Bala Airstrip</marker> to launch air attacks on the mainland and surrounding islands. Our orders are to capture the airfield and halt the attacks.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
A company of CSAT troops, with vehicle support. They're concentrated in <marker name='city'>Yanukka</marker> and the <marker name='airstrip'>airstrip</marker>. They also maintain a small forward <marker name='checkpoint'>checkpoint</marker> manned by a few troops.
"]];

// ====================================================================================