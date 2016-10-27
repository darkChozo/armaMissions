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

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Take <marker name='city'>La Rochelle</marker>.
<br/><br/>
The city has been divided <marker name='westsector'>into</marker> <marker name='southsector'>three</marker> <marker name='eastsector'>sectors</marker>. To capture a sector, kill most of the CSAT troops occupying it. The city will be captured when all three sectors are.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
The assault on <marker name='city'>La Rochelle</marker> isn't going so well. CSAT have heavily occupied the city and our <marker name='sacrifices'>inital wave</marker> was barely able to get into the city limits before being decimated.
<br/><br/>
We've been called in to reinforce them. Push in and take La Rochelle.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
A company-sized CSAT force, composed of infantry and armor. The city is crawling with them, with concentrations at the <marker name='church'>church</marker> and the <marker name='port'>port</marker>. Expect reinforcements from the east.
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
The <marker name='sacrifices'>first wave</marker> is still fighting, though who knows for how long. We're also staging a <marker name='secondassault'>parallel assault</marker> on Mont Tanoa, though that shouldn't interfere with our operation.
"]];

// ====================================================================================