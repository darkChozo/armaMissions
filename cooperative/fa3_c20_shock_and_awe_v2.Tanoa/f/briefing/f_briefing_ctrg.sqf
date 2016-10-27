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

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
<font size='18'>WEAPON DATA</font>
<br/>
The data should be stored somewhere on a computer in the <marker name='csathq'>HQ</marker>. Downloading the data will take a short while; make sure you're secure while the download happens.
<br/><br/>
<font size='18'>ESCAPE VEHICLES</font>
<br/>
There are several <marker name='lsvs'>Qilins</marker> stashed away near the airport. They'll have to be unlocked before we can use them; good thing we have the keys.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
1. Download the weapon data from the <marker name='csathq'>CSAT HQ</marker>.<br/>
2. Get to the <marker name='lsvs'>stashed LSVs</marker>.<br/>
3. <marker name='escape'>Escape</marker> to the mainland.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
There's no turning back now. We've tracked down the data on CSAT's new weapon prototype to a <marker name='csathq'>building</marker> in the TAF-held town of <marker name='lijnhaven'>Lijnhaven</marker>. That data could be the key to saving thousands of lives.
<br/><br/>
A NATO Blackfish is moving in to provide us with close air support. Assault the <marker name='csathq'>HQ</marker>, download that data, and get back to the mainland!
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
<marker name='lijnhaven'>Lijnhaven</marker> is home to a sizeable Tanoa Armed Forces garrison supported by CSAT ""advisors"".
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
An armed V-44 has been called in to support us.
"]];

// ====================================================================================