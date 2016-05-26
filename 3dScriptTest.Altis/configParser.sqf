_str = "";
{
    _str = _str + ([format ["%1
", _x], 24] call BIS_fnc_trimString);
} forEach ("true" configClasses (configFile >> "CfgSounds"));

copyToClipboard _str;