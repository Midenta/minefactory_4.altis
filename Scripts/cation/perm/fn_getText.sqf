/*
    File: fn_getText.sqf
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description:
    Returns text from config.
*/
private _configText = param [0,"",[""]];
private _text = getText(missionConfigFile >> "Cation_Perm" >> "language" >> language >> _configText);
if (_text isEqualTo "") then {
    private _default = getText(missionConfigFile >> "Cation_Perm" >> "language" >> "defaultLanguage");
	_text = getText(missionConfigFile >> "Cation_Perm" >> "language" >> _default >> _configText);
};
_text;