_this addAction ["Take AK Ammo",{
	_this select 1 addMagazines ["30Rnd_762x39_Mag_F",5];
	_this select 1 addMagazines ["30Rnd_762x39_Mag_Tracer_F",5];
	_this select 1 addmagazines ["Chemlight_yellow",2];
	_this select 1 addmagazines ["Chemlight_blue",2];
	_this select 1 addmagazines ["Chemlight_red",2];
	_this select 1 setVariable ["hasAKAmmo",true,true];
},nil,5,true,true,"","_this hasWeapon 'arifle_AKM_F' && isNil {_this getVariable 'hasAKAmmo'}"];

_this addAction ["Take RPG Ammo",{
	_this select 1 addBackpack "B_FieldPack_oli";
	unitBackpack (_this select 1) addMagazineCargoGlobal ["RPG7_F",3];
	_this select 1 setVariable ["hasRPGAmmo",true,true];
},nil,5,true,true,"","_this hasWeapon 'launch_RPG7_F' && isNil {_this getVariable 'hasRPGAmmo'}"];