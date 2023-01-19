#include "..\..\script_macros.hpp"
/*
    File: fn_weaponShopBuySellEC.sqf
    Author: Bryan "Tonic" Boardwine edit by Deathman / MrFrost

    Description:
    Buy And Sell of Weapons Perfect for Evo
*/
disableSerialization;
if ((tvCurSel 38403) isEqualTo -1) exitWith {hint localize "STR_Shop_Weapon_NoSelect"};
private "_price";
_price = tvValue[38403,(tvCurSel 38403)]; if (isNil "_price") then {_price = 0;};
private _item = tvData[38403,(tvCurSel 38403)];
private _itemInfo = [_item] call husky_fnc_fetchCfgDetails;
if (_price isEqualTo -1) exitWith {hint "Du kanns diese Waffe nicht Verkaufen";};
private _bad = "";

if (((_itemInfo select 6) != "CfgVehicles") || ((_itemInfo select 6) != "CfgMagazines")) then {
    if ((_itemInfo select 4) in [4096,131072,-1]) then {
        if (!(player canAdd _item) && (uiNamespace getVariable ["Weapon_Shop_Filter",0]) != 1) exitWith {_bad = (localize "STR_NOTF_NoRoom")};
    };
};

if (_bad != "") exitWith {hint _bad};

if ((uiNamespace getVariable ["Weapon_Shop_Filter",0]) isEqualTo 1) then {
    b126 = b126 + _price;
    [_item,false] call husky_fnc_handleItem;
    hint parseText format [localize "STR_Shop_Weapon_SoldEC",_itemInfo select 1,[_price] call husky_fnc_numberText];
    [nil,(uiNamespace getVariable ["Weapon_Shop_Filter",0])] call husky_fnc_weaponShopFilter; //Update the menu.
} else {
    private _altisArray = ["Land_u_Barracks_V2_F","Land_i_Barracks_V2_F"];
    private _tanoaArray = ["Land_School_01_F","Land_Warehouse_03_F","Land_House_Small_02_F"];
    private _hideoutObjs = [[["Altis", _altisArray], ["Tanoa", _tanoaArray]]] call TON_fnc_terrainSort;
    private _hideout = (nearestObjects[getPosATL player,_hideoutObjs,25]) select 0;
    if (!isNil "_hideout" && {!isNil {group player getVariable "gang_bank"}} && {(group player getVariable "gang_bank") >= _price}) then {
        _action = [
            format [(localize "STR_Shop_Virt_Gang_FundsMSGEC")+ "<br/><br/>" +(localize "STR_Shop_Virt_Gang_Funds")+ " <t color='#8cff9b'>%1€</t><br/>" +(localize "STR_Shop_Virt_YourFundsEC")+ " <t color='#8cff9b'>%2€</t>",
                [(group player getVariable "gang_bank")] call husky_fnc_numberText,
                [b126] call husky_fnc_numberText
            ],
            localize "STR_Shop_Virt_YourorGangEC",
            localize "STR_Shop_Virt_UI_GangFundsEC",
            localize "STR_Shop_Virt_UI_YourCashEC"
        ] spawn BIS_fnc_guiMessage;
        if (_action) then {
            hint parseText format [localize "STR_Shop_Weapon_BoughtGang",_itemInfo select 1,[_price] call husky_fnc_numberText];
			[getPlayerUID player, "Buy-I-Items GANG EC", format ["%1 - %2 hat eine %3 für %4 € gekauft. Bargeld: %5 € Bankkonto: %6 €",profileName,(getPlayerUID player),_itemInfo select 1,[_price] call husky_fnc_numberText,[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
            _funds = group player getVariable "gang_bank";
            _funds = _funds - _price;
            group player setVariable ["gang_bank",_funds,true];
            [_item,true] call husky_fnc_handleItem;

            if (husky_HC_isActive) then {
                [1,group player] remoteExecCall ["HC_fnc_updateGang",HC_husky];
            } else {
                [1,group player] remoteExecCall ["TON_fnc_updateGang",RSERV];
            };


        } else {
            if (_price > b126) exitWith {hint localize "STR_NOTF_NotEnoughMoneyEC"};
            hint parseText format [localize "STR_Shop_Weapon_BoughtItemEC",_itemInfo select 1,[_price] call husky_fnc_numberText];
			[getPlayerUID player, "Buy-I-Items 2 EC", format ["%1 - %2 hat eine %3 für %4 € gekauft. Bargeld: %5 € Bankkonto: %6 €",profileName,(getPlayerUID player),_itemInfo select 1,[_price] call husky_fnc_numberText,[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
            b126 = b126 - _price;
            [_item,true] call husky_fnc_handleItem;
        };
    } else {
        if (_price > b126) exitWith {hint localize "STR_NOTF_NotEnoughMoneyEC"};
        hint parseText format [localize "STR_Shop_Weapon_BoughtItemEC",_itemInfo select 1,[_price] call husky_fnc_numberText];
		[getPlayerUID player, "Buy-I-Items EC", format ["%1 - %2 hat eine %3 für %4 € gekauft. Bargeld: %5 € Bankkonto: %6 €",profileName,(getPlayerUID player),_itemInfo select 1,[_price] call husky_fnc_numberText,[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
        b126 = b126 - _price;
        [_item,true] call husky_fnc_handleItem;
    };
};
[] call husky_fnc_hudUpdate;
[1] call SOCK_fnc_updatePartial;
[3] call SOCK_fnc_updatePartial;
