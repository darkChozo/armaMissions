bunker1 setVariable ["destroyed",false];
bunker2 setVariable ["destroyed",false];
dome allowDamage false;

if (!isServer) exitWith {};

bunker1 spawn {
    waitUntil {sleep 3; _this getVariable "destroyed"};
    createVehicle ["test_EmptyObjectForFireBig",position _this,[],0,"CAN_COLLIDE"];
    createVehicle ["test_EmptyObjectForSmoke",position _this,[],0,"CAN_COLLIDE"];
    sleep (1 + random 1);
    createVehicle ["R_PG32V_F", position b1secondary1,[],0,"CAN_COLLIDE"] setVelocity [0,0,50];
    createVehicle ["test_EmptyObjectForFireBig",position b1secondary1,[],0,"CAN_COLLIDE"];
    createVehicle ["test_EmptyObjectForSmoke",position b1secondary1,[],0,"CAN_COLLIDE"];
    sleep (1 + random 1);
    createVehicle ["R_60mm_HE", position b1secondary2,[],0,"CAN_COLLIDE"] setVelocity [0,0,50];
    createVehicle ["test_EmptyObjectForFireBig",position b1secondary2,[],0,"CAN_COLLIDE"];
    createVehicle ["test_EmptyObjectForSmoke",position b1secondary2,[],0,"CAN_COLLIDE"];
    sleep (1 + random 1);
    createVehicle ["Bo_GBU12_LGB", position dome,[],0,"CAN_COLLIDE"];
    createVehicle ["test_EmptyObjectForFireBig",position dome,[],0,"CAN_COLLIDE"];
    createVehicle ["test_EmptyObjectForSmoke",position dome,[],0,"CAN_COLLIDE"];
    dome setDamage 1;
};

bunker2 spawn {
    waitUntil {sleep 3; _this getVariable "destroyed"};
    createVehicle ["R_PG32V_F", position _this,[],0,"CAN_COLLIDE"];
    createVehicle ["test_EmptyObjectForFireBig",position _this,[],0,"CAN_COLLIDE"];
    createVehicle ["test_EmptyObjectForSmokeBig",position _this,[],0,"CAN_COLLIDE"];
    sleep (1 + random 1);
    createVehicle ["R_PG32V_F", position b2secondary1,[],0,"CAN_COLLIDE"] setVelocity [0,0,50];
    createVehicle ["test_EmptyObjectForFireBig",position b2secondary1,[],0,"CAN_COLLIDE"];
    createVehicle ["test_EmptyObjectForSmoke",position b2secondary1,[],0,"CAN_COLLIDE"];
    sleep (1 + random 1);
    createVehicle ["R_60mm_HE", position b2secondary2,[],0,"CAN_COLLIDE"] setVelocity [0,0,50];
    createVehicle ["test_EmptyObjectForFireBig",position b2secondary2,[],0,"CAN_COLLIDE"];
    createVehicle ["test_EmptyObjectForSmoke",position b2secondary2,[],0,"CAN_COLLIDE"];
    sleep (1 + random 1);
    createVehicle ["Bo_GBU12_LGB", tower modelToWorld [0,0,-25],[],0,"CAN_COLLIDE"];
    createVehicle ["test_EmptyObjectForFireBig",tower modelToWorld [0,0,-20],[],0,"CAN_COLLIDE"];
    createVehicle ["test_EmptyObjectForSmoke",tower modelToWorld [0,0,-20],[],0,"CAN_COLLIDE"];
    {_x setDamage 1} forEach [tower,tower1,tower2,tower3];
};