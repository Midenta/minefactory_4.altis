/*
	File:	fn_staffManager.sqf
	Date:   2016-11-01 16:45:32
	Author: Patrick "Lucian" Schmidt
	Edit: Natic
	
	Description:
	Take a look for yourself.

	#define ONLINE 0
	#define STAFFREQUEST 1
	#define STAFFANWSER 2

	#define COP 0
	#define MED 1
	#define ERROR -1

*/
disableSerialization;

params[
	["_display", displayNull, [displayNull,objNull]],
	["_mode", 0, [0]],
	["_array", [], [[]]],
	"_index",
	"_type"
];
if (isNull _display) then {
	_display = findDisplay 4000;
};

private _listBox = _display displayCtrl 4001;
private _dropBox = _display displayCtrl 4002;
private _btn = _display displayCtrl 4003;

_type = -1;
/*
if ((call husky_zolllevel) > 11) then {
	_type = 3;
};
*/

if ((call husky_adaclevel) > 7) then {
	_type = 2;
};

if ((call husky_mediclevel) > 6) then {
	_type = 1;
};

if ((call husky_coplevel) >= 11) then {
	_type = 0;
};

if (_type == -1) exitWith {closeDialog 0;};

_display setVariable ["type",_type];
lbClear _listBox;
switch (_mode) do { 
	case 0 : {
		{
			private _side = call {
				if (side _x isEqualTo civilian) exitWith {"Ziv";};
				if (side _x isEqualTo west) exitWith {"Cop";};	// {"Cop/Zoll";}	??
				if (side _x isEqualTo independent) exitWith {"MED";};
				if (side _x isEqualTo east) exitWith {"ADAC";};
				"Unbekannt";
			};	

			_index = _listBox lbAdd format["%1 - %2", _x call husky_fnc_name, _side];
			_listBox lbSetdata [_index,netId _x];
		} foreach (allPlayers select {_x != hc_1 && _x != player});
		lbSort _listBox;
		_btn ctrlSetText "Mitarbeiter";
		_btn buttonSetAction "[findDisplay 4000, 1] call husky_fnc_staffManager;";
	};

	case 1 : {
		_btn ctrlSetText "Spieler";
		_btn buttonSetAction "[findDisplay 4000, 0] call husky_fnc_staffManager;";
		if (husky_HC_isActive) then {
			[_type,player] remoteExec ["HC_fnc_fetchStaff",HC_husky];
		} else {
			[_type,player] remoteExec ["TON_fnc_fetchStaff",2];
		};
	};

	case 2 : {
		{
			_index = _listBox lbAdd (_x select 1);
			_listBox lbSetdata [_index,str _x];
		} forEach _array;
	}; 
};

