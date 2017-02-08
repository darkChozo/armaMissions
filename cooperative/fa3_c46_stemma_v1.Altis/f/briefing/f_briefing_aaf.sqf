// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// FACTION: AAF

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
<font size='18'>RULES OF ENGAGEMENT</font>
<br/>
We're here to capture the area, not to raze it. Use of heavy weapons on buildings is only authorized if it's necessary to avoid taking significant losses. In addition, the attack chopper is only authorized to engage buildings if they've been designated by ground forces.
<br/><br/>
Command wants us to capture the mutitions at the <marker name='aa'>anti-air position</marker>. Infantry should be careful as launchers can be destroyed by small arms, and vehicles should avoid engaging the position altogether.
<br/><br/>
<font size='18'>ATTACK CHOPPER</font>
<br/>
The <marker name='aa'>anti-air position</marker> can be avoided by maintaining a low altitude. This will leave you vulnatable to fire from the ground; be careful!
<br/><br/>
In addition, the <marker name='nofly'>south side on the mountain</marker> may be in range of AAA elements in nearby towns. Be careful approaching the no fly zone.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
1. Capture <marker name='topolia'>Topolia</marker>.<br/>
2. Capture the <marker name='aa'>AA position</marker> - don't destroy the launchers!<br/>
3. Rout CSAT forces in the area by killing at least 80% of them.
<br/><br/>
Command has requested that we stick primarily to the marked AO.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
Our orders are in. Command wants us to capture <marker name='stemma'>Agia Stemma</marker> and the surrounding area.
<br/><br/>
CSAT have a strong grasp on the region, and have set up an <marker name='aa'>anti-air</marker> position on the mountain. Drive them back for Altis!
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
A CSAT combined arms force. They've occupied many of the buildings in the area, and we've spotted armor, including at least one BTR-K. We also expect them to send in reinforcements from <marker name='base'>nearby</marker> <marker name='base_1'>occupied</marker> <marker name='base_2'>towns</marker.
"]];

// ====================================================================================