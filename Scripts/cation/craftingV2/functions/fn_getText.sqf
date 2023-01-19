/*
    File: fn_getText.sqf
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description:
    Returns text from language config.
    Version: 1.0
*/
private _configText = param [0,"",[""]]; // get config text
private _text = getText(missionConfigFile >> "Cation_CraftingV2" >> "language" >> language >> _configText); // get text from language file
if (_text isEqualTo "") then { // if text is empty
    private _default = getText(missionConfigFile >> "Cation_CraftingV2" >> "language" >> "defaultLanguage"); // get default language
	_text = getText(missionConfigFile >> "Cation_CraftingV2" >> "language" >> _default >> _configText); // get text in default language
};
_text; // return text