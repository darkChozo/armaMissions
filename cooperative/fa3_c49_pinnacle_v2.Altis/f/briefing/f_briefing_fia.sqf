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

// NOTES: RECON PHOTOS

_adm = player createDiaryRecord ["diary", ["Recon Photos","
<br/>
<img image='images\south.jpg' width=360/>
<br/><br/>
<img image='images\checkpoint.jpg' width=360/>
<br/><br/>
<img image='images\east.jpg' width=360/>
<br/><br/>
<img image='images\north.jpg' width=360/>
<br/><br/>
<img image='images\west.jpg' width=360/>
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
<font size='18'>TRUCK BOMBS</font>
<br/>
We've replaced the fuel in the trucks with something a bit more volatile and rigged them to blow. When we get them near the bunkers, any of our soldiers should be able to start the timer with a scrollwheel action (the truck has to be empty first). Just watch out, if the truck gets blown up it's cargo will probably go off with it.
<br/><br/>
<font size='18'>HELO PILOTS</font>
<br/>
We don't have any helos, but the enemy certainly does. If we capture one, the pilots might come in handy. That's assuming we brought them, of course.
<br/><br/>
<font size='18'>INTEL</font>
<br/>
The AAF have kept the layout of the Pinnacle off all the official maps. Our recon teams have been able to pinpoint some of the locations that we might be interested in, however. These locations are marked on your map.
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
While the Pinnacle is mostly designed to be accessed via air, there is a small service road on the southwestern side of the mountain. It's guarded, however, and will be difficult to use without announcing our presence.
<br/><br/>
Alternatively, we might try to find another way to get up the mountain. The base itself is surrounded by a razorwire fence so we'll need explosives or vehicles to bypass it. Watch your sightlines; the AAF are equipped with PCMLs that can target an offroad from almost a kilometer out.
<br/><br/>
In any case, we should be careful about using the trucks. They'll be useful for moving towards our initial positions and rapidly assaulting the base, but they're not exactly stealthy.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
1. Blow up both bunkers using the fuel trucks.<br/>
                    OR<br/>
1. If all fuel trucks are destroyed, kill all enemies in the Pinnacle instead.
<br/><br/>

2. Exfiltrate the area.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
The Agios Panagiotis Strategic Command Center, better known as the Pinnacle, is a Cold War-era fortress built into the side of a mountain that has since been re-purposed as the primary nerve center for the AAF. And today, it will burn.
<br/><br/>
We've filled a few fuel trucks with some very energetic chemicals and have rigged them to blow. We attack the Pinnacle, get the fuel trucks to the bunker entrances, and blow the whole thing to kingdom come.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
Our comrades are staging a little distraction in Kavala, so hopefully we'll just need to deal with the Pinnacle's garrison. They can only hold out for so long however, so move fast.
<br/><br/>
Also, watch out for enemy helicopters - there are always a few on station within the base.
"]];

// ====================================================================================