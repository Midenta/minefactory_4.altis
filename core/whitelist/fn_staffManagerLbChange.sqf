/*
	File:	fn_staffManagerLbChange.sqf
	Date:   2016-11-01 19:50:42
	Author: Patrick "Lucian" Schmidt
	Edit: Natic
	
	Description:
	Take a look for yourself.

	#define COP 0
	#define MED 1
*/

params[
	["_listBox", controlNull, [controlNull]],
	["_index", -1, [0]],
	"_unit"
];
private _display = ctrlParent _listBox;

private _data = if (isNull (objectFromNetId (_listBox lbData _index))) then {
	parseSimpleArray format["%1",_listBox lbData _index];
} else {
	_unit = objectFromNetId (_listBox lbData _index);
	[getPlayerUID _unit,[_unit] call husky_fnc_name,-1];
};
if ((_data select 2) isEqualTo -1) exitwith {
	(_display displayCtrl 4004) ctrlSetStructuredText parseText format[""];

};
if ((_data select 2) isEqualType "") then {
	_data set [2,parseNumber (_data select 2)];
};
private _lvlname = switch (_display getVariable ["type",0]) do {
	// === ADAC ===
	case 2 : {
		switch (_data select 2) do { 
			case 0 : {"Keinen";};
			case 1 : {"Praktikant";}; 
			case 2 : {"KFZ-Mechaniker";}; 
			case 3 : {"begabter KFZ-Mechaniker";}; 
			case 4 : {"Meister";};
			case 5 : {"Mechatroniker";};
			case 6 : {"begabter Mechatroniker";};
			case 7 : {"Chef Mechatroniker";};
			case 8 : {"Co-Chef";};
			case 9 : {"Chef";};
			default {"Error";};
		};
	}; 
	// === Medic ===
	case 1 : {
		switch (_data select 2) do { 
			case 0 : {"Keinen";};
			case 1 : {"Praktikant";}; 
			case 2 : {"Rettungshelfer Azubi";}; 
			case 3 : {"Rettungshelfer";}; 
			case 4 : {"Rettungssanitäter";};
			case 5 : {"Notfallsanitäter";};
			case 6 : {"Assistenzarzt";};
			case 7 : {"Notarzt";};
			case 8 : {"Oberarzt";};
			case 9 : {"Leitender Oberarzt";};
			default {"Error";};
		};
	}; 
	// === Cop ===
	case 0 : {
		switch (_data select 2) do { 
			case 0 : {"Keinen";}; 
			case 1 : {"Polizeipraktikant";}; 
			case 2 : {"Polizeimeister-Anwärter";}; 
			case 3 : {"Polizeimeister";};
			case 4 : {"Polizeiobermeister";};
			case 5 : {"Polizeihauptmeister";};
			case 6 : {"Polizeikommissar-Anwärter";};
			case 7 : {"Polizeikommissar";};
			case 8 : {"Polizeioberkommissar";};
			case 9 : {"Polizeihauptkommissar";};
			case 10 : {"I. Polizeihauptkommissar";};
			case 11 : {"Polizeirat";};
			case 12 : {"Polizeioberrat";};
			case 13 : {"Polizeidirektor";};
			case 14 : {"Ltd. Polizeidirektor";};
			case 15 : {"Polizeipräsident";};
			default {"Error";};
		};
	};
};

(_display displayCtrl 4004) ctrlSetStructuredText parseText format[
	"<t font='TahomaB'>Name:</t><br/>%1<br/><t font='TahomaB'>Rang:</t><br/>%2",
	_data select 1,
	_lvlname
];
