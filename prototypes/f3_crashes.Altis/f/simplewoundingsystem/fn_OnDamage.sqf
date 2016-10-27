// F3 - SimpleWoundingSystem
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================
_unit = _this select 0;
_selection = _this select 1;
_damage = _this select 2;
_totalDamage = damage _unit + _damage;
if (f_var_debugMode == 1) then
{
	player sidechat format["%1 - '%2' - %3 - %4",_unit,_selection,_damage,_totalDamage];
};



if ((vehicle _unit) getVariable ["r0ed_SurvivableCrashes", false]) then {
	if (_totalDamage > .88) then {
		switch (_part) do {
			case "": {
				_unit setDamage .88;
			};
			case "head";
			case "body": {
				_unit setHit [_part, .88];
			};
			default {
				_unit setHit [_part, 1 min _damage];
			};
		};
		_damage = 0;
	};
};

// if selection is not head or hands or "" check if we can save him.
if((_selection != "head") &&  _selection != ""  && _selection != "hands" && _totalDamage > 1) then
{
	if(!(_unit getVariable ["f_wound_down",false])) then
	{
		 [[_unit,true], "f_fnc_SetDowned", true] spawn BIS_fnc_MP;

		_damage = 0;
		_unit spawn {_this allowDammage false;sleep 1;_this allowDammage true};
	};
};

if(isBleeding _unit && _unit getVariable ["f_wound_bleeding",false]) then
{
	_unit setVariable ["f_wound_bleeding",true];
};
_damage

