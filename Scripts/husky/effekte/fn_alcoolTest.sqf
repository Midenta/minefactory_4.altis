/*
    Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
_cible = cursorTarget;
if (isNull _cible) exitWith {};
if (!(_cible isKindOf "Man")) exitWith {}; 
if (_cible == player) exitWith {};
_tauxAlcool= _cible getVariable["consomation_alcool",0];
closeDialog 0;

disableSerialization;
"progressBar" cutRsc ["husky_progress","PLAIN"];
_ui = uiNamespace getVariable "husky_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_upp = localize "STR_PROCESS_CONTROL";
//_upp = (["STR_PROCESS_CONTROL","Max_Settings_EffetsEcran","Effects_Localization"] call theprogrammer_core_fnc_localize);
_pgText ctrlSetText format ["%2 (0%1)...","%",_upp];
_progress progressSetPosition 0.01;
_cP = 0;
 
for "_i" from 0 to 1 step 0 do {
	sleep  0.05;
	_cP = _cP + 0.01;
	_progress progressSetPosition _cP;
	_pgText ctrlSetText format ["%3 (%1%2)...",round(_cP * 100),"%",_upp];
	if (_cP >= 0.99) exitWith {};
};

"progressBar" cutText ["","PLAIN"];

if (_tauxAlcool<=1) then {
	[[1,format["Alkoholtest %1 \n\n Promille: %2 \n\n Nicht im legalen Bereich! ",name player,[_tauxAlcool] call husky_fnc_numberText]],"husky_fnc_broadcast",_cop,false] spawn husky_fnc_MP;
} else {
	[[1,format["Alkoholtest %1 \n\n Promille: %2 \n\n Im legalen Bereich! ",name player,[_tauxAlcool] call husky_fnc_numberText]],"husky_fnc_broadcast",_cop,false] spawn husky_fnc_MP;
};

/*
_txt="";
_txt=composeText [_txt,parseText(
	"<t shadow='2'>" + 
	"<t color='#8c8c8c'>" + 
	"<t size='2'>" + 
	"<t underline='true'>" + 
	hint localize "STR_ALCOOL_TEST"
	//(["STR_ALCOOL_TEST","Max_Settings_EffetsEcran","Effects_Localization"] call theprogrammer_core_fnc_localize)
	+"</t>"+"</t>"+"</t>"+"</t>")
];
_txt=composeText [_txt,parseText ("<t size='2'>" + "<br /> " + "</t>")];
_txt=composeText [_txt,parseText ("<t size='2'>" + "<br /> " + "</t>")];



if (_tauxAlcool<=1) then{
	_txt=composeText [_txt,parseText(
		"<t shadow='1'>"+
		"<t color='#43ff00'>"+
		"<t size='1'>"+
		hint localize "STR_CAN_DRIVE"
		//(["STR_CAN_DRIVE","Max_Settings_EffetsEcran","Effects_Localization"] call theprogrammer_core_fnc_localize)
		+"</t>"+"</t>"+"</t>"+"</t>")
	];
}
else{
	_txt=composeText [_txt,parseText(
		"<t shadow='1'>"+
		"<t color='#ff0000'>"+
		"<t size='1'>"+
		hint localize "STR_CANNOT_DRIVE"
		//(["STR_CANNOT_DRIVE","Max_Settings_EffetsEcran","Effects_Localization"] call theprogrammer_core_fnc_localize)
		+"</t>"+"</t>"+"</t>"+"</t>")
	];
};
_txt=composeText [_txt,parseText ("<t size='2'>" + "<br /> " + "</t>")];

_txt=composeText [_txt,parseText(
	"<t shadow='2'>" + 
	"<t color='#ff7944'>" + 
	"<t size='1'>" +
	hint localize "STR_AMOUNT_ALCOOL"
	//(["STR_AMOUNT_ALCOOL","Max_Settings_EffetsEcran","Effects_Localization"] call theprogrammer_core_fnc_localize)
	+"</t>"+"</t>"+"</t>"+
	"<t shadow='2'>" + 
	"<t color='#919191'>" + 
	"<t size='1.2'>" + 
	str(_tauxAlcool)
	+"</t>"+"</t>"+"</t>"+
	"<t shadow='2'>" + 
	"<t color='#ff7944'>" + 
	"<t size='1'>" +
	hint localize "STR_QUANTITY"
	//(["STR_QUANTITY","Max_Settings_EffetsEcran","Effects_Localization"] call theprogrammer_core_fnc_localize)
	+"</t>"+"</t>"+"</t>"
	)
];

_txt=composeText [_txt,parseText ("<t size='2'>" + "<br /> " + "</t>")];
_txt=composeText [_txt,parseText ("<t size='2'>" + "<br /> " + "</t>")];
_txt=composeText [_txt,parseText ("<t size='2'>" + "<br /> " + "</t>")];
_txt=composeText [_txt,parseText ("<t size='2'>" + "<br /> " + "</t>")];

_txt=composeText [_txt,parseText(
	"<t shadow='2'>" + 
	"<t color='#ffffff'>" + 
	"<t size='0.8'>" + 
	hint localize "STR_ALCOOL_INFO"
	//(["STR_ALCOOL_INFO","Max_Settings_EffetsEcran","Effects_Localization"] call theprogrammer_core_fnc_localize)
	+"</t>"+"</t>"+"</t>"+"</t>"
	)
];

hint _txt;*/