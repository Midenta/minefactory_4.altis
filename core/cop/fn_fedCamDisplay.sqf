#include "..\..\script_macros.hpp"
/*
    File: fn_fedCamDisplay.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Turns on and displays a security cam like feed via PiP to the laptop display.
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
params [
    "_laptop",
    "",
    "",
    "_mode"
];

private _altisArray = [16518.701,12731.776,3.411];
private _tanoaArray = [11074.2,11501.5,0.00137329];

private _pos = [[["Altis", _altisArray], ["Tanoa", _tanoaArray]]] call TON_fnc_terrainSort;

private _dome = nearestObject [_pos,"Land_FuelStation_01_shop_F"];

if (!isPiPEnabled) exitWith {hint localize "STR_Cop_EnablePiP";};
if (isNil "husky_fed_scam") then {
    husky_fed_scam = "camera" camCreate [0,0,0];
    husky_fed_scam camSetFov 0.5;
    husky_fed_scam camCommit 0;
    "rendertarget0" setPiPEffect [0];
    husky_fed_scam cameraEffect ["INTERNAL", "BACK", "rendertarget0"];
    _laptop setObjectTexture [0,"#(argb,256,256,1)r2t(rendertarget0,1.0)"];
};

private _mTwPositions = [
    ["side",[16.9434,-0.300781,-7.20004],[27.0693,-0.390625,-10.2474]],
    ["vault",[19.9775,-0.0078125,-1.90735e-006],[-5.00684,0.59375,-9.57164]],
    ["front",[0.972656,78.8281,15.617],[-0.657227,22.9082,-10.4033]],
    ["back",[28.9248,-42.0977,-3.8896],[-1.33789,-24.6035,-10.2108]],
	
	["eingang",[16.9434,-0.300781,-7.20004],[27.0693,-0.390625,-10.2474]],
    ["seite",[19.9775,-0.0078125,-1.90735e-006],[-5.00684,0.59375,-9.57164]],
    ["innen",[0.972656,78.8281,15.617],[-0.657227,22.9082,-10.4033]],
    ["andere",[28.9248,-42.0977,-3.8896],[-1.33789,-24.6035,-10.2108]]
];

private _index = [_mode,_mTwPositions] call TON_fnc_index;

if (_index isEqualTo -1) then {
    //Turn off
    husky_fed_scam cameraEffect ["terminate", "back"];
    camDestroy husky_fed_scam;
    _laptop setObjectTexture [0,""];
    husky_fed_scam = nil;
} else {
    _temp = _mTwPositions select _index;
    husky_fed_scam camSetPos (_dome modelToWorld (_temp select 1));
    husky_fed_scam camSetTarget (_dome modelToWorld (_temp select 2));
    husky_fed_scam camCommit 0;
};
