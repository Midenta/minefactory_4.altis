/* 
	Author: Maximum
	Description: Placeables for the cop\medic sides.
	Disclaimer: Don't be a asshole and pass this off as your own or become a KAI and sell it for profit, Im releasing this for FREE... Credits: Killerty69 for a second pare of eyes when mine got to sleepy
	P.S. - Don't be a faggot like i know some of you all will be.
	
	edited by: blackfisch
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
disableSerialization;

if (!(isNull objectParent player)) exitWith {hint localize "STR_locker_vehicle"};

if (player getVariable["husky_barrier_active",false]) exitWith {
    hint "Du kannst nur eine Absperrung tragen";
	closeDialog 0;
};

createDialog "husky_menu_placeables";
waitUntil { !isNull(findDisplay 20000) };
private _display = findDisplay 20000;
private _placeables = _display displayCtrl 20001;
tvClear _placeables;
private "_placeablescat";
private "_treeVatId";
switch (playerSide) do {
	case west: {
		_placeablescat = ("true" configClasses (missionConfigFile >> "Placeables_Master" >> "cop_placables" >> "Catogary"));
	};
};
{
	private _displaynamecat = getText(_x >> "displayname");
	private _conditionss = getText(_x >> "conditions");
	if ([_conditionss] call husky_fnc_levelCheck) then {
	_treeVatId = _placeables tvadd[[],_displaynamecat];
	};

	{
		private "_pic";
		private "_undertreeid";
		private _className = _x select 0;
		private _displayName = _x select 1;
		if ([_x] call husky_fnc_levelCheck) then {
			if (_className isEqualTo "") then {
				_undertreeid = _placeables tvAdd [[_treeVatId], "NONE"];
			} else {
				if (_displayName isEqualTo "") then {
					_undertreeid = _placeables tvAdd [[_treeVatId], "Error"];
				} else {
					_undertreeid = _placeables tvAdd [[_treeVatId], _displayName];
				};
				_placeables tvSetData [ [_treeVatId,_undertreeid],_className];
			};
		};
	} forEach getArray (_x >> "objects");
} forEach _placeablescat;
/* {    
	_name = _x select 0;
    _className = _x select 1;
    _placeables lbAdd _name;
    _placeables lbSetData [(lbSize _placeables) - 1, _className];
} foreach (husky_placeables); */