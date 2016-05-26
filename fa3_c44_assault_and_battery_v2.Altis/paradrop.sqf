if (!isServer) exitWith {};

{
     _x spawn {
        _pod = attachedObjects vehicle _this select 0;
        _veh = vehicle _this;
        _chm = [_veh,"red",0,[0,2,-2.5]] call ws_fnc_attachChem;

        waitUntil {sleep .5; getMarkerColor "dropzone" != ""};
        _wp = group _this addWaypoint [getMarkerPos "dropzone",0];
        _wp setWaypointSpeed "LIMITED";
        _wp setWaypointBehaviour "CARELESS";
        _wp = group _this addWaypoint [getMarkerPos "exfil",0];
        
        waitUntil {sleep .5; _pod distance2d (getMarkerPos "dropzone") < 2000};
        ["LeadTrack03_F","playMusic",crew _pod] call BIS_fnc_MP;
        deleteVehicle _chm;
        _chm = [_veh,"yellow",0,[0,2,-2.5]] call ws_fnc_attachChem;
        
        waitUntil {sleep .5; _pod distance2d (getMarkerPos "dropzone") < 1500};
        deleteVehicle _chm;
        _chm = [_veh,"green",0,[0,2,-2.5]] call ws_fnc_attachChem;

        waitUntil {sleep .5; _pod distance2d (getMarkerPos "dropzone") < 1250};
        {_x action ['Eject',_pod]} forEach crew _pod;
        
        _pos = [getMarkerPos "dropzone" select 0, getMarkerPos "dropzone" select 1, 500];
        _ugv = "O_UGV_01_F" createVehicle _pos;
        createVehicleCrew (_ugv);  
        ["crate_med",_ugv] call f_fnc_assignGear;
        _ugv attachTo [createVehicle ["B_parachute_02_F",_pos,[],200,"NONE"],[-.5,0,1]];
        _ugv setCaptive true;
        [_ugv, "ugvBackpacks"] call BIS_fnc_MP;
        waitUntil {sleep .5; getPos _ugv select 2 < 5;};
        _ugv allowDamage false;
        detach _ugv;
        sleep 2;
        _ugv allowDamage true;
        _ugv setCaptive false;
    };
} forEach [helo, helo_1, helo_2];