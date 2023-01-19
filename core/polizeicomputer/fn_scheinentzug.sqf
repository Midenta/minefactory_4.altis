/*
    hmm no idea what just happen here

	Bearbeitet von ԄӏՖҚ
    Freigestellt für Minefactory.eu

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
params[
    ["_unit",ObjNull,[ObjNull]],
    ["_mode",0,[0]]
];

if (isNull _unit) exitWith {}; //Not valid

[_unit,_mode] remoteExec ["husky_fnc_scheinEntzugNow",_unit];