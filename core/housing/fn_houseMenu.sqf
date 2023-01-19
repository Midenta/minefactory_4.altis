#include "..\..\script_macros.hpp"
/*
    File: fn_houseMenu.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Building interaction menu

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
#define Btn1 37450
#define Btn2 37451
#define Btn3 37452
#define Btn4 37453
#define Btn5 37454
#define Btn6 37455
#define Btn7 37456
#define Btn8 37457
#define Btn9 37458
#define Btn10 37459
#define Title 37401

private ["_display","_curTarget","_Btn1","_Btn2","_Btn3","_Btn4","_Btn5","_Btn6","_Btn7","_Btn8","_Btn9","_Btn10","_container"];
disableSerialization;
_curTarget = param [0,objNull,[objNull]];
if (isNull _curTarget) exitWith {}; //Bad target
_houseCfg = [(typeOf _curTarget)] call husky_fnc_houseConfig;
if (count _houseCfg isEqualTo 0 && playerSide isEqualTo civilian) exitWith {};

if (!dialog) then {
    createDialog "pInteraction_Menu";
};

_container = param [1,objNull,[objNull]];

_Btn1 = CONTROL(37400,Btn1);
_Btn2 = CONTROL(37400,Btn2);
_Btn3 = CONTROL(37400,Btn3);
_Btn4 = CONTROL(37400,Btn4);
_Btn5 = CONTROL(37400,Btn5);
_Btn6 = CONTROL(37400,Btn6);
_Btn7 = CONTROL(37400,Btn7);
_Btn8 = CONTROL(37400,Btn8);
_Btn9 = CONTROL(37400,Btn9);
_Btn10 = CONTROL(37400,Btn10);
{_x ctrlShow false;} forEach [_Btn1,_Btn2,_Btn3,_Btn4,_Btn5,_Btn6,_Btn7,_Btn8,_Btn9,_Btn10];

husky_pInact_curTarget = _curTarget;

if (_curTarget in husky_hideoutBuildings) exitWith {
    closeDialog 0;
    hint localize "STR_House_Hideout";
};

if (_curTarget isKindOf "House_F" && playerSide isEqualTo west) exitWith {

    private _vaultHouse = [[["Altis", "Land_Research_house_V1_F"], ["Tanoa", "Land_Medevac_house_V1_F"], ["Stratis", "Land_Medevac_house_V1_F"],["Enoch", "Land_Research_house_V1_F"]]] call TON_fnc_terrainSort;
    private _altisArray = [16518.701,12731.776,3.411];
    private _tanoaArray = [11074.2,11501.5,0.00137329];
	private _stratisArray = [4370.051,3816.454,2.349];
  private _enochArray = [3160.714,12069.354,1.448];
    private _pos = [[["Altis", _altisArray], ["Tanoa", _tanoaArray], ["Stratis", _stratisArray], ["Enoch", _enochArray]]] call TON_fnc_terrainSort;

    if ((nearestObject [_pos,"Land_FuelStation_01_shop_F"]) isEqualTo _curTarget || (nearestObject [_pos,_vaultHouse]) isEqualTo _curTarget) then {

        _Btn1 ctrlSetText localize "STR_pInAct_Repair";
        _Btn1 buttonSetAction "[husky_pInact_curTarget] spawn husky_fnc_repairDoor; closeDialog 0;";
        _Btn1 ctrlShow true;

        _Btn2 ctrlSetText localize "STR_pInAct_CloseOpen";
        _Btn2 buttonSetAction "[husky_pInact_curTarget] call husky_fnc_doorAnimate; closeDialog 0;";
        _Btn2 ctrlShow true;

    } else {
        if (!isNil {_curTarget getVariable "house_owner"}) then {
            _Btn1 ctrlSetText localize "STR_House_Raid_Owner";
            _Btn1 buttonSetAction "[husky_pInact_curTarget] call husky_fnc_copHouseOwner;";
            _Btn1 ctrlShow true;

            _Btn2 ctrlSetText localize "STR_pInAct_BreakDown";
            _Btn2 buttonSetAction "[husky_pInact_curTarget] spawn husky_fnc_copBreakDoor; closeDialog 0;";
            _Btn2 ctrlShow true;

            _Btn3 ctrlSetText localize "STR_pInAct_SearchHouse";
            _Btn3 buttonSetAction "[husky_pInact_curTarget] spawn husky_fnc_raidHouse; closeDialog 0;";
            _Btn3 ctrlShow true;

            if (player distance _curTarget > 3.6) then {
                _Btn3 ctrlEnable false;
            };

            _Btn4 ctrlSetText localize "STR_pInAct_LockHouse";
            _Btn4 buttonSetAction "[husky_pInact_curTarget] spawn husky_fnc_lockupHouse; closeDialog 0;";
            _Btn4 ctrlShow true;
        } else {
            closeDialog 0;
        };
    };
/*_Btn1 ctrlShow true;
_Btn2 ctrlShow true;
_Btn3 ctrlShow true;
_Btn4 ctrlShow true;
_Btn5 ctrlShow false;*/
_Btn6 ctrlShow false;
_Btn7 ctrlShow false;
_Btn8 ctrlShow false;
_Btn9 ctrlShow false;
_Btn10 ctrlShow false;
};

