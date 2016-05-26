["Alert",["Hack complete, target located!"]] call BIS_fnc_showNotification;

if (isServer) then {
    _marker = createMarker ["targetMarker",[0,0,0]];
    _marker setMarkerShape "ELLIPSE";
    _marker setMarkerSize [150,150]; 
    _marker setMarkerBrush "SolidBorder";
    _marker setMarkerColor "ColorRed";
    _marker setMarkerAlpha .75;
    _textMarker = createMarker ["targetMarkerText",[0,0,0]];
    _textMarker setMarkerShape "ICON";
    _textMarker setMarkerType "mil_destroy";
    _textMarker setMarkerText "Target Location";
    while {true} do {
        _marker setMarkerPos ([target,random 150,random 360] call BIS_fnc_relPos);
        _textMarker setMarkerPos getMarkerPos _marker;
        sleep 15;
    };
};