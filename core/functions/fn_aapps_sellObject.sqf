/*
 *
 *	@File:		fn_aapps_sellObject.sqf
 *	@Author: 	AllianceApps
 *	@Date:		17.12.2017
 *
 *	You are not allowed to use this script or remove the credits of the script without written permission of the author.
 *  You are not allowed to use this script without a valid license. License terms apply.
 *
 *  Du darfst dieses Script nicht nutzen oder diesen Copyright-Hinweis nicht entfernen, wenn du keine schriftliche Bestätigung des Autors hast.
 *  Du darfst dieses Script nicht ohne gültige Lizenz nutzen. Die Lizenzbestimmungen für Scripts sind zu beachten.
 *  
 */
scriptName "fn_aapps_sellObject";
husky_fnc_initSellObject = compileFinal "
	_object = [_this, 0, objNull] call bis_fnc_param;
	if (isNull _object) exitWith {hint 'Object_sell: No Object given'};
	if (!(alive _object)) exitWith {hint 'Object_sell: Object is not alive'};
	if (!(playerSide isEqualTo CIVILIAN)) exitWith {hint localize 'Das kannst du nur als Zivilist!'};
	if ((player getVariable ['Escorting',false]) OR {player getVariable ['restrained',false]}) exitWith {hint localize 'STR_trade_not_working'};
	husky_sell_object = nil;
	
	if (_object getVariable 'noSell') exitWith {hint 'Fahrzeug kann nicht weiterverkauft werden!'};
	
	if (_object isKindOf 'House_F') then {
		husky_sell_object = [_object,typeOf _object, 'HOUSE', (_object getVariable ['house_owner',['-1','']]) select 0];
	};
	if ((isNil 'husky_sell_object') && ((cursorTarget isKindOf 'LandVehicle') OR (cursorTarget isKindOf 'Air') OR (cursorTarget isKindOf 'Ship') OR (cursorTarget isKindOf 'Box_NATO_AmmoVeh_F') OR (cursorTarget isKindOf 'Land_Cargo20_white_F') OR (cursorTarget isKindOf 'Land_Cargo20_red_F') OR (cursorTarget isKindOf 'Land_Cargo20_blue_F') OR (cursorTarget isKindOf 'Land_Cargo20_military_green_F') OR (cursorTarget isKindOf 'Land_Cargo20_yellow_F') OR (cursorTarget isKindOf 'Land_Cargo20_IDAP_F') OR (cursorTarget isKindOf 'B_Slingload_01_Fuel_F') OR (cursorTarget isKindOf 'Land_Pod_Heli_Transport_04_fuel_F')OR (cursorTarget isKindOf 'Land_Device_slingloadable_F')OR (cursorTarget isKindOf 'Land_Device_assembled_F')	)) then {
		_var = (_object getVariable ['dbInfo',['-1',-1]]) select 0;
		husky_sell_object = [_object, typeof _object, 'VEHICLE', _var];
	};
	if (isNil 'husky_sell_object') exitWith {hint localize 'STR_trade_wrong_object'};
	if (!((husky_sell_object select 3) isEqualTo (getPlayeruid player))) exitWith {hint localize 'STR_trade_not_yours'};
	_players = player nearObjects ['Man', 15];
	{
		if ((!((side _x) isEqualTo CIVILIAN)) OR (_x isEqualTo player) OR !(alive _x) OR ((getplayeruid _x) isEqualTo '')) then {
			_players = _players - [_x];
		};
	} forEach _players;
	if ((count _players) isEqualTo 0) exitWith {hint localize 'STR_trade_no_players'};
	createDialog 'aapps_sell_object';
	disableSerialization;
	_combo = (findDisplay 198802) displayCtrl 1988020;
	{
		_combo lbAdd (name _x);
		_combo lbSetData[(lbSize _combo) -1, (str _x)];
	} forEach _players;
	if ((lbsize _combo) isEqualTo 0) exitWith {
		closeDialog 0;
		hint 'Bug-prevention';
	};