/*
if (_curTarget in ["CargoNet_01_box_F"] && playerSide isEqualTo west) exitWith {
	_Btn5 ctrlSetText "Repariern";
	_Btn5 buttonSetAction "[husky_pInact_curTarget] spawn husky_fnc_repair_assavaten; closeDialog 0;";
};
*/
//this addAction[localize"STR_action_wkammerrep",husky_fnc_repair_assavaten,"",0,false,false,"", 'playerSide isEqualTo west',4];


if (!(_curTarget in husky_vehicles) || isNil {_curTarget getVariable "house_owner"} && playerSide isEqualTo civilian && playerSide != independent) then {

    private _isHouse = false;
	/*
    if (isClass (missionConfigFile >> "Housing" >> worldName >> (typeOf _curTarget))) then {
        _Btn1 ctrlSetText localize "STR_pInAct_BuyHouse";
        _Btn1 buttonSetAction "[husky_pInact_curTarget] spawn husky_fnc_buyHouse;";
        _isHouse = true;
    } else {
        _Btn1 ctrlSetText localize "STR_pInAct_BuyGarage";
        _Btn1 buttonSetAction "[husky_pInact_curTarget] spawn husky_fnc_buyHouse;";
    };
	*/
	private _buildingPurchaseString = [
        "STR_pInAct_BuyGarage",
        "STR_pInAct_BuyHouse"
    ] select (isClass (missionConfigFile >> "Housing" >> worldName >> typeOf _curTarget));

    _isHouse = (isClass (missionConfigFile >> "Housing" >> worldName >> typeOf _curTarget));

    _Btn1 ctrlShow true;

    if (!isNil {_curTarget getVariable "house_owner"}) then {
        _Btn1 ctrlEnable false;
    };

    if (_isHouse) then {
        if (getNumber (missionConfigFile >> "Housing" >> worldName >> (typeOf _curTarget) >> "canGarage") isEqualTo 1) then {
            _Btn2 ctrlSetText localize "STR_pInAct_GarageExt";
            _Btn2 buttonSetAction 'hint format [localize "STR_pInAct_GarageExtNOTF",[husky_SETTINGS(getNumber,"houseGarage_buyPrice")] call husky_fnc_numberText];';
            _Btn2 ctrlShow true;
        };
    };

    _Btn1 ctrlSetText localize _buildingPurchaseString;
    _Btn1 buttonSetAction "[husky_pInact_curTarget] spawn husky_fnc_buyHouse; closeDialog 0";
} else {
    if (isClass (missionConfigFile >> "Garages" >> worldName >> (typeOf _curTarget))) then {
        _Btn1 ctrlSetText localize "STR_pInAct_SellGarage";
        //_Btn1 buttonSetAction "[husky_pInact_curTarget] spawn husky_fnc_sellHouse; closeDialog 0;";
		_Btn1 buttonSetAction "gettingBought = gettingBought + 1; closeDialog 0; [husky_pInact_curTarget] spawn husky_fnc_sellHouse;";
        _Btn1 ctrlShow true;

        if !(((_curTarget getVariable "house_owner") select 0) isEqualTo getPlayerUID player) then {
			_Btn1 ctrlEnable false;
		} else {
			_Btn8 ctrlSetText localize "STR_trade_sell_object";
			_Btn8 buttonSetAction "[husky_pInact_curTarget] call husky_fnc_initSellObject";
			_Btn8 ctrlShow true;
		};

        _Btn2 ctrlSetText localize "STR_pInAct_AccessGarage";
        _Btn2 buttonSetAction "[husky_pInact_curTarget,""Car""] spawn husky_fnc_vehicleGarage; closeDialog 0;";
        _Btn2 ctrlShow true;

        _Btn3 ctrlSetText localize "STR_pInAct_StoreVeh";
        _Btn3 buttonSetAction "[husky_pInact_curTarget,player] spawn husky_fnc_storeVehicle; closeDialog 0;";
        _Btn3 ctrlShow true;
    } else {
        _Btn1 ctrlSetText localize "STR_pInAct_SellHouse";
        //_Btn1 buttonSetAction "[husky_pInact_curTarget] spawn husky_fnc_sellHouse; closeDialog 0;";
		_Btn1 buttonSetAction "gettingBought = gettingBought + 1;closeDialog 0; [husky_pInact_curTarget] spawn husky_fnc_sellHouse;";
        _Btn1 ctrlShow true;

        if (((_curTarget getVariable "house_owner") select 0) != (getPlayerUID player)) then {
            _Btn1 ctrlEnable false;
        };

        if (_curTarget getVariable ["locked",false]) then {
            _Btn2 ctrlSetText localize "STR_pInAct_UnlockStorage";
        } else {
            _Btn2 ctrlSetText localize "STR_pInAct_LockStorage";
        };
        _Btn2 buttonSetAction "[husky_pInact_curTarget] call husky_fnc_lockHouse; closeDialog 0;";
        _Btn2 ctrlShow true;

        if (isNull (_curTarget getVariable ["lightSource",objNull])) then {
            _Btn3 ctrlSetText localize "STR_pInAct_LightsOn";
        } else {
            _Btn3 ctrlSetText localize "STR_pInAct_LightsOff";
        };
        _Btn3 buttonSetAction "[husky_pInact_curTarget] call husky_fnc_lightHouseAction; closeDialog 0;";
        _Btn3 ctrlShow true;

        if (getNumber (missionConfigFile >> "Housing" >> worldName >> (typeOf _curTarget) >> "canGarage") isEqualTo 1 && {!(_curTarget getVariable ["blacklistedGarage",false])}) then {
            if (_curTarget getVariable ["garageBought",false]) then {
                _Btn4 ctrlSetText localize "STR_pInAct_SellGarage";
                //_Btn4 buttonSetAction "[husky_pInact_curTarget] spawn husky_fnc_sellHouseGarage; closeDialog 0;";
				_Btn4 buttonSetAction "gettingBought = gettingBought + 1; closeDialog 0; [husky_pInact_curTarget] spawn husky_fnc_sellHouseGarage;";
                _Btn4 ctrlShow true;

                if (((_curTarget getVariable "house_owner") select 0) != (getPlayerUID player)) then {
					_Btn1 ctrlEnable false;
				} else {
					_Btn8 ctrlSetText localize "STR_trade_sell_object";
					_Btn8 buttonSetAction "[husky_pInact_curTarget] call husky_fnc_initSellObject";
					_Btn8 ctrlShow true;
				};

                _Btn5 ctrlSetText localize "STR_pInAct_AccessGarage";
                _Btn5 buttonSetAction "[husky_pInact_curTarget,""Car""] spawn husky_fnc_vehicleGarage; closeDialog 0;";
                _Btn5 ctrlShow true;

                _Btn6 ctrlSetText localize "STR_pInAct_StoreVeh";
                _Btn6 buttonSetAction "[husky_pInact_curTarget,player] spawn husky_fnc_storeVehicle; closeDialog 0;";
                _Btn6 ctrlShow true;
            } else {
                _Btn5 ctrlSetText localize "STR_pInAct_BuyGarage";
                _Btn5 buttonSetAction "[husky_pInact_curTarget] spawn husky_fnc_buyHouseGarage; closeDialog 0;";
            };

            _Btn5 ctrlShow true;

        };

    };

	_var = _curTarget getVariable ["house_id",-1];
	if (!(_var isEqualTo -1) && {playerSide isEqualTo CIVILIAN} && {_var isEqualTo ((group player) getVariable ["gang_hq_id",-1])}) then {
		_btn7 ctrlSetText "Gang HQ";
		_btn7 buttonSetAction "0 call husky_fnc_gang_hqupgrades";
		_btn7 ctrlShow true;
	};
};

/*
if (_curTarget in ["CargoNet_01_box_F"] && playerSide isEqualTo civilian) exitWith {
	_Btn9 ctrlSetText "Aufbrechen";
	_Btn9 buttonSetAction "[husky_pInact_curTarget] spawn husky_fnc_robKammer; closeDialog 0;";
};
*/
//this addAction[localize"STR_action_wkammeraufbrechen",husky_fnc_robKammer,"",0,false,false,"", 'playerSide isEqualTo civilian',4];



/*_Btn1 ctrlShow false;
_Btn2 ctrlShow true;
_Btn3 ctrlShow true;
_Btn4 ctrlShow true;
_Btn5 ctrlShow true;
_Btn6 ctrlShow true;
_Btn7 ctrlShow true;
_Btn8 ctrlShow false;*/
_Btn9 ctrlShow false;
_Btn10 ctrlShow false;
