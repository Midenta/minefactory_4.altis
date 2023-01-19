/*
    File: init.sqf
    Author:

    Description:


	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!

*/
/*
if (isServer) then {
	[Husky,true] execVM "Scripts\husky\ADV_zeus.sqf";
};


if ((!isServer) && (player != player)) then {waitUntil {player == player};};

*/

//null = allUnits execVM "Scripts\husky\H8_dragBody.sqf";		//Verwundete bewegen

StartProgress = false;

if (hasInterface) then {
    [] execVM "config\briefing.sqf";
};
[] execVM "scripts\husky\time.sqf";
[] execVM "KRON_Strings.sqf";
//[] execVM "Scripts\husky\teargas.sqf";
//[] execVM "Scripts\husky\DynWeather.sqf";
//[] execVM "Scripts\husky\zlt_fastrope.sqf";
//[] execVM "Scripts\sperrzonensystem.sqf";
[] execVM "scripts\husky\fn_emptyFuel.sqf";
//[] execVM "Scripts\dlc_unlocker.sqf";
//[]execVM "Scripts\Altis_objekte.sqf";
//[]execVM "cutter.sqf";
[] execVM "scripts\nichtimside.sqf";    //BLOCK SIDE
//[] execVM "scripts\husky\spws.sqf";
//[] ExecVM "Scripts\HeadMovementFix\Main.sqf";
//[] execVM "Scripts\husky\SAKY_MAGAZINE_REPACK.sqf";
//ExecVM "Scripts\husky\windShield.sqf";
//ExecVM "Scripts\husky\HandBrake.sqf";
//{_x setFuelCargo 0} foreach nearestObjects [[16000,16000], ["Land_FS_Feed_F"], 25000]; 	//Geht ne

missionnamespace setvariable ["bis_fnc_curatorPinged_time", 99999999, true];		//Tschüss Zeusping

//[]execVM "scripts\husky\fn_lockgates.sqf";

//[] execVM "scripts\husky\lift\init.sqf"; // Lifting with Helo's

//[] execVM "scripts\husky\Init_Gopro.sqf";

//[] execVM "Scripts\husky\nosidechat.sqf";

//[] execVM "Scripts\husky\fn_lockgates.sqf";

[] execVM "scripts\fullScreenNightVision.sqf";


// mehrere Fraktionen in 1 Fahrzeug
west setFriend [resistance, 1];
resistance setFriend [west, 1];
east setFriend [resistance, 1];
resistance setFriend [east, 1];
east setFriend [west, 1];
west setFriend [east, 1];

// Snow environment
//=====================================================================================================================
 //[] spawn {call compile preprocessFileLineNumbers "Scripts\snow_environment\snow_max.sqf";};
		//execVM "Scripts\snow_environment\snow_sound.sqf";
		//execVM "Scripts\snow_environment\ground_fog.sqf";
 //execVM "Scripts\snow_environment\snow.sqf";
//{nul = [_x] execvm "Scripts\snow_environment\breath_fog.sqf" } forEach (playableUnits - [player]);
//=====================================================================================================================



/*
"layer_notifications" cutRsc ["rsc_notifications", "PLAIN"];

addMissionEventHandler ["Loaded",
{
	[] spawn
	{
		sleep 2;
		"layer_notifications" cutRsc ["rsc_notifications", "PLAIN"];
	};
}];
*/
//Gras aus
setTerrainGrid 50;

//Regen und Nebel aus -> fn_getUpdate.sfq Husky_Server


_fltrFnc = [] spawn compile PreprocessFileLineNumbers "Scripts\mrkrFilter\FLTR_fnc_Main.sqf";
waitUntil {scriptDone _fltrFnc};

