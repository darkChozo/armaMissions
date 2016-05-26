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
<font size='18'>SATCHELS</font>
<br/>
Our riflemen are equipped with satchel charges. We can use these to breach the base's walls and to destroy the artillery.
<br/><br/>
<font size='18'>POWS</font>
<br/>
Captured POWs can be freed with the ""Free POW"" scroll action. Freed POWs will follow their rescuer. Other players can get the POW to follow them instead using the ""Tell POW to follow me"" action. POWs are deeply afraid of vehicles and will refuse to use them.
<br/><br/>
CSAT won't shoot at POWs (on purpose, anyway), but if the person a POW is following dies they'll be recaptured.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
We have two objectives. First, rescue the POWs housed in the base. Second, CSAT captured one of our new rocket artillery pieces. We believe that they are trying to reverse-engineer it at November Base; verify and destroy it.
<br/><br/>
1. Verify and destroy the captured <marker name=""prototype"">rocket artillery</marker>.<br/>
2. Rescue the <marker name=""powmarker"">POWs</marker>.<br/>
3. Escort the POWs to the <marker name=""powextract"">POW extract</marker>.<br/>
4. Exfiltrate the area (get 800+ meters away from the base).
<br/><br/>
<img image=""images\novbase.jpg""/>
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
Tonight, NATO forces are launching a <marker name=""df_1"">major offensive</marker> into southeastern Altis. We're going to use this opportunity to stage an attack on the CSAT base north of Paros, codenamed <marker name=""novbase"">November Base</marker>.
<br/><br/>
Unfortunately, the base is home to a CSAT tank platoon. We've enlisted a NATO tank detachment to cause a distraction and draw away the tanks. 
<br/><br/>
The NATO platoon will attack the <marker name=""outpost_2"">Agios Georgios motor pool</marker> to the south. While this will solve our little tank problem, it'll also draw a response from the <marker name=""invisiblecsatbase"">major CSAT base</marker> to the east. The tanks will be screening us, but we'll need to move fast...
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
About two platoons of infantry in the base, plus a whole bunch of armor that we're not equipped to deal with.
"]];

// ====================================================================================