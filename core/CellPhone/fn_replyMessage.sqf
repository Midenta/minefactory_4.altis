/*
	Author: GetSomePanda / Panda
	SteamID: 76561198145366418
	File Name: fn_replyMessage.sqf
	Information: Reply to the message in my messages.
*/
private["_lbSelectedData","_name","_found"];
disableSerialization;
_lbSelectedData = lbData[98112,lbCurSel (98112)];
_lbSelectedData = call compile _lbSelectedData;
_name = _lbSelectedData select 0;
_found = "";

{
	if (_x getVariable "realname" == _name) then 
	{
		_found = "True";
	}
} foreach playableUnits;

if (_found == "") exitWith { hint "This person is not online at the moment!"};

closeDialog 0;

if (_found == "True") then 
{
	[_name] call husky_fnc_cellphone;
	_name = STR_CELLMSG_SelectPerson; ctrlShow[3015,true];

};


