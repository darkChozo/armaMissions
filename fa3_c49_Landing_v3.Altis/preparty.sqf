 //_mkrs = ["tgt","tgt_1","tgt_2","tgt_3","tgt_4","tgt_5","tgt_6","tgt_7","tgt_8","tgt_9","tgt_10","tgt_11","tgt_12","tgt_13","tgt_14","tgt_15","tgt_16","tgt_17","tgt_18","tgt_19","tgt_20","tgt_21","tgt_22","tgt_23","tgt_24","tgt_25","tgt_26","tgt_27","tgt_28","tgt_29","tgt_30","tgt_31","tgt_32","tgt_33","tgt_34","tgt_35","tgt_36","tgt_37","tgt_38","tgt_39","tgt_40","tgt_41","tgt_42","tgt_43","tgt_44","tgt_45","tgt_46","tgt_47","tgt_48","tgt_49","tgt_50","tgt_51","tgt_52","tgt_53","tgt_54","tgt_55","tgt_56","tgt_57","tgt_58","tgt_59","tgt_60","tgt_61","tgt_62","tgt_63","tgt_64","tgt_65","tgt_66","tgt_67","tgt_68","tgt_69","tgt_70","tgt_71","tgt_72","tgt_73","tgt_74","tgt_75","tgt_76","tgt_77","tgt_78","tgt_79","tgt_80","tgt_81"];
 if(isServer) then {
 _mkrs = _this select 0;
 while{bombing}do{
    // [tgt,"R_230mm_HE"] execVM "ws_fnc\effects\fn_createOrdnance.sqf";
		_mkr = _mkrs call BIS_fnc_selectRandom;
		//_strikePos = getmarkerpos _mkr;
		null=["R_60mm_HE",_mkr,0.5,220,30,250]execVM "artillery.sqf";
		sleep 10;
	 };
	};