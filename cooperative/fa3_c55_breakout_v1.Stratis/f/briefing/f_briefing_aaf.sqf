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
Part 2 of the Operation Eleftheria series.
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

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Administration","
<br/>
<font size='18'>MINES</font>
<br/>
Our recon teams have spotted FIA soldiers setting up trip mines in the region surrounding <marker name='campMaxwell'>Camp Maxwell</marker>. We don't have exact locations, but we're fairly certain that there are no mines outside the red circle. Our engineers, if we have any, are equipped with mine detectors and can disarm any mines in our way. 
<br/><br/>
<font size='18'>AA TEAMS</font>
<br/>
Command wants us to be 100% sure that we've taken out the enemy AA teams before they start deploying helicopters. After you kill them, get in close and verify that you got the right guys (with a scrollwheel action).
<br/><br/>
<font size='18'>IFVS</font>
<br/>
We managed to airlift some Moras onto Stratis but they didn't send any HE shells. Logistics are hard, I guess.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
1. Clear out <marker name='campMaxwell'>Camp Maxwell</marker>.<br/>
2. Kill and verify the three AA teams in the region.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
Now that we've established a beachhead on Stratis it's time to start pushing out the FIA. We've identified a major FIA presence at <marker name='campMaxwell'>Camp Maxwell</marker>, and Command has ordered us to take them out.
<br/><br/>
Camp Maxwell appears to the be the source of the MANPADs that have prevented us from receiving close air support on the island. Just watch out, our recon teams have spotted enemy engineers laying tripmines...
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
At least two platoons-worth of FIA irregulars, probably supported by reinforcements from the north.
<br/><br/>
The FIA have also apparently dug up some old armor which they used to rebuff our assault on the <marker name='airbase'>airbase</marker>. We haven't seen any at the camp, but watch out for AAF armor in FIA colors.
"]];

// ====================================================================================