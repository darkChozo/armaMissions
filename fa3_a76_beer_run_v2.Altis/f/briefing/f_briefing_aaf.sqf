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

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
We should be on equal ground with the FIA so this one will come down to tactics. We can either try to grab the supplies and get out, or we can try to ambush the FIA when they go in. Either way, make sure someone's watching the <marker name='dropzone'>airdrop</marker>; we don't want the FIA to get away with something sneaky.
<br/><br/>
<font size='18'>MOVEMENT PLAN</font>
<br/>
Command element is in an offroad (high command says the Striders use too much gas...) and Alpha and Bravo each have their own truck.
<br/><br/>
<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
We've got a mortar set up to fire smoke and flares, as well as a drone on-station to provide close air support.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Bring <marker name='dropzone'>7 supplies</marker> to our <marker name='aafdropoff'>drop off</marker>, or kill all the FIA.
<br/><br/>
• Supplies can be taken from an object using a scroll wheel action.<br/>
• Supplies can be placed in vehicles for transport.<br/>
• A man can carry one supply, a vehicle can carry unlimited supplies.<br/>
• Put supplies in the truck at the drop point to secure them.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
I'm not going to lie; the situation's pretty dire. It's been two months since the NATO blockade was put in place and our supplies are running reaaaal low.
<br/><br/>
The good news is that we've intercepted details on a <marker name='dropzone'>NATO supply drop</marker> intended for the FIA. We need those supplies.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
Unknown, but given that we're dealing with FIA, expect light motorized infantry.
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
Several heavily-armored soldiers have been assigned to guard our <marker name='aafdropoff'>drop off</marker>.
"]];

// ====================================================================================