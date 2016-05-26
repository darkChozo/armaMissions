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

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
<font size='18'>RULES OF ENGAGEMENT</font>
<br/>
Anything CSAT is fair game for cannons, with two exceptions. First, no shooting the <marker name=""novbase"">base</marker> itself; too high a risk for friendly fire. Second, try not to the destroy the church in the motor pool. We don't need the bad karma.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
1. Attack the <marker name=""outpost_2"">motor pool</marker> to lure the tanks from the base.<br/>
2. Destroy the responding armor.<br/>
3. Defend the Brits while they attack the <marker name=""novbase"">base</marker>.<br/>
4. Exfiltrate the area (get 800+ meters away from the base).
<br/><br/>
<img image=""images\motorpool.jpg""/>
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
Plans have changed. We've been diverted from the <marker name=""df_1"">main assault</marker> to help the Brits conduct some sort of special op in the <marker name=""novbase"">CSAT base</marker> north of Paros.
<br/><br/>
Apparently, the base is home to a couple of T-100s. Our job is to draw them away so the Brits can get on with their business. We'll attack the <marker name=""outpost_2"">CSAT motor pool</marker> to the south to lure them away and destroy them.
<br/><br/>
Once CSAT catches wind of what's going on, they're bound to send reinforcements from the <marker name=""invisiblecsatbase"">major base</marker> to the east. Once we're done with the locals, we'll have to protect the Brits until they're done.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
Enemies should be concentrated in the motor pool, base, and nearby outposts. Expect a mix of armor types, some infantry in the motor pool and outposts, and a ton of infantry in the base.
<br/><br/>
The reinforcements could be anything. The only thing we know for sure is that there'll be a lot of them.
"]];

// ====================================================================================