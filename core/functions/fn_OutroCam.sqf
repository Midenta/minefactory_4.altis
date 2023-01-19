#include "..\..\script_macros.hpp" 
/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
disableSerialization;

_gFund = GANG_FUNDS;
_return = husky_gear;

 //player allowDamage false;
 disableUserInput true;
 showChat false;
 hint "";
 //[HUSKY_ID_PlayerTags,"onEachFrame"] spawn BIS_fnc_removeStackedEventHandler;
 1 fadeSound 0;
 1 fadeSpeech 0;
 [] call SOCK_fnc_updateRequest;
 //_ui = uiNamespace getVariable ["husky_HUD_nameTags",displayNull];
 _outroCam = "camera" camCreate (player modelToWorldVisual [-5,0,1.85]);
 _outroCam cameraEffect ["internal","back"];
 _outroCam camSetFov 2.000;
 _outroCam camSetTarget vehicle player;
 _outroCam camSetRelPos [0,-1,1.85];
 _outroCam camCommit 0;
 waitUntil {camCommitted _outroCam};
 _outroCam camSetFov 2;
 _outroCam camSetRelPos [0,-5,1.85];
 _outroCam camCommit 1;
 8 cutFadeOut 3;
 waitUntil {camCommitted _outroCam};
 _outroCam camSetFov 9;
 _outroCam camSetRelPos [0,-5,1050.85];
 _outroCam camCommit 1.5;
 waitUntil {camCommitted _outroCam};
 cutText ["","BLACK",1];
 sleep 1;
 4 cutRsc ["SplashNoise","BLACK"];
 sleep 0.25; 

_name = name player; 

[
     format[
     "<t size='1.3' color='#00C10D'>Nur nicht Englisch!</t><br/>Good Bye %1 ! <br/><t size='1.1'>Zitat Julia 01.09.2019.</t>",_name],
     0,
     0.2,
     10,
     0,
     0,
     8
 ] spawn BIS_fnc_dynamicText;
 //private["_activeHC"];
 sleep 4;
 //_activeHC = false;
[player] remoteExec ["TON_fnc_cleanupRequest",2];
 showChat true;
 disableUserInput false;
 ["",0,0.2,10,0,0,8] spawn BIS_fnc_dynamicText;
 failMission "Left";
 _outroCam cameraEffect ["terminate","back"];
 camDestroy _outroCam;
 
  [getPlayerUID player, "DeSpawn 2", format ["%1 - %2 ist in die Lobby. Bargeld: %3 € Bankkonto: %4 € Coins: %5 € Gangkonto: %6 € Gear: %7 ",profileName,(getPlayerUID player),[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText,[COINS] call husky_fnc_numberText,[_gFund] call husky_fnc_numberText,_return]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];