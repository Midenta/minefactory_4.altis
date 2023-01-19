#include "..\..\script_macros.hpp"
/*
    File: fn_gagged.sqf
    Author: Lowheartrate & Panda

    https://community.bistudio.com/wiki/enableChannel

    Channel ID number correspondence
    Default Channels 	Custom Channels
    Global 	Side 	Command 	Group 	Vehicle 	Direct 	CC 1 	CC 2 	CC 3 	CC 4 	CC 5 	CC 6 	CC 7 	CC 8 	CC 9 	CC 10
    0 	1 	2 	3 	4 	5 	6 	7 	8 	9 	10 	11 	12 	13 	14 	15 

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private["_gagger"];
_gagger = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
hint format["Du wurdest geknebelt %1.", _gagger getVariable["realname",_gagger]];
titleText ["Du hast einen Knebel über deinen Mund, du kannst nicht mehr reden!", "PLAIN"];
enableRadio false;
5 enableChannel false;
3 enableChannel false;
4 enableChannel false;
waitUntil{
    !(player getVariable ["gagged",false]) OR !(player getVariable ["restrained",false])
};
hint format["Der Knebel wurde entfernt, du kannst wieder sprechen!"];
titleText ["Du bist nicht mehr geknebelt", "PLAIN"];
enableRadio true;
5 enableChannel true;
3 enableChannel true;
4 enableChannel true;