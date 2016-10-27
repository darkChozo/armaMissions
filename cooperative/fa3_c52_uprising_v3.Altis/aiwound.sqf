// AI wounding script.
// Heavily based on the F3 Simple Wounding System (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================
_unit = _this select 0;
_selection = _this select 1;
_damage = _this select 2;
_totalDamage = damage _unit + _damage;

if (f_var_debugMode == 1) then {
	player sidechat format["%1 - '%2' - %3 - %4",_unit,_selection,_damage,_totalDamage];
};

// if selection is not head or hands or "" check if we can save him.
if((vehicle _unit == _unit) && (_selection != "head") &&  _selection != ""  && _selection != "hands" && _totalDamage >= 1) then
{
	if(!(_unit getVariable ["f_wound_down",false])) then
	{
		_damage = 0;
		_unit setVariable ["f_wound_down",true];

		if (f_var_debugMode == 1) then {
			player sidechat "AI downed";
		};
        
        _weapons = weapons _unit;
        _myMags = magazines _unit;

        // Drop weapons and ammo on ground
        if (count (_myStuff+_myMags)>0) then {
            _box = createVehicle ["groundWeaponHolder", _unit modelToWorld [0,0.8,0], [], 0.5, "CAN_COLLIDE"];
            _box setDir random 360;
        };

        {
            _box addWeaponCargoGlobal [_x, 1];
            _unit removeWeapon _x;
        } forEach _myStuff;
        {
            _box addMagazineCargoGlobal [_x, 1];
            player removeItem _x; 
        } forEach _myMags;

		// keeps them from spinnin' and hopefully from shooting if something goes wrong
		_unit disableAI "ANIM";
		_unit disableAI "TARGET";
		_unit disableAI "AUTOTARGET";

		// play a wounded animation
		if (random 1 > .5) then {
			_unit playAction "agonyStart";
			if (random 1 > .5) then {
				_unit spawn {
					sleep 10;
					// this transition is a bit ugly but the animation is pretty cool
					_this setDir (getDir _this + 165);
					_this switchMove "acts_InjuredLookingRifle02";
				};
			};
		} else {
			_unit playActionNow "Unconscious";
		};
		_unit spawn {_this allowDammage false;sleep .5;_this allowDammage true;};

		// make the unit bleed out over 60 seconds; healing will stabilize them (not revive them, this is for flavor only)
		// also this may cause issues with "kill all the enemies" triggers, look for f_wound_down when you're counting
		_unit spawn {
			// wait a bit to let event handlers settle
			sleep 5;
			// Ensure the AI is wounded enough to have the first aid option
			if (damage _this < 0.3) then { _this setDamage 0.3};
			_tick = (1 - damage _this) / 30;
			while {alive _this && damage _this >= 0.3} do {
				_this setDamage (damage _this + _tick);
				sleep 2;
			};
		};
	};
};
_damage

