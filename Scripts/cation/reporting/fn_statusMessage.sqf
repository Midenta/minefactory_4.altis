/*
    File: fn_statusMessage.sqf
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description:
    Message from control center to unit.
*/
params [
	["_status","",[""]],
	["_text","",[""]]
];
hint parseText format ["<t color='#316dff'><t size='2'><t align='center'>%3: %1<br/><br/><t color='#ffffff'>%2",_status,_text,getText(missionConfigFile >> "Cation_Reporting" >> "newStatus")];
["TaskAssigned",["",format ["%2: %1",_status,getText(missionConfigFile >> "Cation_Reporting" >> "newStatusFromCenter")]]] call bis_fnc_showNotification;
systemChat format ["--- %2: %1",_status,getText(missionConfigFile >> "Cation_Reporting" >> "newStatusFromCenter")];