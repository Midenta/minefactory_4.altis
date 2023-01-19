/*
    File: fn_licensesRead.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Outprints the licenses.
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
params [
    ["_civ","",[""]],
    ["_licenses",(localize "STR_Cop_NoLicenses"),[""]]
];

hint parseText format ["<t color='#FF0000'><t size='2'>%1</t></t><br/><t color='#FFD700'><t size='1.5'>" +(localize "STR_Cop_Licenses")+ "</t></t><br/>%2",_civ,_licenses];


[] spawn {sleep 30; hint "";};