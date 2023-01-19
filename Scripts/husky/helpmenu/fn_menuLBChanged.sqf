#include "..\..\..\script_macros.hpp"
/*
	author: Risk
	description: Ändert jedes mal den Text jenachdem was man auswählt.
	returns: nothing
*/
params[
    "_helpControl",
    "_helpIndex"
];
//Fetch some information.
private _helpName = _helpControl lbData _helpIndex;
private _helpDisplayName = M_CONFIG(getText,"husky_help_text",_helpName,"displayName");
private _helpDescription = M_CONFIG(getText,"husky_help_text",_helpName,"description");

ctrlShow [60704,true];
ctrlShow [60708,true];
ctrlShow [60709,true];
ctrlShow [60710,true];
ctrlSetText [60704, _helpDisplayName];
(CONTROL(60700,60709)) ctrlSetStructuredText parseText format["%1",_helpDescription];