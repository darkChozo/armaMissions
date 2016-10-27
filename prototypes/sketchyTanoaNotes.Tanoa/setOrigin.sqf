if (!isServer) exitWith {};

params [["_unit",objNull,[objNull,"",[]]],["_origin","american",[""]]];

_units = [];
switch typeName _unit do {
    case "STRING" : {
        {
            if (!isPlayer _x && faction _x == _unit) then {
                _units pushBack _x;
            }
        } forEach allUnits;
    };
    case "OBJECT" : {
        _units pushBack _unit;
    };
    case "ARRAY" : {
        _units = _unit;
    };
};

_africanFaces =  "'Head_African' in getArray (_x >> 'identityTypes')" configClasses (configFile >> "CfgFaces" >> "Man_A3") apply {configName _x};
_asianFaces = "'Head_Asian' in getArray (_x >> 'identityTypes')" configClasses (configFile >> "CfgFaces" >> "Man_A3") apply {configName _x};
_greekFaces = "'Head_Greek' in getArray (_x >> 'identityTypes')" configClasses (configFile >> "CfgFaces" >> "Man_A3") apply {configName _x};
_persianFaces = "'Head_TK' in getArray (_x >> 'identityTypes')" configClasses (configFile >> "CfgFaces" >> "Man_A3") apply {configName _x};
_tanoanFaces = "'Head_Tanoan' in getArray (_x >> 'identityTypes')" configClasses (configFile >> "CfgFaces" >> "Man_A3") apply {configName _x};
_whiteFaces = "'Head_Euro' in getArray (_x >> 'identityTypes')" configClasses (configFile >> "CfgFaces" >> "Man_A3") apply {configName _x};
_allFaces = _africanFaces + _asianFaces + _greekFaces + _persianFaces + _tanoanFaces + _whiteFaces;


_greekVoices = "'LanguageGRE_F' in getArray (_x >> 'identityTypes')" configClasses (configFile >> "CfgVoice") apply {configName _x};
_americanEnglishVoices = "'LanguageENG_F' in getArray (_x >> 'identityTypes')" configClasses (configFile >> "CfgVoice") apply {configName _x};
_britishEnglishVoices = "'LanguageENGB_F' in getArray (_x >> 'identityTypes')" configClasses (configFile >> "CfgVoice") apply {configName _x};
_frenchEnglishVoices = "'LanguageENGFRE_F' in getArray (_x >> 'identityTypes')" configClasses (configFile >> "CfgVoice") apply {configName _x};
_frenchVoices = "'LanguageFRE_F' in getArray (_x >> 'identityTypes')" configClasses (configFile >> "CfgVoice") apply {configName _x};
_chineseVoices = "'LanguageCHI_F' in getArray (_x >> 'identityTypes')" configClasses (configFile >> "CfgVoice") apply {configName _x};
_farsiVoices = "'LanguagePER_F' in getArray (_x >> 'identityTypes')" configClasses (configFile >> "CfgVoice") apply {configName _x};

// algerian because I don't know what I'm doing
_africanFirstNames = ["Mohamed","Amine","Karim","Yacine","Ahmed","Nazim","Ali","Alyes","Mehdi","Salah","Omar","Kamel"];
_africanLastNames = ["Abed","Meziani","Moussaoui","Bouziane","Hakim","Hocine","Berkane","Kaddour","Nabil","Hamid","Mourad"];
_chineseFirstNames = ["Wang","Chen","Zhang","Liu"];

{
    switch _origin do {
        case "african" : {
            [_x,_africanFaces call BIS_fnc_selectRandom] remoteExec ["setFace"];
            [_x,_frenchEnglishVoices call BIS_fnc_selectRandom] remoteExec ["setSpeaker"];
        };
        case "chinese" : {
            [_x,_asianFaces call BIS_fnc_selectRandom] remoteExec ["setFace"];
            [_x,_chineseVoices call BIS_fnc_selectRandom] remoteExec ["setSpeaker"];
        };
        case "greek" : {
            [_x,_greekFaces call BIS_fnc_selectRandom] remoteExec ["setFace"];
            [_x,_greekVoices call BIS_fnc_selectRandom] remoteExec ["setSpeaker"];
        };
        case "persian" : {
            [_x,_persianFaces call BIS_fnc_selectRandom] remoteExec ["setFace"];
            [_x,_farsiVoices call BIS_fnc_selectRandom] remoteExec ["setSpeaker"];
        };
        case "tanoan" : {
            [_x,_tanoanFaces call BIS_fnc_selectRandom] remoteExec ["setFace"];
            [_x,(_frenchEnglishVoices+_frenchVoices) call BIS_fnc_selectRandom] remoteExec ["setSpeaker"];
        };
        case "american" : {
            [_x,_allFaces call BIS_fnc_selectRandom] remoteExec ["setFace"];
            [_x,_americanEnglishVoices call BIS_fnc_selectRandom] remoteExec ["setSpeaker"];
        };
        case "british" : {
            [_x,(_africanFaces + _asianFaces + _persianFaces + _tanoanFaces + _whiteFaces) call BIS_fnc_selectRandom] remoteExec ["setFace"];
            [_x,_britishEnglishVoices call BIS_fnc_selectRandom] remoteExec ["setSpeaker"];
        };
        case "all" : {
            _x setFace (_allFaces call BIS_fnc_selectRandom);
        };
    };
} forEach _units;