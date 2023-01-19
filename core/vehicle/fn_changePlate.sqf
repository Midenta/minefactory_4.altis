/*
 author: Risk
 description: �ndert dein Kennzeichen in eines deiner W�nsche
 returns: nothing
 
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
_vid = lbValue[2802,(lbCurSel 2802)];
_Buchstabe = ctrlText 2812;
_Zahl = ctrlText 2813;
_zuAendern = format["UC-%1-%2", _Buchstabe, _Zahl];
_length = count (toArray(_zuAendern));
_chrByte = toArray (_zuAendern);
_allowed = toArray("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-");
if (_length > 15) exitWith {hint "Du kannst das Kennzeichen nicht gr��er als 15 machen!";};
_badChar = false;
{
 if (!(_x in _allowed)) exitWith {
 _badChar = true;
 };
} forEach _chrByte;
if (_badChar) exitWith {hint localize "STR_GNOTF_IncorrectChar";};
_uid = getPlayerUID player;
closeDialog 0;
[_zuAendern,_uid,_vid] remoteExec ["TON_fnc_Plate",2];