/*
MAC_fnc_switchMove = {
    private["_object","_anim"];
    _object = _this select 0;
    _anim = _this select 1;

    _object switchMove _anim;

};
*/
//Kamera System
/*cam_1 = 'camera' camCreate[0, 0, 0];
cam_1 cameraEffect['Internal', 'Back', 'sec_cam_tex_1'];
cam_1 attachTo[security_cam_1, [0,0,0], 'PiP0_pos'];
 'sec_cam_tex_1' setPiPEffect[0];
 addMissionEventHandler['Draw3D', {
_dir =
 (security_cam_1 selectionPosition 'PiP0_pos')
 vectorFromTo(security_cam_1 selectionPosition 'PiP0_dir');
 cam_1 setVectorDirAndUp[
 _dir,
 _dir vectorCrossProduct[-(_dir select 1), _dir select 0, 0]
];
}];

cam_2 = 'camera' camCreate[0, 0, 0];
cam_2 cameraEffect['Internal', 'Back', 'sec_cam_tex_2'];
cam_2 attachTo[security_cam_2, [0,0,0], 'PiP0_pos'];
 'sec_cam_tex_2' setPiPEffect[0];
 addMissionEventHandler['Draw3D', {
_dir =
 (security_cam_2 selectionPosition 'PiP0_pos')
 vectorFromTo(security_cam_2 selectionPosition 'PiP0_dir');
 cam_2 setVectorDirAndUp[
 _dir,
 _dir vectorCrossProduct[-(_dir select 1), _dir select 0, 0]
];
}];

cam_3 = 'camera' camCreate[0, 0, 0];
cam_3 cameraEffect['Internal', 'Back', 'sec_cam_tex_3'];
cam_3 attachTo[security_cam_3, [0,0,0], 'PiP0_pos'];
 'sec_cam_tex_3' setPiPEffect[0];
 addMissionEventHandler['Draw3D', {
_dir =
 (security_cam_3 selectionPosition 'PiP0_pos')
 vectorFromTo(security_cam_3 selectionPosition 'PiP0_dir');
 cam_3 setVectorDirAndUp[
 _dir,
 _dir vectorCrossProduct[-(_dir select 1), _dir select 0, 0]
];
}];

cam_4 = 'camera' camCreate[0, 0, 0];
cam_4 cameraEffect['Internal', 'Back', 'sec_cam_tex_4'];
cam_4 attachTo[security_cam_4, [0,0,0], 'PiP0_pos'];
 'sec_cam_tex_4' setPiPEffect[0];
 addMissionEventHandler['Draw3D', {
_dir =
 (security_cam_4 selectionPosition 'PiP0_pos')
 vectorFromTo(security_cam_4 selectionPosition 'PiP0_dir');
 cam_4 setVectorDirAndUp[
 _dir,
 _dir vectorCrossProduct[-(_dir select 1), _dir select 0, 0]
];
}];

cam_5 = 'camera' camCreate[0, 0, 0];
cam_5 cameraEffect['Internal', 'Back', 'sec_cam_tex_5'];
cam_5 attachTo[security_cam_5, [0,0,0], 'PiP0_pos'];
 'sec_cam_tex_5' setPiPEffect[0];
 addMissionEventHandler['Draw3D', {
_dir =
 (security_cam_5 selectionPosition 'PiP0_pos')
 vectorFromTo(security_cam_5 selectionPosition 'PiP0_dir');
 cam_5 setVectorDirAndUp[
 _dir,
 _dir vectorCrossProduct[-(_dir select 1), _dir select 0, 0]
];
}];
*/
/*
cam_6 = "camera" camCreate[0, 0, 0];
cam_6 cameraEffect["Internal", "Back", "sec_cam_tex_6"];
cam_6 attachTo[security_cam_6, [0,0,0], "PiP0_pos"];
 "sec_cam_tex_6" setPiPEffect[0];
 addMissionEventHandler["Draw3D", {
_dir =
 (security_cam_6 selectionPosition "PiP0_pos")
 vectorFromTo
 (security_cam_6 selectionPosition "PiP0_dir");
 cam_6 setVectorDirAndUp[
 _dir,
_dir vectorCrossProduct[-(_dir select 1), _dir select 0, 0]
];
}];
cam_7 = "camera" camCreate[0, 0, 0];
cam_7 cameraEffect["Internal", "Back", "sec_cam_tex_7"];
cam_7 attachTo[security_cam_7, [0,0,0], "PiP0_pos"];
 "sec_cam_tex_7" setPiPEffect[0];
 addMissionEventHandler["Draw3D", {
_dir =
 (security_cam_7 selectionPosition "PiP0_pos")
 vectorFromTo
 (security_cam_7 selectionPosition "PiP0_dir");
 cam_7 setVectorDirAndUp[
 _dir,
_dir vectorCrossProduct[-(_dir select 1), _dir select 0, 0]
];
}];
cam_8 = "camera" camCreate[0, 0, 0];
cam_8 cameraEffect["Internal", "Back", "sec_cam_tex_8"];
cam_8 attachTo[security_cam_8, [0,0,0], "PiP0_pos"];
 "sec_cam_tex_8" setPiPEffect[0];
 addMissionEventHandler["Draw3D", {
_dir =
 (security_cam_8 selectionPosition "PiP0_pos")
 vectorFromTo
 (security_cam_8 selectionPosition "PiP0_dir");
 cam_8 setVectorDirAndUp[
 _dir,
_dir vectorCrossProduct[-(_dir select 1), _dir select 0, 0]
];
}];
*/

StartProgress = true;
