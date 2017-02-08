_this addEventHandler ["Fired",{
	(_this select 6) spawn {
		_pos = getPos _this;
		waitUntil {if (!isNull _this) then {_pos = getPos _this}; isNull _this};

		for "_i" from 1 to 200 do {
			_bull = "B_65x39_Caseless" createVehicle _pos;
			_bull setVelocity (vectorNormalized [1-random 2, 1-random 2, 1-random 2] vectorMultiply 40);
			_bull spawn {
				_pos = getPos _this;
				while {!isNull _this} do {
					lines pushBack [_pos,getPos _this];
					_pos = getPos _this;
					sleep .1;
				};
			};
		};
	};
}];

lines = [];

addMissionEventHandler ["Draw3D",{
	{
		DrawLine3d (_x + [[1,0,0,1]]);
	} forEach lines;
}];
