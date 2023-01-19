#include "..\..\..\script_macros.hpp"
/*
	author: Risk
	description: Send bug to A3Log or DB
	returns: nothing
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
_uid    = getPlayerUID player;
_name   = profileName;
_diag   = findDisplay 50800;
_titel  = ctrlText 50809;
_text  = ctrlText 50807;

systemChat format["%1, %2, %3, %4",_uid,_name,_titel,_text];

if (M_CONFIG(getNumber,"husky_Bug","bug_Settings","useDB") isEqualTo 1) then {
    [_uid,_name,_titel,_text] remoteExec ["husky_fnc_sendBug",2];
};

if (M_CONFIG(getNumber,"husky_Bug","bug_Settings","useA3Log") isEqualTo 1) then {
    [format["Der Spieler %1(%2) hat einen Bug gemeldet!", _name, _uid],"bugLog"] remoteExecCall ["Arma3Log",2];
    [format["%1: %2 -> %3", _num, _titel, _text],"bugLog"] remoteExecCall ["Arma3Log",2];
};