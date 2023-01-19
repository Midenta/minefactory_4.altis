/*
	File: fn_medicEnter.sqf
	Author: Skalicon
	
	Description:
	Allows Cops to enter locked Vehicles
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
if (playerSide != independent) exitWith {};
private ["_position","_veh"];
_position = _this select 3;

switch (_position) do
{
	case "driver":
	{
		cursorTarget lock false;
		player action ["getInDriver", cursorTarget];
		cursorTarget lock true;
	};
	case "passenger":
	{
		cursorTarget lock false;
		player action ["getInCargo", cursorTarget];
		cursorTarget lock true;
	};
	case "gunner":
	{
		cursorTarget lock false;
		player action ["getIngunner", cursorTarget];
		cursorTarget lock true;
	};
	case "open":
	{
		cursorTarget lock false;
		["Ich Hoffe sie sind im Einsatz! Sonst gibt es Mega Stress!", "Information"] spawn husky_fnc_createNotification;
	};
	case "lock":
	{
		cursorTarget lock true;
		["Ich Hoffe sie sind im Einsatz! Sonst gibt es Mega Stress!", "Information"] spawn husky_fnc_createNotification;
	};
	case "exit":
	{
		_veh = vehicle player;
		_veh lock false;
		player action ["getOut", _veh];
		_veh lock true;
	};
};