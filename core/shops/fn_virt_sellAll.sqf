#include "..\..\script_macros.hpp"
/*
 File: fn_virt_sell.sqf
 Author: Bryan "Tonic" Boardwine
    //Edit by: Killerknight for Sell All Function
    //Edit by: Tallion for Dynmarket

 Description:
 Sell a virtual item to the store / shop

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private ["_type","_index","_price","_amount","_name"];
if ((tvCurSel 384444) isEqualTo -1) exitWith {};
_type = tvdata[384444,(tvCurSel 384444)];
_price = -2;
_itemNameToSearchFor = _type;
{
 _curItemName = _x select 0;
 _curItemPrice = _x select 1;
 if (_curItemName==_itemNameToSearchFor) then {_price=_curItemPrice};
} forEach DYNMARKET_prices;

if (_price isEqualTo -1) exitWith {};
if (_price isEqualTo -2) then {
	_price = M_CONFIG(getNumber,"VirtualItems",_type,"sellPrice");
	//_price = lbValue[2402,(lbCurSel 2402)];
	if (_price isEqualTo -1) exitWith {};
};

_amount = ITEM_VALUE(_type);
if ((time - husky_action_delay) < 0.2) exitWith {hint localize "STR_NOTF_ActionDelay";};
husky_action_delay = time;

_price = (_price * _amount);
if ((fed_bank getVariable ["Farmboost",false])) then {
    private _result = fed_bank getVariable "Farmboost_Number";
    _prices = getNumber(missionConfigFile >> "Master_FarmBoost" >> _result >> "sell_multipilier");
    _price = (_price * _prices);
};
_price2 = (_price / _amount);

_name = M_CONFIG(getText,"VirtualItems",_type,"displayName");
if ([false,_type,_amount] call husky_fnc_handleInv) then {
	hint format [localize "STR_Shop_Virt_SellItem",_amount,(localize _name),[_price] call husky_fnc_numberText];

	_grp = group player;
	if(((_grp getVariable ["gang_id",-1]) isEqualTo -1)) then {
		[getPlayerUID player, "SellALL-V-Items", format ["%1 - %2 hat %3 von %4 für %5 € verkauft. Preis Item: %6 € Bargeld: %7 € Bankkonto: %8 €",profileName,(getPlayerUID player),_amount,(localize _name),[_price] call husky_fnc_numberText,[_price2] call husky_fnc_numberText,[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
    };
	if(!((_grp getVariable ["gang_id",-1]) isEqualTo -1)) then {
		_permissions = _grp getVariable ["gang_permissions",[]];
		_playerpermission = [];
		{
			if((_x select 0) isEqualTo (husky_gangData select 1)) exitWith {
				_playerpermission = _x;
			};
		} forEach _permissions;
		_playerpermission = _playerpermission select 2;


		_tax = _grp getVariable ["gang_tax",0];
		if((_tax isEquaLTo 0) && {"PAYTAX" in _playerpermission}) then {
			[getPlayerUID player, "SellALL-V-Items GANG", format ["%1 - %2 hat %3 von %4 für %5 € verkauft. Preis Item: %6 € Bargeld: %7 € Bankkonto: %8 €",profileName,(getPlayerUID player),_amount,(localize _name),[_price] call husky_fnc_numberText,[_price2] call husky_fnc_numberText,[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
		};
		if(!(_tax isEquaLTo 0) && {"PAYTAX" in _playerpermission}) then {
			_taxsum = _grp getVariable ["gang_tax_sum",0];
			_val = floor(_price * (_tax/100));
			_grp setVariable ["gang_tax_sum",_taxsum + _val,true];
			if(husky_hc_isActive) then {
				[15, _grp] remoteExecCall ["hc_fnc_gang_update",HC_husky];
			} else {
				[15, _grp] remoteExecCall ["ton_fnc_gang_update",2];
			};
			_price = _price - _val;
			_price1 = _price + _val;
			hint format[localize "STR_Shop_Virt_SellItemtax",_amount,(localize _name),[_price] call husky_fnc_numberText,[_val] call husky_fnc_numberText];
			[getPlayerUID player, "SellALL-V-Items GANG Steuer", format ["%1 - %2 hat %3 von %4 für %5 € verkauft. Spieler: %6 € Gang Steuer %7 € Preis Item: %8 € Bargeld: %9 € Bankkonto: %10 €",profileName,(getPlayerUID player),_amount,(localize _name),[_price1] call husky_fnc_numberText,[_price] call husky_fnc_numberText,[_val] call husky_fnc_numberText,[_price2] call husky_fnc_numberText,[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
		};
	};

    //OLd Weg
    /*
	_grp = group player;
	_permissions = _grp getVariable ["gang_permissions",[]];
	_playerpermission = [];
    {
        if ((_x select 0) isEqualTo (husky_gangData select 1)) exitWith {
            _playerpermission = _x;
        };
    } forEach _permissions;
	_playerpermission = _playerpermission select 2;

    _tax = _grp getVariable ["gang_tax",0];
    if (!((_grp getVariable ["gang_id",-1]) isEqualTo -1) && {!(_tax isEquaLTo 0)} && {"PAYTAX" in _playerpermission}) then {
        _taxsum = _grp getVariable ["gang_tax_sum",0];
        _val = _price * (_tax/100);
        _grp setVariable ["gang_tax_sum",_taxsum + _val,true];
		if (husky_hc_isActive) then {
			[15, _grp] remoteExecCall ["hc_fnc_gang_update",HC_husky];
		} else {
			[15, _grp] remoteExecCall ["ton_fnc_gang_update",2];
		};
        _price = _price - _val;
		hint format[localize "STR_Shop_Virt_SellItemtax",_amount,(localize _name),[_price] call husky_fnc_numberText,[_val] call husky_fnc_numberText];
	};
    */
	c126 = c126 + _price;

	[0] call SOCK_fnc_updatePartial;
	[] call husky_fnc_virt_update;

 /*
	if ((husky_SETTINGS(getNumber, "dynamic_market")) isEqualTo 1) then {
		[0,player,husky_shop_type,_amount,_price,_type] remoteExec ["TON_fnc_adjustPrices",RSERV];
	};
 */

	DYNAMICMARKET_boughtItems pushBack [_type,_amount];
};

if (husky_shop_type isEqualTo "drugdealer") then {
	private ["_array","_ind","_val"];
	_array = husky_shop_npc getVariable ["sellers",[]];
	_ind = [getPlayerUID player,_array] call TON_fnc_index;
	if (!(_ind isEqualTo -1)) then {
		_val = ((_array select _ind) select 2);
		_val = _val + _price;
		_array set[_ind,[getPlayerUID player,profileName,_val]];
		husky_shop_npc setVariable ["sellers",_array,true];
	} else {
		_array pushBack [getPlayerUID player,profileName,_price];
		husky_shop_npc setVariable ["sellers",_array,true];
	};
};

if (husky_shop_type isEqualTo "gold" && (husky_SETTINGS(getNumber,"noatm_timer")) > 0) then {
	[] spawn {
		husky_use_atm = false;
		sleep ((husky_SETTINGS(getNumber,"noatm_timer")) * 60);
		husky_use_atm = true;
	};
};

[3] call SOCK_fnc_updatePartial;
