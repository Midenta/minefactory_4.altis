#include "..\..\script_macros.hpp"
/*
##################### DYNAMIC MARKET SCRIPT #####################
### AUTHOR: RYAN TT.                                          ###
### STEAM: www.steamcommunity.com/id/ryanthett                ###
###                                                           ###
### DISCLAIMER: THIS SCRIPT CAN BE USED ON EVERY SERVER ONLY  ###
###             WITH THIS HEADER / NOTIFICATION               ###
#################################################################
*/

if (isNil "DYNMARKET_prices") then {[player] remoteExec ["TON_fnc_playerLogged",2];hint "Calcul des prix en cours..";sleep 1;};

disableSerialization;
_dialog = findDisplay 7100;
_listnbox = _dialog displayCtrl 7777;
_blacklist = [];
private _pricesOld = [];
private _pricesstandart = [
	["legalefitems",0],
	["banane",140],		
	["Bananenkuchen",2460],	
	["SiliciumV",2940],			
    ["bubblewaffel",4900],		
	//["edelwasser",2800],		
	//["holzBrettEdel",2300],		
	["eisenbarren",3800],	
    ["erdbeermarmelade",1000],		
    ["frozenjoghurt",4500],	
	//["feuerwerks",85130],		
	["glass",2300],				
	["Gummi",1900],
	["oil_processed",3800],			
	["holzbrettV",2100],
    ["honig",1000],	
	["Kerosin",27400],		
	["kohle_verarbeitet",3000],		
	["kokosnuss",220],		
	["Kokosnussbrot",2550],		
	["Kraftstoff",3900],
	["mehl",750],
	["diamond_cut",4200],		
	["diamond_cut8",5900],		
	["diamond_cut14",7200],	
	["bauxitV",2900],
	["reines_uran",47380],	
	["salt_refined",3420],	
	["schokoV",1800],
	["baumwolleV",3100],			
    ["softeis",4500],	
	["Stahl",7300],	
	["zuckerV",2500],
	["illegalefitems",0],	
	["Aluminium",13000],
	["ayahuasca",5600],	
	["EphedrinV",5500],
	["chemV",4500],	
    ["coaxium",10000],
	["schwarzpulverV",5100],		
	["goldbar",82400],
    ["kybercrystal",14500],	
	["LSD",6300],		
	["marijuana",5300],				
	["Moonshine",6300],	
	["plutonium",61570],
	["turtle_raw",11070],					
	["strawberryhaze",9250],					
	["cocaine_processed",6500],		
    ["wolfram",8000]	
];			


if (!isNil "DYNMARKET_pricesOld") then { _pricesOld = DYNMARKET_pricesOld; };
private "_itemName";
{
	_x params [
		["_itemName","",[""]],
		["_cost",-1,[0]]
	];
	_cost = round _cost;
	private _index1 = [_itemName,_pricesStandart] call TON_fnc_index;
	//diag_log _index1;
	private _STPrice = round (if (_index1 isEqualTo -1) then {-1} else {(_pricesStandart#_index1)#1});
	//diag_log _STPrice;

	private _index = [_itemName,_pricesOld] call TON_fnc_index;
	private _oldPrice = round (if (_index isEqualTo -1) then {-1} else {(_pricesOld#_index)#1});
	private _percent = 0;
	private _arrowText = format ["0%1","%"];
	private _color = [1, 1, 1, 1];

	if (_cost<_oldPrice) then {
		_percent = (100-((_cost/_oldPrice)*100));
		_arrowText = format ["-%1%2",_percent,"%"];
		_color = [1, 0, 0, 1];
	} else {
		if (_oldPrice<_cost) then {
			_percent = (100-((_oldPrice/_cost)*100));
			_arrowText = format ["+%1%2",_percent,"%"];
			_color = [0, 1, 0, 1];
		};
	};

	_itemDisplayName = M_CONFIG(getText,"VirtualItems",_itemName,"displayname");
	_itemDisplayIcon = M_CONFIG(getText,"VirtualItems",_itemName,"icon");
	_itemDisplayName = localize _itemDisplayName;
	if !(_itemName in _blacklist) then {
		private _id = _listnbox lnbAddRow [_itemDisplayName,format ["%1€",[_cost]call husky_fnc_numberText],format ["%1€",[_STPrice]call husky_fnc_numberText],_arrowText];
		_listnbox lnbsetcolor [[_id,3], _color];
		_listnbox lnbsetPicture [[_id,0], _itemDisplayIcon];
		_listnbox lnbsetData [[_id,0],_itemName];
	};
} forEach DYNMARKET_prices;

/*
_amountsold = 0;
{
	_name = _x select 0;
	_sold = _x select 1;
	if (_itemname==_name) then {
		_amountsold = _amountsold + _sold;
	};
} forEach DYNAMICMARKET_boughtItems;
*/
