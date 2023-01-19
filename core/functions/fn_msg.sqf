params[  "_text",
  ["_error",false,[false]],
  ["_speed", "",  [""]],
  "_hcolor",
  "_titel" ];
  
 if (isServer || !hasInterface) exitWith {};
 disableSerialization;
 _display = finddisplay 46;
 if (_error) then {  
	playSound "3DEN_notificationWarning";
 } else {  
	playSound "HintExpand";
 };
 
 private _headerColor = if (_error) then {  
 [1,0,0,1];
 } else {  
 switch (_hcolor) do {  
  case "red": {[1,0,0,1]};
  case "blue": {[0,0,1,1]};
  case "green": {[0,1,0,1]};
  case "orange": {[1,0.733,0,1]};
  case "yellow": {[1,1,0,1]};
  case "white": {[1,1,1,1]};
  case "darkgreen": {[0.067,0.729,0.067,1]};
  case "turkis": {[0,1,1,1]};
  case "pink": {[1,0,1,1]};
  default {[1,0.733,0,1]};
  };
 };
 
 _hcolorthtml = _headerColor call BIS_fnc_colorRGBAtoHTML;
 private _TextField = _display ctrlCreate ["RscStructuredText", -1];
 if (_error) then {  
		_TextField ctrlSetStructuredText parsetext format ["<img size='0.8' image='icons\warnung.paa'/><t size='1.2' color='%1'>%2</t><br/><t size='1'>%3</t>",_hcolorthtml,_titel,_text];
 }else{ 
		_TextField ctrlSetStructuredText parsetext format ["<img size='0.8' image='icons\info_blau.paa'/><t size='1.2' color='%1'>%2</t><br/><t size='1'>%3</t>",_hcolorthtml,_titel,_text];
 };
 _TextField ctrlSetPosition [0.793906 * safezoneW + safezoneX, 0.214 * safezoneH + safezoneY,0.20625 * safezoneW, 0.55];
 _TextField ctrlCommit 0;
 _TextField ctrlSetPosition [0.793906 * safezoneW + safezoneX, 0.214 * safezoneH + safezoneY,0.20625 * safezoneW, ((ctrlTextHeight _TextField)+ (0.005 * safezoneH))];
 _TextField ctrlSetBackgroundColor [0,0,0,0.75];
 _TextField ctrlSetFade 1;
 _TextField ctrlCommit 0;
 _TextField ctrlSetFade 0;
 _TextField ctrlCommit 0.4;
 private _Header = _display ctrlCreate ["RscText", -1];
 
 _Header ctrlSetPosition [0.78875 * safezoneW + safezoneX, 0.214 * safezoneH + safezoneY, 0.00515625 * safezoneW, ((ctrlTextHeight _TextField)+ (0.005 * safezoneH))];
 _Header ctrlSetBackgroundColor _headerColor;
 _Header ctrlSetFade 1;
 _Header ctrlCommit 0;
 _Header ctrlSetFade 0;
 _Header ctrlCommit 0.4;
 [_TextField,_Header,_speed] spawn {  disableSerialization;
  if (_this select 2 isEqualTo "fast") then {
	  uiSleep 5;
  } else {
	  uiSleep 15;
  };
  private _TextField = _this select 0;
  private _Header = _this select 1;
  _TextField ctrlSetFade 1;
  _TextField ctrlCommit 0.3;
  _Header ctrlSetFade 1;
  _Header ctrlCommit 0.3;
  uiSleep 0.3;
  ctrlDelete _Header;
  ctrlDelete _TextField;
 };
 private _posText = (ctrlPosition (_TextField)) select 1;
 private _posHeader = (ctrlPosition (_Header)) select 1;
 private _textHigh = (ctrlPosition (_TextField)) select 3;
 if (count husky_open_notifications > 0) then {  private _activeNotifications = 0;
  {  private _ctrlHeader = _x select 0;
  private _ctrlText = _x select 1;
  if (!isNull _ctrlHeader && !isNull _ctrlText) then {  _ctrlHeader ctrlSetPosition [0.78875 * safezoneW + safezoneX, (_posHeader + _textHigh + 1.5*(0.011 * safezoneH))];
  _ctrlText ctrlSetPosition [0.793906 * safezoneW + safezoneX, (_posText + _textHigh + 1.5*(0.011 * safezoneH))];
  _ctrlHeader ctrlCommit 0.25;
  _ctrlText ctrlCommit 0.25;
  _posText = (_posText + _textHigh + 1.5*(0.011 * safezoneH));
  _posHeader = (_posHeader + _textHigh + 1.5*(0.011 * safezoneH));
  _textHigh = (ctrlPosition (_ctrlText)) select 3;
  if (_activeNotifications > 1) then {  _ctrlText ctrlSetFade 1;
  _ctrlHeader ctrlSetFade 1;
  _ctrlText ctrlCommit 0.2;
  _ctrlHeader ctrlCommit 0.2;
  };
  _activeNotifications = _activeNotifications + 1;
  };
  } forEach husky_open_notifications;
 };
 husky_open_notifications = ([[_Header,_TextField]] + husky_open_notifications) select {!isNull (_x select 0) && !isNull (_x select 1)};

 
 //exitWith {["Du kannst nur jede Sekunde etwas einzahlen",true,"fast","orange","Error"]spawn husky_fnc_msg;
 //[format[localize "STR_ATM_DepositMSG",[_value] call husky_fnc_numberText],false,"fast","orange","Information"]spawn husky_fnc_msg;