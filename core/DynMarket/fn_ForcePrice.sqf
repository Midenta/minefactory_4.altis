/*
##################### DYNAMIC MARKET SCRIPT #####################
### AUTHOR: RYAN TT.                                          ###
### STEAM: www.steamcommunity.com/id/ryanthett                ###
###                                                           ###
### DISCLAIMER: THIS SCRIPT CAN BE USED ON EVERY SERVER ONLY  ###
###             WITH THIS HEADER / NOTIFICATION               ###
#################################################################
*/
disableSerialization;
_dialog = findDisplay 7000;
_tochangeName = _dialog displayCtrl 7004;
_tochangePrice = _dialog displayCtrl 7005;

_tochangeNameText = ctrlText _tochangeName;
_tochangePriceText = ctrlText _tochangePrice;
_tochangePriceNumber = parseNumber _tochangePriceText;

if ((_tochangeNameText=="")||(_tochangePriceText=="")) exitWith {hint parseText "<t color='#FF0000'>--ERROR--</t><br/><t color='#FF0000'>FALSCHER INPUT</t>";};

_exists = false;

{
	if (_tochangeNameText==_x select 0) then {_exists=true;};
} forEach DYNMARKET_prices;

if (_exists) then {
	hint parseText "<t color='#01DF01'>--UPDATED--</t><br/><t color='#01DF01'>DER PREIS WURDE ERFOLGREICH ANGEPASST, UND WIRD MIT DEM NÄCHSTEN PREISUPDATEN AKTUALISIERT!</t>";
	[_tochangeNameText,_tochangePriceNumber] remoteExec ["TON_fnc_changePrice",RSERV];
} else {
	hint parseText "<t color='#FF0000'>--ERROR--</t><br/><t color='#FF0000'>DER ANGEFORDERTE ARTIKEL IST NICHT VERFÜGBAR, VIELLEICHT HABEN SIE SICH VERKLICKT?</t>";
};
