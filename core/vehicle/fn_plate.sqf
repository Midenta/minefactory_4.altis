/*
 author: Risk
 description: Updatet das Kennzeichen
 returns: nothing
 
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
params[
 "_plate",
 "_uid",
 "_vid"
];
private _query = format ["UPDATE vehicles SET plate = '%1' WHERE pid = '%2' AND id = ''%3", _plate, _uid, _vid];
[_query, 1] call DB_fnc_asyncCall;