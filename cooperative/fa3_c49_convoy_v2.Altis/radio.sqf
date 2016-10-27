if (!hasInterface) exitWith {};

private ["_veh","_trackList","_totalPlaytime","_playTime","_currentSong","_nextSongHandles"];

_veh = _this select 0;
_trackList = _this - [_veh];

_totalPlaytimes = [];
_nextSongHandles = [];
{
    _totalPlaytime = 0;
    for '_i' from 0 to (count _x) - 1 do {
        _totalPlaytime = _totalPlaytime + (_x select _i select 1);
    };
    _totalPlaytimes = _totalPlaytimes + [_totalPlaytime];
    _nextSongHandles = _nextSongHandles + [nil];
} forEach _tracklist;

_veh setVariable ["radioOn",false];
_veh setVariable ["totalPlaytimes",_totalPlaytimes];
_veh setVariable ["nextSongHandles",_nextSongHandles];
_veh setVariable ["trackList",_this - [_veh]];
_veh setVariable ["currentStation",0];
player setVariable ["radioPlaying",false];
player setVariable ["radioSource",objNull];

_veh setVariable ["currentSong",{
    private ["_totalPlaytimes","_trackList","_currentStation","_playTime","_idx"];
    _totalPlaytimes = _this getVariable "totalPlaytimes";
    _trackList = _this getVariable "trackList";
    _currentStation = _this getVariable "currentStation";
    _playTime = 0;

    if (isMultiplayer) then {
        _playTime = serverTime mod (_totalPlaytimes select _currentStation);
    } else {
        _playTime = time mod (_totalPlaytimes select _currentStation);
    };
    _idx = 0;
    while {_playTime > _trackList select _currentStation select _idx select 1 &&
           _idx < (count (_trackList select _currentStation)) - 1} do {
        _playTime = _playTime - (_trackList select _currentStation select _idx select 1);
        _idx = _idx + 1;
    };
    [_idx,_playTime]
}];

_veh setVariable ["turnRadioOn",{
    private ["_currentSong","_currentStation","_nextSongHandles","_handle"];
    _currentSong = _this call (_this getVariable "currentSong");
    _currentStation = _this getVariable "currentStation";
    _nextSongHandles = _this getVariable "nextSongHandles";

    playMusic [_this getVariable "trackList" select _currentStation select (_currentSong select 0) select 0,_currentSong select 1];
    player setVariable ["radioPlaying",true];
    player setVariable ["radioSource",_this];

    if (isNil {_nextSongHandles select _currentStation}) then {
        // _this select 2 is just the song length - how far we are into the current song
        _handle = [_this,(_this getVariable "trackList" select _currentStation select (_currentSong select 0) select 1) - (_currentSong select 1),_currentStation] spawn {
            sleep (_this select 1);
            _this select 0 getVariable "nextSongHandles" set [_this select 2,nil];
            if (_this select 0 getVariable "currentStation" == _this select 2 && player in crew (_this select 0) && _this select 0 getVariable "radioOn") then {
                _this select 0 call (_this select 0 getVariable "turnRadioOn");
            };
        };
        _nextSongHandles set [_currentStation,_handle];
        _this setVariable ["nextSongHandles",_nextSongHandles];
    };
}];

_veh setVariable ["turnRadioOff",{
    playMusic "";
    player setVariable ["radioPlaying",false];
}];

_veh setVariable ["nextStation",{
    _currentStation = _this getVariable "currentStation";
    _currentStation = _currentStation + 1;
    if (_currentStation == count (_this getVariable "trackList")) then {
        _currentStation = 0;
    };
    _this setVariable ["currentStation",_currentStation];
    _this call (_this getVariable "turnRadioOn");
}];

_veh setVariable ["previousStation",{
    _currentStation = _this getVariable "currentStation";
    _currentStation = _currentStation - 1;
    if (_currentStation == - 1) then {
        _currentStation = (count (_this getVariable "trackList")) - 1;
    };
    _this setVariable ["currentStation",_currentStation];
    _this call (_this getVariable "turnRadioOn");
}];

_veh addAction ["Radio On",{
                                _this select 0 setVariable ["radioOn",true];
                                _this select 0 spawn (_this select 0 getVariable "turnRadioOn");
                            },nil,0,false,true,"","_this in crew _target && !(_target getVariable 'radioOn')"];
_veh addAction ["Radio Off",{
                                 _this select 0 setVariable ["radioOn",false];
                                 _this select 0 spawn (_this select 0 getVariable "turnRadioOff");
                             },nil,0,false,true,"","_this in crew _target && (_target getVariable 'radioOn')"];
_veh addAction ["Next Station",{
                                _this select 0 spawn (_this select 0 getVariable "nextStation");
                            },nil,0,false,true,"","_this in crew _target && (_target getVariable 'radioOn') && count (_target getVariable 'trackList') > 1"];
_veh addAction ["Previous Station",{
                                _this select 0 spawn (_this select 0 getVariable "previousStation");
                             },nil,0,false,true,"","_this in crew _target && (_target getVariable 'radioOn') && count (_target getVariable 'trackList') > 1"];
_veh addEventHandler ["GetOut",{
                                    if (_this select 2 == player) then {
                                        _this select 0 spawn (_this select 0 getVariable "turnRadioOff");
                                    }
                                }];
_veh addEventHandler ["GetIn",{
                                    if (_this select 2 == player && _this select 0 getVariable "radioOn") then {
                                        _this select 0 spawn (_this select 0 getVariable "turnRadioOn");
                                    }
                                }];
/*
// this approach should be desync-resistant
addMusicEventHandler ["MusicStop",{
    [] spawn {
        sleep .5; // avoid a billion loops at the end of a song
        if (player getVariable "radioPlaying") then {
            _veh = player getVariable "radioSource";
            if (_veh getVariable "radioOn" && vehicle player == (player getVariable "radioSource")) then {
               _veh call (_veh getVariable "turnRadioOn");
            };
        };
    };
}];*/