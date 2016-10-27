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

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["HALO Jumping 101","
<font size='16'>TL/DR - OPEN YOUR PARACHUTE AT 200 METERS</font>
<br/><br/>
A HALO jump consists of three stages: the jump, the decent, and the landing.
<br/><br/>
DO NOT EJECT EARLY. The pilot will automatically eject you as he approaches the drop zone.
<br/><br/>
Descending from 5000 meters takes about a minute and fifteen seconds. Use this time to steer yourself towards the drop zone - orient yourself in the direction you want to go, then go forward.
<br/><br/>
The recommended open height for a HALO jump is 200 meters. 100 meters is the absolute minimum, and there are stories of soldiers surviving opens as late as 70 meters, but don't push it.
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
We'll insert via HALO jump. Our highest ranking soldier will be able to set the drop zone (via addAction). Due to the inherent inaccuracy of jumping out of a plane, setting the drop zone outside of the blue circle is recommended (but not required).
<br/><br/>
Because we'll be packing parachutes instead of kit, we'll also drop in with three UGVs carrying spare ammo, medical supplies, and satchels for the arty. The COs and SLs are carrying UAV terminals.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
1. Destroy all six rocket artilley pieces in <marker name='town'>Chalkeia</marker> <br/>
2. <marker name='exfiltration'>Get to the exfil point</marker>
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
The war on Altis has ground to a stalemate. One of the many factors halting our advance is a NATO MLRS battery stationed in <marker name='town'>Chalkeia</marker>.
<br/><br/>
High Command has tasked our special forces group with taking it out. We'll insert via aeroplane HALO jump, blow up the arty, and exfil via water.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
Chalkeia is a major link in the NATO support network, and is typically host to a few platoon's worth of infantry between garrison and support troops. We can also expect NATO to divert some troops from the <marker name='front'>front lines</marker> when they figure out what's going on, so watch out for reinforcements.
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
Maybe ""friendly"" is a strong word, but Chalkeia is still home to a few civilians, and we're likely to run into unarmed NATO men. No war crimes this time, okay?
"]];

// ====================================================================================
