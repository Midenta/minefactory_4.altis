/*
    File: fn_radar.sqf
    Author: Silly Aussie kid named Jaydon
    Description:
    Looks like weird but radar?
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de!
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
if !(playerSide isEqualTo west) exitWith {};
private ["_speed","_vehicle"];
_vehicle = cursorObject;
_speed = round speed _vehicle;

if ((currentWeapon player) isEqualTo "Rangefinder") then {
    switch (true) do {
        case (_speed > 1 && _speed <= 120): {
            hint parseText format ["<t color='#ffffff'><t size='2'><t align='center'>" +(localize "STR_Cop_Radar")+ "<br/><t color='#33CC33'><t align='center'><t size='1'>" +(localize "STR_Cop_VehSpeed"),round  _speed];
        };

        case (_speed > 120): {
            hint parseText format ["<t color='#ffffff'><t size='2'><t align='center'>" +(localize "STR_Cop_Radar")+ "<br/><t color='#FF0000'><t align='center'><t size='1'>" +(localize "STR_Cop_VehSpeed"),round  _speed];
        };
    };
};