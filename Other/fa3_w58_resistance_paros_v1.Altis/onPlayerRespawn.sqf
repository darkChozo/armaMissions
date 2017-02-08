
_unit = _this select 0;

_unit setcaptive false;

if !(side _unit == west) exitWith{};

// reinit SWS
_unit setVariable ["f_wound_down",false];
_unit setVariable ["f_wound_bleeding",false];
_unit setVariable ["f_wound_blood",100]; // other player dont need know this
_unit setVariable ["f_wound_dragging",nil];

//need to recreate these effects for reasons
ppEffectDestroy F_UncCC; ppEffectDestroy F_UncRadialBlur; ppEffectDestroy F_UncBlur;
F_UncCC = ppEffectCreate ["ColorCorrections", 1603];
F_UncRadialBlur = ppEffectCreate ["RadialBlur", 280];
F_UncBlur = ppEffectCreate ["DynamicBlur", 180];
_unit spawn f_fnc_LifeTick;
