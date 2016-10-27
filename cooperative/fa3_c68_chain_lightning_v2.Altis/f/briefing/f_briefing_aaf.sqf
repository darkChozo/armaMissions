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

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
<font size='18'>CLEARING CAMPS</font>
<br/>
Camps are considered cleared when there are no FIA remaining within 400 meters. Cleared camps will be marked on your map.
<br/><br/>
<font size='18'>INTEL</font>
<br/>
Intact intel can be picked up with a scroll wheel action. International regulations require all intelligence to look like the following:<br/><br/>
<img image='intel.jpg' height=120 width=150/>
<br/><br/>
<font size='18'>HELICOPTERS</font>
<br/>
We'll be using two different Hellcat variants. The transport variant is unarmed and carries the seven plus the pilot. The recon variant is very lightly armed with dual 6.5mm LMGs, and can only carry 2 besides the pilot and copilot.
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
Our intel on the camps is limited due to our efforts to maintain the element of surprise. Our civilian informants have provided us with the <marker name='nearestCamp'>approximate location of one of the camps</marker>; we'll have to find the rest ourselves. We've already got a recon chopper in the air to make that happen.
<br/><br/>
Command has provided us with enough transport pilots to move about half our platoon at once, so we'll have to stagger our movements. We want to do this quick, so we may want to split up our forces and assault multiple camps at once.
<br/><br/>
Union rules prevent recon pilots from flying transport choppers, but if we start losing transports we might have to bend the rules. Just make sure it's an emergency, okay?
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
1) Search the <marker name=""aaf_searcharea"">marked area</marker> for FIA camps.<br/>
2) Clear out all " + format ["%1",var_camps] + " camps.<br/>
3) Retrieve any intel from the camps. Be quick - take too long and FIA will destroy the intel.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
Today, we launch an offensive blitz against FIA territory in the mountains of northwestern Altis. Intel suggests there are " + format ["%1",var_camps] + " camps in the region, though we don't know exactly where. Speed is of the essence; past experience says that FIA will scurry back to their holes if you give them the chance.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
Expect the usual FIA mix of infantry and light vehicles.
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
We might have help from some CSAT troops.
"]];

// ====================================================================================