if (lbSize _dropBox isEqualTo 0) then {
	switch (_type) do {
		// === Cop ===
		case 0 : {
			if ((call husky_coplevel) >= 11) then {
				_index = _dropBox lbAdd "0 - Entlassen";
				_dropBox lbSetValue[_index, 0];
				_index = _dropBox lbAdd "1 - Polizeipraktikant";
				_dropBox lbSetValue[_index, 1];
				_index = _dropBox lbAdd "2 - Polizeimeister-Anwärter";
				_dropBox lbSetValue[_index, 2];
				_index = _dropBox lbAdd "3 - Polizeimeister";
				_dropBox lbSetValue[_index, 3];
				_index = _dropBox lbAdd "4 - Polizeiobermeister";
				_dropBox lbSetValue[_index, 4];
				_index = _dropBox lbAdd "5 - Polizeihauptmeister";
				_dropBox lbSetValue[_index, 5];
				_index = _dropBox lbAdd "6 - Polizeikommissar-Anwärter";
				_dropBox lbSetValue[_index, 6];
				_index = _dropBox lbAdd "7 - Polizeikommissar";
				_dropBox lbSetValue[_index, 7];
				_index = _dropBox lbAdd "8 - Polizeioberkommissar";
				_dropBox lbSetValue[_index, 8];
				_index = _dropBox lbAdd "9 - Polizeihauptkommissar";
				_dropBox lbSetValue[_index, 9];
				_index = _dropBox lbAdd "10 - I. Polizeihauptkommissar";
				_dropBox lbSetValue[_index, 10];
				_index = _dropBox lbAdd "11 - Polizeirat";
				_dropBox lbSetValue[_index, 11];
				_index = _dropBox lbAdd "12 - Polizeioberrat";
				_dropBox lbSetValue[_index, 12];
				_index = _dropBox lbAdd "13 - Polizeidirektor";
				_dropBox lbSetValue[_index, 13];
				_index = _dropBox lbAdd "14 - Ltd. Polizeidirektor";
				_dropBox lbSetValue[_index, 14];
				_index = _dropBox lbAdd "15 - Polizeipräsident";
				_dropBox lbSetValue[_index, 15];
			};
		};
		// === Sanis ===
		case 1 : {
			if ((call husky_mediclevel) > 6) then {
				_index = _dropBox lbAdd "0 - Entlassen";
				_dropBox lbSetValue[_index, 0];
				_index = _dropBox lbAdd "1 - Praktikant";
				_dropBox lbSetValue[_index, 1];
				_index = _dropBox lbAdd "2 - Rettungshelfer Azubi";
				_dropBox lbSetValue[_index, 2];
				_index = _dropBox lbAdd "3 - Rettungshelfer";
				_dropBox lbSetValue[_index, 3];
				_index = _dropBox lbAdd "4 - Rettungssanitäter";
				_dropBox lbSetValue[_index, 4];
				_index = _dropBox lbAdd "5 - Notfallsanitäter";
				_dropBox lbSetValue[_index, 5];
				_index = _dropBox lbAdd "6 - Assistenzarzt";
				_dropBox lbSetValue[_index, 6];
				_index = _dropBox lbAdd "7 - Notarzt";
				_dropBox lbSetValue[_index, 7];
				_index = _dropBox lbAdd "8 - Oberarzt";
				_dropBox lbSetValue[_index, 8];
				_index = _dropBox lbAdd "9 - Leitender Oberarzt";
				_dropBox lbSetValue[_index, 9];
			};
		};
		
		// === ADAC ===
		case 2 : {
			if ((call husky_adaclevel) > 7) then {
				_index = _dropBox lbAdd "0 - Entlassen";
				_dropBox lbSetValue[_index, 0];
				_index = _dropBox lbAdd "1 - Praktikant";
				_dropBox lbSetValue[_index, 1];
				_index = _dropBox lbAdd "2 - KFZ-Mechaniker";
				_dropBox lbSetValue[_index, 2];
				_index = _dropBox lbAdd "3 - begabter KFZ-Mechaniker";
				_dropBox lbSetValue[_index, 3];
				_index = _dropBox lbAdd "4 - Meister";
				_dropBox lbSetValue[_index, 4];
				_index = _dropBox lbAdd "5 - Mechatroniker";
				_dropBox lbSetValue[_index, 5];
				_index = _dropBox lbAdd "6 - begabter Mechatroniker";
				_dropBox lbSetValue[_index, 6];
				_index = _dropBox lbAdd "7 - Chef Mechatroniker";
				_dropBox lbSetValue[_index, 7];
				_index = _dropBox lbAdd "8 - Co-Chef";
				_dropBox lbSetValue[_index, 8];
				_index = _dropBox lbAdd "9 - Chef";
				_dropBox lbSetValue[_index, 9];
			};
		};
		/*
		case 3 : {
			if ((call husky_zolllevel) >= 11) then {
				_index = _dropBox lbAdd "0 - Entlassen";
				_dropBox lbSetValue[_index, 0];
				_index = _dropBox lbAdd "1 - Zollpraktikant";
				_dropBox lbSetValue[_index, 1];
				_index = _dropBox lbAdd "2 - Zollanwärter";
				_dropBox lbSetValue[_index, 2];
				_index = _dropBox lbAdd "3 - Zolluntermeister";
				_dropBox lbSetValue[_index, 3];
				_index = _dropBox lbAdd "4 - Zollzivildienstanwärter";
				_dropBox lbSetValue[_index, 4];
				_index = _dropBox lbAdd "5 - Zollzivildienst";
				_dropBox lbSetValue[_index, 5];
				_index = _dropBox lbAdd "6 - Zollzivildienstleitung";
				_dropBox lbSetValue[_index, 6];
				_index = _dropBox lbAdd "7 - Zollobermeister";
				_dropBox lbSetValue[_index, 7];
				_index = _dropBox lbAdd "8 - Zollhauptmeister";
				_dropBox lbSetValue[_index, 8];
				_index = _dropBox lbAdd "9 - Zollinspektor";
				_dropBox lbSetValue[_index, 9];
				_index = _dropBox lbAdd "10 - Zollhauptinspektor";
				_dropBox lbSetValue[_index, 10];
				_index = _dropBox lbAdd "11 - Zoll-Ausbilder";
				_dropBox lbSetValue[_index, 11];
				_index = _dropBox lbAdd "12 - Ltd. Zoll-Ausbilder";
				_dropBox lbSetValue[_index, 12];
				_index = _dropBox lbAdd "13 - Zoll-Rat";
				_dropBox lbSetValue[_index, 13];
				_index = _dropBox lbAdd "14 - Stv. Zoll-Leitung";
				_dropBox lbSetValue[_index, 14];
			};
		};
		*/
	};
};