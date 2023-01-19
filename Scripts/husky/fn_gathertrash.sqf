/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private["_itemv","_item","_itemva","_red"];
_itemv ="";
_item ="";
_itemva = 0;
_ma = 0;

_trasharrayra = trasharray select floor random count trasharray;
_call = _trasharrayra select 0;

switch(true) do
{	
	case (_call == 1) : 
	{
		_item = _trasharrayra select 1;
		if(player canAdd _item) then 
		{
			titleText["Durchsuche Müll","PLAIN"];
			player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
			uisleep 3;
			
			_itemInfo = [_item] call husky_fnc_fetchCfgDetails;
	
			[_item,true] call husky_fnc_handleItem;

			titleText[format["Du hast ein %1 gefunden",_itemInfo select 1],"PLAIN"];
		} else {
			["Dein Inventar ist voll, du kannst nichts mehr abbauen/sammeln", "Fehler", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
		};
	};
	case (_call == 2) : 
	{
		_itemv =_trasharrayra select 1;
		_itemva = _trasharrayra select 2;
		if(_itemva > 0) then 
		{
			titleText["Durchsuche Müll","PLAIN"];
			player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
			uisleep 3;
			if(([true,_itemv,_itemva] call husky_fnc_handleInv)) then {
				_itemName = M_CONFIG(getText, "VirtualItems", _itemv, "displayName");
				//_name = [([_itemv,0] call husky_fnc_varHandle)] call husky_fnc_varToStr;
				titleText[format["Du hast %1 %2 gefunden",_itemva,_itemName],"PLAIN"];
			};
		} else {
			["Dein Inventar ist voll, du kannst nichts mehr abbauen/sammeln", "Fehler", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
		};
    };
	case (_call == 3) : 
	{
		_ma =_trasharrayra select 1;
		titleText["Durchsuche Müll","PLAIN"];
		player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
		uisleep 3;
		c126 = c126 + _ma;
		titleText[format["Du hast %1€ gefunden",_ma],"PLAIN"];
    };
};

uisleep 5;
husky_action_gathering = false;