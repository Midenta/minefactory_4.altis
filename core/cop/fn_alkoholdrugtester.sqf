/*
file:fn_alkoholdrugtester 
author:[midgetgrimm] 
edited by nic_noc for testing drugusing on civs

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private["_cop","_drinky","_drugy"];
_cop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if (isNull _cop) exitWith {};
//husky_drink und husky_drug muessen spaeter noch in configuration.sqf eingef�gt werden
_drinky = husky_drink;
_drugy = husky_drug;
//Den Wert > 0.4 kann man natuerlich aendern
if (_drinky > 0.4) then {
[[1,format["Alkoholtest %1 \n\n Promille: %2 \n\n Nicht im legalen Bereich! ",name player,[_drinky] call husky_fnc_numberText]],"husky_fnc_broadcast",_cop,false] spawn husky_fnc_MP;
} else {
[[1,format["Alkoholtest %1 \n\n Promille: %2 \n\n Im legalen Bereich! ",name player,[_drinky] call husky_fnc_numberText]],"husky_fnc_broadcast",_cop,false] spawn husky_fnc_MP;
};
//Beide Tests werden nacheinander (5 Sekunden unterschied) angezeigt - man testet also quasi beides in einem
sleep 5;
//Wenn > 0 dann hat der Spieler irgendwas genommen - also ist es dann ein positives Ergebnis
if (_drugy > 0) then {
[[1,format["Drogentest %1 \n\n Ergebnis: Positiv \n\n Der Spieler steht unter Drogeneinfluss! ",name player]],"husky_fnc_broadcast",_cop,false] spawn husky_fnc_MP;
} else {
[[1,format["Drogentest %1 \n\n Ergebnis: Negativ \n\n Der Spieler ist clean! ",name player]],"husky_fnc_broadcast",_cop,false] spawn husky_fnc_MP;
};