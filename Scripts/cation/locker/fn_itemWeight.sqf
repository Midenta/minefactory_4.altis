/*
    File: fn_itemWeight.sqf
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description:
    Calculates weight of items
*/
params [
	["_item","",[""]],
	["_type",-1,[0]]
];
private _return = 0;

switch (_type) do {
	case 0 : {
		_return = [_item] call husky_fnc_itemWeight;
	};
	default {
        private _section = switch (true) do {
            case (isClass(configFile >> "CfgMagazines" >> _item)): {"CfgMagazines"};
            case (isClass(configFile >> "CfgVehicles" >> _item)): {"CfgVehicles"};
            case (isClass(configFile >> "CfgGlasses" >> _item)): {"CfgGlasses"};
            default {"CfgWeapons"};
        };
		switch (_section) do {		
		    case "CfgWeapons" : {
				_return = round ((getNumber(configfile >> _section >> _item >> "ItemInfo" >> "mass")) * (getNumber(missionConfigFile >> "Cation_Locker" >> "weightMultiplier")));
				if (_return isEqualTo 0) then {
					_return = round ((getNumber(configfile >> _section >> _item >> "WeaponSlotsInfo" >> "mass")) * (getNumber(missionConfigFile >> "Cation_Locker" >> "weightMultiplier")));
				};
			};
			default {
				_return = round ((getNumber(configfile >> _section >> _item >> "mass")) * (getNumber(missionConfigFile >> "Cation_Locker" >> "weightMultiplier")));
			};
		};
		if (_return isEqualTo 0) then {
			_return = 1;
		};
	};
};
_return;