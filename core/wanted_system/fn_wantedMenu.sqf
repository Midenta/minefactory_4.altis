#include "..\..\script_macros.hpp"
/*
    File: fn_wantedMenu.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Opens the Wanted menu and connects to the APD.
*/
disableSerialization;

//if !(playerSide isEqualTo west) exitWith {}; // Only for cops open this menu

createDialog "husky_wanted_menu";

private _display = findDisplay 2400;
private _list = _display displayCtrl 2401;
private _players = _display displayCtrl 2406;
private _units = [];

lbClear _list;
lbClear _players;

{
    private _side = switch (side _x) do {/*case west: {"Cop"}; case independent: {"Med"};*/ case civilian : {"Civ"}; default {"Unknown"};};
    _players lbAdd format ["%1 - %2", name _x,_side];
    _players lbSetdata [(lbSize _players)-1,str(_x)];
} forEach playableUnits;

private _list2 = CONTROL(2400,2407);
lbClear _list2; //Purge the list

private _crimes = husky_SETTINGS(getArray,"crimes");
{
  if (isLocalized (_x select 0)) then {
		_list2 lbAdd format ["(%3) | %2 € - %1",localize (_x select 0),(_x select 1),(_x select 2)];
  } else {
		_list2 lbAdd format ["(%3) | %2 € - %1",(_x select 0),(_x select 1),(_x select 2)];
  };
    _list2 lbSetData [(lbSize _list2)-1,(_x select 2)];
} forEach _crimes;

ctrlSetText[2404,"Stelle Verbindung her..."];

if (FETCH_CONST(husky_coplevel) < 2 && {FETCH_CONST(husky_adminlevel) isEqualTo 0}) then {
    ctrlShow[9800,false];
};

if (FETCH_CONST(husky_coplevel) < 4 && {FETCH_CONST(husky_adminlevel) isEqualTo 0}) then {
    ctrlShow[2405,false];
};


if (husky_HC_isActive) then {
    [player] remoteExec ["HC_fnc_wantedFetch",HC_husky];
} else {
    [player] remoteExec ["husky_fnc_wantedFetch",RSERV];
};
