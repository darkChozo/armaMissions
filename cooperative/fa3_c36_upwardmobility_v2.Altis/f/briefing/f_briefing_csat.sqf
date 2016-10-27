// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// FACTION: CSAT

// ====================================================================================

// NOTES: CREDITS
// The code below creates the administration sub-section of notes.

_cre = player createDiaryRecord ["diary", ["Credits","
<br/>
Created by darkChozo for Folk ARPS.
<br/><br/>
Made with F3 (http://www.ferstaberinde.com/f3/en/)
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
<font size='18'>MONEY BOXES</font>
<br/>
The boxes of money will be strapped down to the trucks. They can be released with a scrollwheel action or by destroying the truck. Don't worry about damaging the cash, it's protected by ultra-heavy-duty cardboard armor.
<br/><br/>
<img image='photo.jpg'/>
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
The convoy vehicles are going to be electronically locked, so we won't be able to drive the cash out. We'll have to take them by helicopter to the <marker name=escape>dropoff</marker>.
<br/><br/>
We have two military surplus Littlebirds to do the slingloading. We're expecting six boxes, so they'll have to make multiple trips. Also, those things carry less armor than their pilots, so try to keep them out of harm's way.
<br/><br/>
If things get too hot or we lose the helicopters, we might have to make an early escape. Just remember, the less money we get, the less money ends up in your pockets - we'll need at least three to cover our costs.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
1. Ambush the <marker name=indpath>convoy</marker>.<br/>
2. Bring the money to the <marker name=escape>dropoff</marker>.<br/>
3. <marker name=escape>Escape Altis.</marker>
<br/><br/>
The mission will end when all players are within ~3km of the escape point - make sure all boxes are collected before this!
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
Our ""friend"" in the AAF has tipped us off about something big this time. Apparently, they've sized a couple hundred million in untraceable US bills from the local insurgents. A convoy carrying the cash is moving from <marker name=kavala>Kavala</marker> to <marker name=airfieldarea>Krya Nera airfield</marker>, where they'll fly it off to god-knows-where.
<br/><br/>
If this goes right, they'll never make it to the airfield. We'll ambush them in the mountains near Abdera, move the cash offshore, and live like kings for the rest of our lives.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
The convoy should consist of three transport trucks escorted by armed vehicles and troops. We've also spotted heavy armor at <marker name=airfieldarea>the airfield</marker>. After we attack the convoy, expect an AAF reaction force from the north, west, and south.
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
<marker name=escape>A few of our comrades are holding offshore in an unregistered trawler.</marker> We've also bribed a few of the locals to leave out some dingies that we can use in our escape.
"]];

// ====================================================================================
