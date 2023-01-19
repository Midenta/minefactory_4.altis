/*
    File: fn_updatePlayer.sqf
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description:
    Updates player information
*/
params [
	["_action",-1,[0]],
	["_data","",[""]],
	["_nameSender","",[""]],
	["_side",sideUnknown,[west]],
	["_oldRank",0,[0]],
	["_licenseSide","",[""]]
];

if (_action isEqualTo "" || _data isEqualTo "" || _nameSender isEqualTo "") exitWith {};

switch (_action) do {
	case 0: {
		husky_cash = husky_cash + parseNumber(_data);
		[0] call SOCK_fnc_updatePartial;
		hint format [["messageReceiverMoney"] call cat_perm_fnc_getText,_nameSender,_data,["currency"] call cat_perm_fnc_getText];
	};
	case 1: {
		missionNamespace setVariable [format ["license_%1_%2",getText(missionConfigFile >> "Licenses" >> _data >> "side"),getText(missionConfigFile >> "Licenses" >> _data >> "variable")],true];
		[2] call SOCK_fnc_updatePartial;
		hint format[["messageReceiverLicAdd"] call cat_perm_fnc_getText,localize getText(missionConfigFile >> "Licenses" >> _data >> "displayName"),_nameSender];
	};
	case 2: {
		missionNamespace setVariable [format ["license_%1_%2",getText(missionConfigFile >> "Licenses" >> _data >> "side"),getText(missionConfigFile >> "Licenses" >> _data >> "variable")],false];
		[2] call SOCK_fnc_updatePartial;
		hint format[["messageReceiverLicWithdraw"] call cat_perm_fnc_getText,localize getText(missionConfigFile >> "Licenses" >> _data >> "displayName"),_nameSender];
	};
	case 3: {
		_data = parseNumber(_data);
		if (getNumber(missionConfigFile >> "Cation_Perm" >> "HeadlessSupport") isEqualTo 0) then {
			[_data,getPlayerUID player,_side] remoteExecCall ["cat_perm_fnc_updateRank",2];
		} else {
			if (husky_HC_isActive) then {
				[_data,getPlayerUID player,_side] remoteExecCall ["cat_perm_fnc_updateRankHC",HC_husky];
			} else {
				[_data,getPlayerUID player,_side] remoteExecCall ["cat_perm_fnc_updateRank",2];
			};
		};
		if (_data > 0) then {
			if (_data < _oldRank) then {
				hint format[["messageReceiverDeg"] call cat_perm_fnc_getText,_data];
			} else {
				hint format[["messageReceiverPro"] call cat_perm_fnc_getText,_data];
			};
		} else {
			hint format[["messageReceiverFired"] call cat_perm_fnc_getText];
			{
				missionNamespace setVariable [format ["license_%1_%2",getText(_x >> "side"),getText(_x >> "variable")],false];
			} forEach (format ["getText(_x >> 'side') isEqualTo '%1'",_licenseSide] configClasses (missionConfigFile >> "Licenses"));
			[2] call SOCK_fnc_updatePartial;
		};
	};
};