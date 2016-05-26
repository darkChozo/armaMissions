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
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
We should be on equal ground with the AAF so this one will come down to tactics. We can either try to grab the supplies and get out, or we can try to ambush the AAF when they go in. Either way, make sure someone's watching the <marker name='dropzone'>airdrop</marker>; we don't want the AAF to get away with something sneaky.
<br/><br/>
<font size='18'>MOVEMENT PLAN</font>
<br/>
Command element is in an offroad and Alpha and Bravo each have their own truck.
<br/><br/>
<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
We've got a mortar set up to fire smoke and flares. We should also be able to call in some drone strikes from NATO.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Bring <marker name='dropzone'>7 supplies</marker> to our <marker name='fiadropoff'>drop off</marker>, or kill all the AAF.
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
Those NATO idiots sent us the details for today's airdrop on an unsecured channel. Now the AAF is sure to try and intercept it.
<br/><br/>
Secure the <marker name='dropzone'>airdrop</marker>, and bring the supplies to our <marker name='fiadropoff'>drop off</marker>.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
Unknown, but given the state of the AAF nowadays, probably a bunch of helmet-less motorized infantry.
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
A few of our hardier comrades are defending our <marker name='fiadropoff'>drop off</marker>.
"]];

// ====================================================================================