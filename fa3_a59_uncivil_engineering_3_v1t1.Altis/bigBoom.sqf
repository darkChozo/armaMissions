if (!isServer) exitWith {};

for "_i" from 1 to 200 do {
    createVehicle ["Bo_GBU12_LGB",[(getMarkerPos "bombCenter" select 0)+ (_i*cos (_i*17.5)),(getMarkerPos "bombCenter" select 1)+ (_i*sin (_i*17.5)),0],[],0,"CAN_COLLIDE"];
}