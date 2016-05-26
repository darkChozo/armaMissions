waituntil {!isnull player};
sleep 1;

_heli = _this select 0;

_skins = 
[

"A3\Air_F\Heli_Light_01\Data\Heli_Light_01_ext_Blufor_CO.paa",
"A3\Air_F\Heli_Light_01\Data\heli_light_01_ext_uni_mc.paa",
"A3\Air_F\Heli_Light_01\Data\heli_light_01_ext_indp_co.paa",
"A3\Air_F\Heli_Light_01\Data\heli_light_01_ext_co.paa",
"A3\Air_F\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa",
"A3\Air_F\Heli_Light_01\Data\heli_light_01_ext_ion_co.paa",
"A3\Air_F\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa",
"A3\Air_F\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa",
"A3\Air_F\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa",
"A3\Air_F\Heli_Light_01\Data\Skins\heli_light_01_ext_graywatcher_co.paa",
"A3\Air_F\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa",
"A3\Air_F\Heli_Light_01\Data\Skins\heli_light_01_ext_shadow_co.paa",
"A3\Air_F\Heli_Light_01\Data\Skins\heli_light_01_ext_sheriff_co.paa",
"A3\Air_F\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa",
"A3\Air_F\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa",
"A3\Air_F\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa",
"A3\Air_F\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa",
"A3\Air_F\Heli_Light_01\Data\Skins\heli_light_01_ext_wasp_co.paa",
"A3\Air_F\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa"

];

for "_i" from 0 to (count _skins)-1 do {
_skin = _skins select _i;
_heli setObjectTexture [0,_skin];

_heli addAction ["Change Skin: " + _skin, {_this select 0 setObjectTexture [0,_this select 3]},_skin];
};