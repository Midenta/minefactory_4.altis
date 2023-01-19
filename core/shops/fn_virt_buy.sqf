#include "..\..\script_macros.hpp"
/*
    File: fn_virt_buy.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Buy a virtual item from the store.

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!

	if (_amount >= 100) then {}
*/
/*
private ["_type","_price","_amount","_diff","_name","_hideout"];
if ((lbCurSel 2401) isEqualTo -1) exitWith {hint localize "STR_Shop_Virt_Nothing"};
_type = lbData[2401,(lbCurSel 2401)];
_price = lbValue[2401,(lbCurSel 2401)];
_amount = ctrlText 2404;
if (!([_amount] call TON_fnc_isnumber)) exitWith {hint localize "STR_Shop_Virt_NoNum";};
_diff = [_type,parseNumber(_amount),husky_carryWeight,husky_maxWeight] call husky_fnc_calWeightDiff;
_amount = parseNumber(_amount);
if (_amount > 10) exitWith {hint "Du kannst nicht soviel auf einmal kaufen!";};
if (_diff <= 0) exitWith {hint localize "STR_NOTF_NoSpace"};
_amount = _diff;
private _altisArray = ["Land_u_Barracks_V2_F","Land_i_Barracks_V2_F"];
private _tanoaArray = ["Land_School_01_F","Land_Warehouse_03_F","Land_House_Small_02_F"];
private _hideoutObjs = [[["Altis", _altisArray], ["Tanoa", _tanoaArray]]] call TON_fnc_terrainSort;
_hideout = (nearestObjects[getPosATL player,_hideoutObjs,25]) select 0;
if ((_price * _amount) > c126 && {!isNil "_hideout" && {!isNil {group player getVariable "gang_bank"}} && {(group player getVariable "gang_bank") <= _price * _amount}}) exitWith {hint localize "STR_NOTF_NotEnoughMoney"};
if ((time - husky_action_delay) < 0.2) exitWith {hint localize "STR_NOTF_ActionDelay";};
husky_action_delay = time;

_name = M_CONFIG(getText,"VirtualItems",_type,"displayName");

if ([true,_type,_amount] call husky_fnc_handleInv) then {
    if (!isNil "_hideout" && {!isNil {group player getVariable "gang_bank"}} && {(group player getVariable "gang_bank") >= _price}) then {
        _action = [
            format [(localize "STR_Shop_Virt_Gang_FundsMSG")+ "<br/><br/>" +(localize "STR_Shop_Virt_Gang_Funds")+ " <t color='#8cff9b'>%1 €</t><br/>" +(localize "STR_Shop_Virt_YourFunds")+ " <t color='#8cff9b'>%2 €</t>",
                [(group player getVariable "gang_bank")] call husky_fnc_numberText,
                [c126] call husky_fnc_numberText
            ],
            localize "STR_Shop_Virt_YourorGang",
            localize "STR_Shop_Virt_UI_GangFunds",
            localize "STR_Shop_Virt_UI_YourCash"
        ] call BIS_fnc_guiMessage;
        if (_action) then {
            hint format [localize "STR_Shop_Virt_BoughtGang",_amount,(localize _name),[(_price * _amount)] call husky_fnc_numberText];
            _funds = group player getVariable "gang_bank";
            _funds = _funds - (_price * _amount);
            group player setVariable ["gang_bank",_funds,true];

            if (husky_HC_isActive) then {
                [1,group player] remoteExecCall ["HC_fnc_updateGang",HC_husky];
            } else {
                [1,group player] remoteExecCall ["TON_fnc_updateGang",RSERV];
            };

        } else {
            if ((_price * _amount) > c126) exitWith {[false,_type,_amount] call husky_fnc_handleInv; hint localize "STR_NOTF_NotEnoughMoney";};
            hint format [localize "STR_Shop_Virt_BoughtItem",_amount,(localize _name),[(_price * _amount)] call husky_fnc_numberText];
            c126 = c126 - _price * _amount;
        };
    } else {
        if ((_price * _amount) > c126) exitWith {hint localize "STR_NOTF_NotEnoughMoney"; [false,_type,_amount] call husky_fnc_handleInv;};
        hint format [localize "STR_Shop_Virt_BoughtItem",_amount,(localize _name),[(_price * _amount)] call husky_fnc_numberText];
        c126 = c126 - _price * _amount;
    };
    [] call husky_fnc_virt_update;
};

[0] call SOCK_fnc_updatePartial;
[3] call SOCK_fnc_updatePartial;
*/

