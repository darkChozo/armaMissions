{
	_x unlinkItem "NVGoggles_INDEP";
	_x removePrimaryWeaponItem "acc_pointer_IR";
	_x addPrimaryWeaponItem "acc_flashlight";
	_x enableGunLights "forceOn";
} forEach units group _this;
