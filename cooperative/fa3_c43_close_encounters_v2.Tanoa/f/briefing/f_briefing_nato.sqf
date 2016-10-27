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
<font size='18'>CACHES</font>
<br/>
The caches are likely to mostly consist of small arms and ammo, which will resist bullets and grenades fairly well. CTRG combat engineers are carrying explosive charges which can be used to detonate the caches, and in a pinch a rocket or bomb would probably work as well.
<br/><br/>
<font size='18'>REMOTE COMMAND</font>
<br/>
NATO's in charge of this operation and is monitoring things from <marker name='nato'>a base to the northwest</marker>. In addition to the usual GPS tracking, the commander will also be able to access the video feed from the CTRG teams' tactical glasses. Just be aware that vehicles tend to mess with the video feed.
<br/><br/>
<font size='18'>DRONE OPERATORS</font>
<br/>
NATO will be providing recon and fire support via ground and aerial drones. If these drones take damage, our combat engineers should be able to conduct a field repair and get them moving again. When a drone is destroyed its operators will be kicked to spectator; feel free to notify your commander when this happens, it's not like you're dead or anything!
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Area Intel","
<br/>
<font size='18'><marker name='hq'>SYNDIKAT BASE</marker></font>
<br/>
The paramilitaries' base of operations is the highest concentration of troops (and HMGs) in the region. Try to avoid it, and watch out for Syndikat response teams coming from the base.
<br/><br/>
<font size='18'><marker name='outpost'>SYNDIKAT OUTPOSTS</marker></font>
<br/>
Most of the settlements in the area have been occupied by paramilitaries. If we raid these outposts, we'll likely be able to get leads on the locations of weapons caches in the area. They're also likely stopping points for the officer and any motorized patrols.
<br/><br/>
<font size='18'><marker name='roadhouse'>ROADHOUSE</marker></font>
<br/>
There's a small rest area on the main road that's been abandoned ever since Syndikat took over the area. We haven't spotted much activity here, though there may be Syndikat scouts watching the road. Be careful.
<br/><br/>
<font size='18'><marker name='lumberyard'>LUMBERYARD</marker></font>
<br/>
While most of the locals are smart enough to stay away, the nearby lumberyard is still operational. They've hired ION PMCs to provide security. It'll likely not interfere with our operation, just try not to engage the civies or the PMCs.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
1. Find and destroy " + format ["%1",param_numCaches] + " weapon caches in the area.<br/>
* Intel on weapon cache locations can be found by raiding <marker name='outpost'>enemy outposts</marker>. If there are lots of caches there might be multiple pieces of intel per outpost, so be thorough.<br/><br/>
2. Extract from the area.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
As part of ongoing counterinsurgency efforts on Tanoa, <marker name='ctrg'>a CTRG task force</marker> has been put under <marker name='nato'>NATO command</marker> in order to conduct a raid on <marker name='searcharea'>Syndikat territory</marker>.
<br/><br/>
Syndikat paramilitaries have a major <marker name='hq'>base of operations</marker> in the area, but that's not our target. Instead, we'll be focusing on disrupting enemy operations in the area.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
Syndikat paramilitaries. As long as we avoid the <marker name='hq'>enemy base</marker>, we'll mostly be dealing with foot and motorized patrols.
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
The locals generally steer clear of the area but you still see occasional commercial traffic on the <marker name='mainRoad'>main road</marker>. There's also a <marker name='lumberyard'>lumberyard</marker> nearby, protected by private security types.
"]];

// ====================================================================================