#include "..\..\script_macros.hpp"
/*
    File: fn_virt_buy.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Buy a virtual item from the store.

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!

*/
private["_type","_price","_amount","_diff","_name","_hideout"];
if ((tvCurSel 2401) isEqualTo -1) exitWith {hint localize "STR_Shop_Virt_Nothing"};
_type = tvdata[38403,(tvCurSel 38403)];
_price = tvValue[38403,(tvCurSel 38403)];
_amount = ctrlText 2405;
if (!([_amount] call TON_fnc_isnumber)) exitWith { };
_diff = [_type,parseNumber(_amount),husky_carryWeight,husky_maxWeight] call husky_fnc_calWeightDiff;
_amount = parseNumber(_amount);
if (_amount >= 101) exitWith { };
if (_diff <= 0) exitWith {};
_amount = _diff;
_hideout = (nearestObjects[getPosATL player,["Land_u_Barracks_V2_F","Land_i_Barracks_V2_F","Land_i_Barracks_V1_F"],25]) select 0;
if ((_price * _amount) > c126 && {!isNil "_hideout" && {!isNil {group player getVariable "GANG_FUNDS"}} && {(group player getVariable "GANG_FUNDS") <= _price * _amount}}) exitWith {hint localize "STR_NOTF_NotEnoughMoney"};
if ((time - husky_action_delay) < 0.2) exitWith { };
husky_action_delay = time;

_name = M_CONFIG(getText,"VirtualItems",_type,"displayName");

if ([true,_type,_amount] call husky_fnc_handleInv) then {
    if (!isNil "_hideout" && {!isNil {group player getVariable "GANG_FUNDS"}} && {(group player getVariable "GANG_FUNDS") >= _price}) then {
        _action = [
            format[(localize "STR_Shop_Virt_Gang_FundsMSG")+ "<br/><br/>" +(localize "STR_Shop_Virt_Gang_Funds")+ " <t color='#8cff9b'>%1€</t><br/>" +(localize "STR_Shop_Virt_YourFunds")+ " <t color='#8cff9b'>%2€</t>",
                [(group player getVariable "GANG_FUNDS")] call husky_fnc_numberText,
                [c126] call husky_fnc_numberText
            ],
            localize "STR_Shop_Virt_YourorGang",
            localize "STR_Shop_Virt_UI_GangFunds",
            localize "STR_Shop_Virt_UI_YourCash"
        ] spawn BIS_fnc_guiMessage;
        if (_action) then {
            hint format[localize "STR_Shop_Virt_BoughtGang",_amount,(localize _name),[(_price * _amount)] call husky_fnc_numberText];
			[getPlayerUID player, "Buy-V-Items GANG", format ["%1 - %2 hat %3 von %4 für %5 € gekauft. Bargeld: %6 € Bankkonto: %7 €",profileName,(getPlayerUID player),_amount,(localize _name),[(_price * _amount)] call husky_fnc_numberText,[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
            _funds = group player getVariable "GANG_FUNDS";
            _funds = _funds - (_price * _amount);
            group player setVariable["GANG_FUNDS",_funds,true];

            if (husky_HC_isActive) then {
                [1,group player] remoteExecCall ["HC_fnc_updateGang",HC_husky];
            } else {
                [1,group player] remoteExecCall ["TON_fnc_updateGang",RSERV];
            };

        } else {
            if ((_price * _amount) > c126) exitWith {[false,_type,_amount] call husky_fnc_handleInv;};
            hint format[localize "STR_Shop_Virt_BoughtItem",_amount,(localize _name),[(_price * _amount)] call husky_fnc_numberText];
			[getPlayerUID player, "Buy-V-Items 2", format ["%1 - %2 hat %3 von %4 für %5 € gekauft. Bargeld: %6 € Bankkonto: %7 €",profileName,(getPlayerUID player),_amount,(localize _name),[(_price * _amount)] call husky_fnc_numberText,[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
            c126 = c126 - _price * _amount;
        };
    } else {
        if ((_price * _amount) > c126) exitWith { [false,_type,_amount] call husky_fnc_handleInv;};
        hint format[localize "STR_Shop_Virt_BoughtItem",_amount,(localize _name),[(_price * _amount)] call husky_fnc_numberText];
		[getPlayerUID player, "Buy-V-Items", format ["%1 - %2 hat %3 von %4 für %5 € gekauft. Bargeld: %6 € Bankkonto: %7 €",profileName,(getPlayerUID player),_amount,(localize _name),[(_price * _amount)] call husky_fnc_numberText,[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
        c126 = c126 - _price * _amount;
    };
};

[0] call SOCK_fnc_updatePartial;
[3] call SOCK_fnc_updatePartial;
[] call husky_fnc_virt_update;
