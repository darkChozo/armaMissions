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
Part 3 of the Operation Eleftheria series.
<br/><br/>
Made with F3 (http://www.ferstaberinde.com/f3/en/)
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Operation Eleftheria","
<br/>
The island of Stratis, formerly a keystone of the Hellenic Army's hold on the Mediterranean, was largely abandoned in the 2010s as political and economic turmoil rocked the country. The island quickly became a haven for smugglers and other ne'er-do-wells as the few remaining Greek and Altisan forces found themselves completely unable to police the populace.
<br/><br/>
Following the creation of the Republic of Altis and Stratis and the AAF, it was only natural that Stratis would be a hotbed of resistance. The AAF of Stratis quickly fell to the newly formed Freedom and Independence Army, effectively driving the government off the island. On Altis, FIA were insurgents; on Stratis, they were kings.
<br/><br/>
The year is 2030. With FIA activity on Altis at an all-time low, the AAF sets their sights on Stratis. Codenamed Operation Eleftheria (Operation Freedom), the successful invasion of Stratis would spell the end of the FIA.
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
<font size='18'>RADIO SILENCE</font><br/>
Bravo is not allowed to talk on CC until they are rescued.
<br/><br/>
<font size='18'>FREEING THE PRISONERS</font><br/>
The truck carrying Bravo has an addAction that will free the prisoners (and open them up to enemy fire, watch out!).
<br/><br/>
<font size='18'>CACHE</font><br/>
Each member of Bravo has a one-time-use action at the <marker name='cache'>cache</marker> to equip their standard gear. This will replace any equipment they may have scavenged on the way.
<br/><br/>
<font size='18'>GROUP MARKERS</font><br/>
Group markers will only work if at least one person in the tracked group has a GPS.
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
We snuck behind enemy lines last night, so they don't know we're here.  Should be a fairly standard ambush - just make sure you don't shoot the prisoners!
<br/><br/>
The AAF missed one of our <marker name='cache'>weapons caches</marker> when they took over the area, so the prisoners can get armed for the trip back. Then it's just a matter of wading through hundreds of enemy troops 'til we get to the <marker name='airbase'>airbase</marker>. Easy!
<br/><br/>
<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
We may have mortar support from the airbase.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
1. Ambush the <marker name='convoyloc'>convoy</marker> and rescue Bravo.<br/>
2. Arm the rescued prisoners at the <marker name='cache'>cache</marker>.<br/>
3. Make it back to the <marker name='airbase'>airbase</marker>.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
The war for Stratis is not going well. We've lost practically everything besides the <marker name='airbase'>airbase</marker>, and to make it worse, the AAF captured one of our squads in the latest attack.
<br/><br/>
Our comrades are being <marker name='convoyloc'>moved</marker> to the enemy HQ, where they'll undoubtedly be flown off the island and be forced into a show trial. Well, we're not going to let that happen.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
They're not going to be expecting us so the <marker name='convoyloc'>convoy</marker> will be lightly guarded. The <marker name='frontline'>front lines</marker>, on the other hand, are swarming with AAF infantry and armor.
"]];

// ====================================================================================