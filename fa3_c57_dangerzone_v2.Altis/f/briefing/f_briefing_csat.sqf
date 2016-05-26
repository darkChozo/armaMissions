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

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
<font size='18'>IEDs</font>
<br/>
FIA has a history of using IEDs to even the odds against our vehicles. We expect one or more IEDs to be present on or near the highway. IEDs have to be remotely detonated, so watch out for suspicious individuals watching the road.
<br/><br/>
<font size='18'>Minigun Ifrits</font>
<br/>
We're trialling new LMG Minigun Ifrits today. They can throw out a whole lot of lead, but their accuracy... could be better. Tests show that their effective range is between three and five hundred meters. Beyond that, you'll have to spray a lot of ammo if you want any hope of hitting anything.
<br/><br/>
<font size='18'>RULES OF ENGAGEMENT</font>
<br/>
• We don't anticipate any civilians in the AO.<br/>
• CAS is authorized against ground-verified targets only.<br/>
• Heavy weapons are authorized against buildings housing confirmed enemy contacts, but try to minimize collateral damage. We do want to make use of this area once we've recaptured it.
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
JTAC has access to a <marker name=mortar>mortar team</marker>, but they've been restricted to smoke and flare shells only to minimize collateral damage. In addition, we may have CAS from the <marker name=airbase>airbase</marker> to the east.
<br/><br/>
<font size='18'>SPECIAL TASKS</font>
<br/>
Intel suggests that an American agent is commanding the FIA in the area. Killing this ""Corporal Kerry"" would greatly aid our counterinsurgency efforts on Altis.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
• Take back <marker name=highwayarea>Highway 101</marker>.<br/>
• (Optional) Kill Corporal Kerry.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
<marker name=highwayarea>Highway 101</marker> is a vital component of our logistics efforts in and around Altis's largest city of <marker name=kavala>Kavala</marker>. Last night, insurgent forces ambushed a convoy on the highway and seized the area between <marker name=kavala>Kavala</marker> and the nearby town of <marker name=kore>Kore</marker>. We've been tasked to drive FIA out of the area and take back <marker name=highwayarea>Highway 101</marker>.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
A large FIA force consisting of infantry and technicals.
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
We have checkpoints <marker name=csat>here</marker> and <marker name=csat1>here</marker>. We're also being supported by a <marker name=mortar>friendly mortar team</marker>.
"]];

// ====================================================================================
