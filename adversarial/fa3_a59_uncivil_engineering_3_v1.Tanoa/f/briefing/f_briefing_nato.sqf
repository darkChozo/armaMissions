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

waitUntil {!isNil {colorGrid}};

_bom = player createDiaryRecord ["diary", ["Bomb Defusal Manual","
<br/>
The DZ7408 is a cheap, reliable detonator popular with terrorists, militia, and insurgents the world over. Fortunately, due to its simple design it is relatively easy to defuse.
<br/><br/>
<img image='detonator.jpg'/>
<br/><br/>
A DZ7408 is easily recognizable by its two displays, a numeric panel and a color panel. These displays are key to the defusal process.
<br/><br/>
In order to defuse the bomb, find the appropriate entry in Table 1A for your number-color combination and follow the listed instructions. Five successful button presses will defuse the bomb. An unsuccessful press will engage a fifteen second lock-out period, during which the color panel will be turned off.
<br/><br/>
<font size=18>TABLE 1A: DEFUSAL INSTRUCTIONS</font>
<br/><br/>
If the color panel is red:<br/>
...press the " + (colorGrid select 0 select 0) + " button if the number panel is 0<br/>
...press the " + (colorGrid select 1 select 0) + " button if the number panel is 1<br/>
...press the " + (colorGrid select 2 select 0) + " button if the number panel is 2<br/>
...press the " + (colorGrid select 3 select 0) + " button if the number panel is 3<br/>
...press the " + (colorGrid select 4 select 0) + " button if the number panel is 4<br/><br/>
If the color panel is green:<br/>
...press the " + (colorGrid select 0 select 1) + " button if the number panel is 0<br/>
...press the " + (colorGrid select 1 select 1) + " button if the number panel is 1<br/>
...press the " + (colorGrid select 2 select 1) + " button if the number panel is 2<br/>
...press the " + (colorGrid select 3 select 1) + " button if the number panel is 3<br/>
...press the " + (colorGrid select 4 select 1) + " button if the number panel is 4<br/><br/>
If the color panel is blue:<br/>
...press the " + (colorGrid select 0 select 2) + " button if the number panel is 0<br/>
...press the " + (colorGrid select 1 select 2) + " button if the number panel is 1<br/>
...press the " + (colorGrid select 2 select 2) + " button if the number panel is 2<br/>
...press the " + (colorGrid select 3 select 2) + " button if the number panel is 3<br/>
...press the " + (colorGrid select 4 select 2) + " button if the number panel is 4
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Our men on-site are mostly armed with pistols; they stand no chance against the terrorists. They may be able to observe their movements and take potshots but should avoid a straight fight.
<br/><br/>
The terrorists don't appear to have vehicles, so it'll be difficult for them to leave the site before we show up. We should be able to attack from pretty much any angle, but be careful.
<br/><br/>
Our counterterrorism units are equipped with heavy armor and spec-op gear, and drive military surplus MRAPs. The terrorists probably don't have anything that can penetrate the MRAPs' armor, but can still immobilize them by shooting out the tires. Use them as mobile cover or as battering rams.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Defuse the bomb's detonator.
<br/><br/>
Possible detonator locations are marked with black circles on your map.
<br/><br/>
For more information on how to defuse a bomb, see the " + (createDiaryLink ["diary",_bom,"Bomb Defusal Manual"])  + ".
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
Eight minutes ago, terrorists seized <marker name='windfarm'>several blocks in downtown Georgetown</marker> and set up some sort of explosive device.
<br/><br/>
We're the only ones close enough to respond in time. Join up with the police already on-site, and defuse that bomb.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
Standard-issue <marker name='terrorists'>terrorists</marker> equipped with assault rifles and IEDs.
<br/><br/>
<img image='terrorists.jpg'/>
"]];

// ====================================================================================