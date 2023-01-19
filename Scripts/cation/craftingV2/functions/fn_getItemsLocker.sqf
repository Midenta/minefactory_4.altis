/*
    File: fn_getItemsLocker.sqf
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description:
    Returns items stored in locker.
    Version: 1.0
*/
private _lockerItems = cat_locker_trunk; // all locker items
private _items = []; // initialize item array
{
	private _type = (_x select 0); // Type
	if (_type isEqualTo 0) then { // if vItem
		private _val = (_x select 2); // amount
		if (_val > 0) then { // amount greater 0
			private _var = (_x select 1); // varname
			_items pushBack [_var,_val]; // push item to array
		};
	};
} forEach _lockerItems; // all locker items

_items; // return item array - format: [[variable,amount],[variable,amount],...]