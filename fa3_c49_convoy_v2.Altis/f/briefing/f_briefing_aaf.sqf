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
<br/><br/>
Music credits:<br/>
Convoy - C.W. McCall<br/>
Highway to Hell - AC/DC<br/>
Attack of the 60 Ft. Lesbian Octopus - Does It Offend You, Yeah?<br/>
Magic Bus - The Who<br/>
Holiday in Cambodia - The Dead Kennedys<br/>
Oh Bondage! Up Yours! - X-Ray Spex<br/>
O Fortuna - Carl Orff, Royal Philharmonic Orchestra
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_vehicleText = "";
switch (param_ifv) do {
    case (0) : {_vehicleText = "We're driving bog-standard Gorgons with 30mm cannons, 6.5mm coax machine guns, and two AT Titans. Our commander is driving a C&amp;C Gorgon that sacrifices the cannon for comms equipment and an upgraded vision package."};
    case (1) : {_vehicleText = "We're driving bog-standard Moras with 30mm cannons and 7.62mm coax machine guns. Our commander is driving a C&amp;C Mora that sacrifices the cannon for comms equipment and an upgraded vision package."};
    case (2) : {_vehicleText = "Someone lost the IFVs so we're driving GMG Striders."};
    case (3) : {_vehicleText = "We're driving military grade hatchbacks armed with tactical horns."};
};

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
<font size='18'>VICS</font>
<br/>
" + _vehicleText + "
<br/><br/>
<font size='18'>SURVIVORS</font>
<br/>
Our company got hit hard in the initial attack. We're carrying the wounded and non-combat personnel in cargo. They've been ordered to stay in the IFVs no matter what happens. Their lives are in your hands, gentlemen.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Get to <marker name='safeZone'>Altis International Airport</marker>.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
The powder keg's been lit. Both NATO and CSAT invaded Altis within hours of each other, and they've both decided the AAF are a threat.
<br/><br/>
One of my buddies in command told me that they've holed up the <marker name='safeZone'>airport</marker> and are evacuating the bigwigs. He's promised each of us a seat on a helicopter off the island. Now we just need to get there.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
There are enough NATO and CSAT forces out there to start World War 3. Watch out for FIA too, it looks like the invasion has stirred up the nest.
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
We're still getting scattered comms on AAF frequencies, plus there's still a bunch of civies left on the island. Watch your targets.
"]];

// ====================================================================================