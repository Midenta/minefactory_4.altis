/*
    File: fn_refundItems.sqf
    Author: B4v4r!4n_Str!k3r (julian.bauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description:
	Used to refund items if crafting progress is aborted.
    Version: 1.0
*/
params [
	["_items",[[],[]],[[]]]
];

{
	private _refunded = [true,_x select 0,_x select 1] call husky_fnc_handleInv; // add item to player inventory
    if ((getNumber(missionConfigFile >> "Cation_CraftingV2" >> "DebugMode")) isEqualTo 1) then { // if debug mode is enabled
        //diag_log format["cationstudio crafting: [INFO] refund player: %1 - %3x %2",_refunded,_x select 0,_x select 1]; // log entry
    };
} forEach (_items select 0); // items to add to player inventory

{
	private _refunded = [true,_x select 0,_x select 1,true] call cat_craftingV2_fnc_handleInvLocker; // add item to locker inventory
    if ((getNumber(missionConfigFile >> "Cation_CraftingV2" >> "DebugMode")) isEqualTo 1) then { // if debug mode is enabled
        //diag_log format["cationstudio crafting: [INFO] refund locker: %1 - %3x %2",_refunded,_x select 0,_x select 1]; // log entry
    };
} forEach (_items select 1); // items to add to locker inventory