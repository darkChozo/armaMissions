clickedPos = nil;
onMapSingleClick "clickedPos = _pos";
openMap [true,false];
waitUntil {!isNil "clickedPos"};
openMap false;
for "_i" from 1 to 1 do {
    [] spawn {
        _pod = clickedPos call compile loadFile "dropPodRocket.sqf";
        _action = player addAction ["Teleport to pod",{player moveInCargo (_this select 3)},_pod,0];

        _grp = createGroup west;
        _grp addVehicle _pod;
        for "_i" from 1 to 5 do {
            _grp createUnit ["B_Soldier_F",position _pod,[],0,"NONE"] moveInCargo _pod;
        };
        waitUntil {getPos _pod select 2 < 5};
        player removeAction _action;
        sleep 5;
        _grp leaveVehicle _pod;
    };
};