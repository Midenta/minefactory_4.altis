/*
    File: fn_levelCheck.sqf
    Author: BoGuu

    Description:
    xx
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

if !(params [["_itemConfig", [], [[],""]]]) exitWith {};

scopeName "main";

private _return = false;

if (_itemConfig isEqualTo []) exitWith {/*diag_log "An empty array was passed to fn_levelCheck.sqf";*/ _return};

if (_itemConfig isEqualType []) then {
    private _lastElement = _itemConfig select (count _itemConfig - 1);
    if (_lastElement isEqualType "") then {
        _itemConfig = _lastElement;
    } else {
        true breakOut "main";
    };
};

if (_itemConfig isEqualTo "") exitWith {true};

private _evaluation = call compile _itemConfig;

if (_evaluation isEqualType true) then {
    if (_evaluation) then {
        _return = true;
    };
} else {
    _return = true;
};

_return;