";
husky_fnc_makeSellRequest = compileFinal "
	if (isNil 'husky_sell_object') exitWith {};
	if (!(alive (husky_sell_object select 0))) exitWith {hint 'Object_sell: Object is not alive'};
	if (!dialog) exitWith {hint localize 'STR_trade_no_data'};
	_price = abs (parseNumber (ctrlText 1988021));
	if (_price isEqualTo 0) exitWith {hint localize 'STR_trade_too_low'};
	if ((lbcursel 1988020) isEqualTo -1) exitWith {hint localize 'STR_trade_not_selected'};
	_bool = false;
	_objectname = getText(configfile >> 'CfgVehicles' >> (typeOf cursorTarget) >> 'displayName');
	_bool = [format [localize 'STR_trade_question_1',_objectname,(lbText[1988020,lbcursel 1988020]),[_price] call husky_fnc_numberText], localize 'STR_trade_question_1_title', localize 'STR_Global_Yes', localize 'STR_Global_No'] call BIS_fnc_guiMessage;
	if (!_bool) exitWith {};
	husky_sell_object pushBack _price;
	husky_sell_object pushBack player;
	husky_sell_object remoteExec ['husky_fnc_acceptSellRequest',call compile (lbData[1988020,lbcursel 1988020])];
	closeDialog 0;
	hint localize 'STR_trade_request';
";
husky_fnc_acceptSellRequest = compileFinal "
	_object = [_this, 0, objNull] call bis_fnc_param;
	_uid = [_this, 3, -1] call bis_fnc_param;
	_price = [_this, 4, -1] call bis_fnc_param;
	_player = [_this, 5, objNull] call bis_fnc_param;
	_type = [_this, 2, ''] call bis_fnc_param;
	if ((isNull _object) OR {_price isEqualTo -1} OR {isNull _player} OR {_type isEqualTo ''} OR {_uid isEqualTo -1}) exitWith {};
	_objectname = getText(configfile >> 'CfgVehicles' >> (typeOf _object) >> 'displayName');
	_bool = [format [localize 'STR_trade_question_2',name _player,_objectname,[_price] call husky_fnc_numberText], localize 'STR_trade_question_1_title', localize 'STR_Global_Yes', localize 'STR_Global_No'] call BIS_fnc_guiMessage;
	if (!_bool) exitWith {hint localize 'STR_trade_question_2_cancel'};
	if (husky_cash < _price) exitwith {hint localize 'STR_NOTF_NotEnoughMoney'};
	husky_cash = husky_cash - _price;
	[_object,getplayerUid player] remoteExec ['husky_fnc_sellobject_keys',-2];
	[_object] call husky_fnc_addVehicle2Chain;
	if (_type isEqualTo 'HOUSE') then {
		_object setVariable ['house_owner',[getPlayerUid player,profilename],true];
		_id = _object getVariable 'house_id';
		[0,getplayeruid player,side player,_uid,side _player,_id,_object] remoteExec ['ton_fnc_aapps_changeObjectOwner',2];
		hint format[localize 'STR_trade_keys_received',name _player,_objectname];
	} else {
		_owners = [[getplayeruid player, profileName]];
		_object setVariable ['vehicle_info_owners',_owners,true];
		_dbinfo = _object getVariable 'dbinfo';
		_dbinfo set [0, getPlayerUid player];
		_object setVariable ['dbinfo',_dbinfo,true];
		[1,getplayeruid player,side player,_uid,side _player,_dbinfo select 1,_object] remoteExec ['ton_fnc_aapps_changeObjectOwner',2];
		hint format[localize 'STR_trade_vehicle_keys_received',name _player,_objectname];
	};
	[name player,_price,_object] remoteExec ['husky_fnc_doneObjectSell',_player];
";
husky_fnc_sellobject_keys = compileFinal "
	_object = [_this, 0, objNull] call bis_fnc_param;
	_uid = [_this, 1, '-1'] call bis_fnc_param;
	if (isNull _object) exitWith {};
	if (_uid isEqualTo (getplayeruid player)) exitWith {};
	husky_vehicles = husky_vehicles - [_object];
";
husky_fnc_doneObjectSell = compileFinal "
	_name = [_this, 0, localize 'STR_trade_ano'] call bis_fnc_param;
	_price = [_this ,1, -1] call bis_fnc_param;
	_object = [_this, 2, objNull] call bis_fnc_param;
	if ((_price isEqualTo -1) OR {isNull _object}) exitWith {};
	husky_cash = husky_cash + _price;
	hint format[localize 'STR_trade_accepted',_name,[_price] call husky_fnc_numberText];
";