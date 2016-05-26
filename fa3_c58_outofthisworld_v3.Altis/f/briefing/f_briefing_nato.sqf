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
<font size='18'>HOLOGRAPHIC INFANTRY</font>
<br/>
<img image='holoman.jpg' width='103' height='150'/>
<br/>
The enemy has the ability to create AI soldiers seemingly out of light itself. Despite battlefield rumors, these ""holosoldiers"" are far from invincible, though they do take a bit more punishment than your average soldier and tend to come equipped with heavier weapons. Be careful.
<br/><br/>
<font size='18'>EXPLOSIVE CHARGES</font>
<br/>
Each rifleman has been equipped with an explosive charge. We'll need these to complete our mission, so make sure you don't lose them. (The Mothership Uplink is immune to rockets and grenades but can be destroyed by placing a charge on the upper catwalk)
<br/><br/>
<font size='18'>REBREATHERS</font>
<br/>
You don't have one. Don't drown.
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<font size='18'>COMMANDER'S INTENT</font>
<br/>
The C'sat have created a series of bases on the Mediterranean island of Altis. Our surveillance indicates that they use a teleporter network to handle logistics. We've identified a lightly-defended <marker name=outpost>outpost</marker> to the north that, if taken, would give us access to this network.
<br/><br/>
Once we've taken the outpost, we should be able to teleport to the <marker name=hubtext>hub</marker> that serves as the root of the network. From there, we need to find the teleporter to the <marker name=mothership>Mothership Uplink</marker>. This one won't be as easy to use; our science boys have identified some sort of VR firewall full of virtual soldiers that we'll have to break through.
<br/><br/>
When we've broken through, we'll be able to get to the uplink itself and blow it up. It's built into an old radar base so look for the dome.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
1. Infiltrate the enemy teleporter network though the <marker name=outpost>C'sat Outpost</marker>.<br/>
2. Find the <marker name=hub>teleporter</marker> to the Mothership Uplink.<br/>
3. Penetrate the enemy's <marker name='tele_10'>cyberspace defences</marker>.<br/>
4. Destroy the <marker name=mothership>Mothership Uplink</marker>.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
The C'sat think that they have the Earth beat. Three months ago, their invasion caught us completely by surprise, and they wiped out most of the world's military might. Well, today that changes. We've found where they've been beaming troops down from their mothership, and we have a plan to destroy it.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
The C'sat primarily depend on infantry (in regular and holo varieties), supported by drones. Numbers are unknown. 
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
Just us, inserted by submarine.
"]];
