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

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
<font size='18'>HOSTAGES</font>
<br/>
We don't know where the hostages are but it's likely that the enemy has split them up into smaller groups. They can be freed with a scrollwheel action, at which point they'll head straight for the <marker name='extract'>extract</marker>. Watch out, the enemy may try to kill them on the way there!
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
1. Find and free all twelve hostages in <marker name='therisa'>Therisa</marker>.<br/>
2. Escort them to the <marker name='extract'>extract</marker>.<br/>
<br/>
When you free a group of hostages, they'll make a beeline to the extract. Make sure their route is clear before you free them!
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
Two days ago, FIA rebels captured a squad of NATO peacekeepers operating in southwestern Altis. Our mission is to rescue them from the rebel-held village of <marker name='therisa'>Therisa</marker>.
<br/><br/>
Unfortunately, our <marker name='convoy'>convoy</marker> was ambushed en route to the AO. We drove off the initial attackers, but we lost Alpha and our vehicles were all disabled. We've radioed in for chopper support so we can finish what we'd started.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
We're expecting a second wave of FIA attackers any minute now, so get ready to defend. Numbers in Therisa are unknown but expect heavy resistance.
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
Therisa is still a functioning village, so watch out for civilians. Between them and the hostages, be very careful about stray fire.
<br/><br/>
Also, one of our recon teams has set up shop <marker name='extract'>near Therisa</marker> and will be handling the extract.
"]];

// ====================================================================================