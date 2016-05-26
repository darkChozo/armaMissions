// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// FACTION: FIA

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
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Execution","
<br/>
We weren't able to sneak any MANPADS past customs, so our best bet for anti-air is gonna be the technicals. Those things aren't exactly overflowing with ammo so don't go wasting it on trees.
<br/><br/>
Also, don't worry too much about saving explosives for the cars. Camp Maxwell is home to the AAF 3rd Sappers, they're bound to have a cache of something volatile stashed away.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Destroy all the fancy cars at <marker name='CampMaxwell'>Camp Maxwell</marker>.
<br/><br/>
Aziz will pull us back if we take more than 80% casualties. We need the survivors to tell insurance about the horrible industrial accident we all died in.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
Aziz has a new job for us. Apparently the good Colonel Akhanteros of the AAF is a bit of a car collector. One of the perks of being the de-facto ruler of a small country, I suppose. Well, he's stored a bunch of souped-up hatchbacks at an AAF military outpost called <marker name='CampMaxwell'>Camp Maxwell</marker>.
<br/><br/>
Aziz wants us to blow them up. I didn't ask why. Maybe he's into cars too?
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
Camp Maxwell isn't exactly the biggest base in the Republic; we're expecting a few squads at most, though they'll be on high alert due to the whole civil war thing. The only issue is that they're sure to call for reinforcements, and Stratis is like 80% airbase.
<br/><br/>
The most likely sources of reinforcements are <marker name='StratisAirBase'>Stratis Airbase</marker>, <marker name='LZConnor'>LZ Connor</marker>, and <marker name='AirStationMike26'>Air Station Mike-26</marker>. Expect a mix of heliborne troops and light attack helos. Also, try to keep out of sight of these bases; they have heavy defences that we're not equipped to deal with.
"]];

// ====================================================================================