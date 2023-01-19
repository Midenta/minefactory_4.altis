if ((tvCurSel 20001) isEqualTo -1) exitWith {titleText[localize "STR_Shop_NoClothes","PLAIN"];};
private _display = findDisplay 20000;
private _prievIew = _display displayCtrl 21111;
private _className = tvdata[20001, tvCurSel (20001)];
if(_className isEqualTo "") exitWith {};
private _pic = (getText(configfile >> "CfgVehicles" >> _className >> "editorPreview"));
if!(_pic isEqualTo "") then {
	_prievIew ctrlSetStructuredText parseText format ["<img size='5.0' valign='bottom' align='center' image='%1'/>",_pic];
} else {
	_pic = "";
};