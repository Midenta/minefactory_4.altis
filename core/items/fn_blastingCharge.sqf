#include "..\..\script_macros.hpp"
/*
    File: fn_blastingCharge.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Blasting charge is used for the federal reserve vault and nothing  more.. Yet.

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private ["_vault","_handle"];
_vault = param [0,ObjNull,[ObjNull]];

if (isNull _vault) exitWith {}; //Bad object
if (typeOf _vault != "Land_CargoBox_V1_F") exitWith {hint localize "STR_ISTR_Blast_VaultOnly"};
if (_vault getVariable ["chargeplaced",false]) exitWith {hint localize "STR_ISTR_Blast_AlreadyPlaced"};
if (_vault getVariable ["safe_open",false]) exitWith {hint localize "STR_ISTR_Blast_AlreadyOpen"};
if (west countSide playableUnits < (husky_SETTINGS(getNumber,"minimum_cops"))) exitWith {
    hint format [localize "STR_Civ_NotEnoughCops",(husky_SETTINGS(getNumber,"minimum_cops"))];
};

private _vaultHouse = [[["Altis", "Land_Cargo40_yellow_F"], ["Tanoa", "Land_Cargo40_yellow_F"], ["Stratis", "Land_Cargo40_yellow_F"], ["Enoch", "Land_Cargo40_yellow_F"]]] call TON_fnc_terrainSort;
private _altisArray = [9836.18,10303,1.85833];
private _tanoaArray = [11074.2,11501.5,0.00137329];
private _stratisArray = [4370.051,3816.454,2.349];
private _enochArray = [3160.714,12069.354,1.448];
private _pos = [[["Altis", _altisArray], ["Tanoa", _tanoaArray], ["Stratis", _stratisArray], ["Enoch", _enochArray]]] call TON_fnc_terrainSort;

if ((nearestObject [_pos,_vaultHouse]) getVariable ["locked",true]) exitWith {hint localize "STR_ISTR_Blast_Exploit"};
if (!([false,"blastingcharge",1] call husky_fnc_handleInv)) exitWith {}; //Error?

_vault setVariable ["chargeplaced",true,true];
[0,"STR_ISTR_Blast_Placed",true,[]] remoteExecCall ["husky_fnc_broadcast",west];
hint localize "STR_ISTR_Blast_KeepOff";

[getPlayerUID player, "Sprengladung platziert", format ["%1 - %2 hat ein Sprengladung platziert.",profileName,(getPlayerUID player)]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];

//[] remoteExec ["husky_fnc_demoChargeTimer",[civilian,west,independent]];
[] remoteExec ["husky_fnc_demoChargeTimer",[west,player]];	//org
[] remoteExec ["TON_fnc_handleBlastingCharge",2];

[] call husky_fnc_safefixauto;	//auto fix bank nach x zeit //40 min (10 min wegen sprengladung, dann 30 min )

if (husky_HC_isActive) then {
	[getPlayerUID player,profileName,"30"] remoteExecCall ["HC_fnc_wantedAdd",HC_husky];
} else {
	[getPlayerUID player,profileName,"30"] remoteExecCall ["husky_fnc_wantedAdd",RSERV];
};


