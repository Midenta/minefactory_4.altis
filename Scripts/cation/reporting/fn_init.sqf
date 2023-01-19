/*
    File: fn_init.sqf
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description:
    Initializes clientside variables.
*/
private _status = switch (playerSide) do {
	case west: {getText(missionConfigFile >> "Cation_Reporting" >> "statusAtJoinWest");};
	case independent: {getText(missionConfigFile >> "Cation_Reporting" >> "statusAtJoinIndepent");};
	default {"";};
};
player setVariable ["reportStatus",_status,true];
player setVariable ["reportCenter","",true];