/*
 Author: H4SHK3KS
 File: fn_syncGear.sqf

 Description: calles the function to save the cop gear
*/


if (isNil "husky_copGearSaved") then {husky_copGearSaved = false;};


if (husky_copGearSaved) exitWith {hint "Langsamer! /n Bitte warte 30 Sekunden bevor du dein Gear erneut speicherst!"};



hint "Gear gespeichert!";



[7] spawn SOCK_fnc_updatePartial;



[] spawn
{
 husky_copGearSaved = true;
 sleep 30;
 husky_copGearSaved = false;
};