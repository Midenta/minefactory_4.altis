#include "..\..\script_macros.hpp"
/*
    File: fn_fetchDeadGear.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Fetches gear off of a body.
*/

/* weg machen damit datei geht
params [["_unit",objNull,[objNull]]];

if (isNull _unit) exitWith {};

private _dropWeapons = husky_SETTINGS(getNumber,"drop_weapons_onDeath");

private _primary = [primaryWeapon _unit, ""] select _dropWeapons;
private _launcher = [secondaryWeapon _unit, ""] select _dropWeapons;
private _handgun = [handGunWeapon _unit, ""] select _dropWeapons;

private _primitems = [];
private _secitems = [];
private _handgunitems = [];

private _magazines = [];

private _uniform = uniform _unit;
private _vest = vest _unit;
private _backpack = backpack _unit;

private _items = assignedItems _unit;

private _headgear = headgear _unit;
private _goggles = goggles _unit;
private _uitems = [];
private _vitems = [];
private _bitems = [];

if !(primaryWeapon _unit isEqualTo "") then {_primitems = primaryWeaponItems _unit;};
if !(handgunWeapon _unit isEqualTo "") then {_handgunItems = handgunItems _unit;};

if !(_uniform isEqualTo "") then {{_uitems pushBack _x; true} count (uniformItems _unit);};
if !(_vest isEqualTo "") then {{_vitems pushBack _x; true} count (vestItems _unit);};
if !(_backpack isEqualTo "") then {{_bitems pushBack _x; true} count (backPackItems _unit);};

if !(primaryWeapon _unit isEqualTo "") then {
    _unit selectWeapon (primaryWeapon _unit);
    if !(currentMagazine _unit isEqualTo "") then {
        _magazines pushBack currentMagazine _unit;
    };
};

if !(secondaryWeapon _unit isEqualTo "") then {
    _unit selectWeapon (secondaryWeapon _unit);
    if !(currentMagazine _unit isEqualTo "") then {
        _magazines pushBack currentMagazine _unit;
    };
};

if !(handgunWeapon _unit isEqualTo "") then {
    _unit selectWeapon (handgunWeapon _unit);
    if !(currentMagazine _unit isEqualTo "") then {
        _magazines pushBack currentMagazine _unit;
    };
};

_unit selectWeapon (primaryWeapon _unit);

if (isNil "_handgunItems") then {_handgunItems = ["","",""];};

[_primary,_launcher,_handgun,_magazines,_uniform,_vest,_backpack,_items,_primitems,_secitems,_handgunitems,_uitems,_vitems,_bitems,_headgear,_goggles];

//[getPlayerUID player, "fetch Dead Gear", format ["%1 - %2 hat %3 %4 %5 %6 %7 %8 %9 %10 %11 %12 %13 %14 %15 %16 %17 %18 ",profileName,(getPlayerUID player),_primary,_launcher,_handgun,_magazines,_uniform,_vest,_backpack,_items,_primitems,_secitems,_handgunitems,_uitems,_vitems,_bitems,_headgear,_goggles]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];


/*
params [["_unit",objNull,[objNull]]];
if (isNull _unit) exitWith {};
private _dropWeapons = husky_SETTINGS(getNumber,"drop_weapons_onDeath");
private _dropItems = husky_SETTINGS(getNumber,"drop_iitems_onDeath");
private _primary = [primaryWeapon _unit, ""] select _dropWeapons;
private _launcher = [secondaryWeapon _unit, ""] select _dropWeapons;
private _handgun = [handGunWeapon _unit, ""] select _dropWeapons;
private _primitems = [];
private _secitems = [];
private _handgunitems = [];
private _magazines = [];
private _uniform = uniform _unit;
private _vest = vest _unit;
private _backpack = backpack _unit;
private _items = assignedItems _unit;
private _headgear = headgear _unit;
private _goggles = goggles _unit;
private _uitems = [];
private _vitems = [];
private _bitems = [];
if (_dropItems isEqualTo 0) then {
 if !(primaryWeapon _unit isEqualTo "") then {_primitems = primaryWeaponItems _unit;};
 if !(handgunWeapon _unit isEqualTo "") then {_handgunItems = handgunItems _unit;};
 if !(_uniform isEqualTo "") then {{_uitems pushBack _x; true} count (uniformItems _unit);};
 if !(_vest isEqualTo "") then {{_vitems pushBack _x; true} count (vestItems _unit);};
 if !(_backpack isEqualTo "") then {{_bitems pushBack _x; true} count (backPackItems _unit);};
 if !(primaryWeapon _unit isEqualTo "") then {
 _unit selectWeapon (primaryWeapon _unit);
 if !(currentMagazine _unit isEqualTo "") then {
 _magazines pushBack currentMagazine _unit;
 };
 };
 if !(secondaryWeapon _unit isEqualTo "") then {
 _unit selectWeapon (secondaryWeapon _unit);
 if !(currentMagazine _unit isEqualTo "") then {
 _magazines pushBack currentMagazine _unit;
 };
 };
 if !(handgunWeapon _unit isEqualTo "") then {
 _unit selectWeapon (handgunWeapon _unit);
 if !(currentMagazine _unit isEqualTo "") then {
 _magazines pushBack currentMagazine _unit;
 };
 };
};
_unit selectWeapon (primaryWeapon _unit);
if (isNil "_handgunItems") then {_handgunItems = ["","",""];};
[_primary,_launcher,_handgun,_magazines,_uniform,_vest,_backpack,_items,_primitems,_secitems,_handgunitems,_uitems,_vitems,_bitems,_headgear,_goggles];
*/
/*
params [["_unit",objNull,[objNull]]];

if (isNull _unit) exitWith {};

//private _dropWeapons = husky_SETTINGS(getNumber,"drop_weapons_onDeath");
private _dropItems = husky_SETTINGS(getNumber,"drop_iitems_onDeath");

private _primary = [primaryWeapon _unit, ""] select _dropWeapons;
private _launcher = [secondaryWeapon _unit, ""] select _dropWeapons;
private _handgun = [handGunWeapon _unit, ""] select _dropWeapons;

private _primitems = [];
private _secitems = [];
private _handgunitems = [];

private _magazines = [];

private _uniform = uniform _unit;
private _vest = vest _unit;
private _backpack = backpack _unit;

private _items = assignedItems _unit;

private _headgear = headgear _unit;
private _goggles = goggles _unit;
private _uitems = [];
private _vitems = [];
private _bitems = [];


/*
if !(primaryWeapon _unit isEqualTo "") then {_primitems = primaryWeaponItems _unit;};
if !(handgunWeapon _unit isEqualTo "") then {_handgunItems = handgunItems _unit;};

if !(_uniform isEqualTo "") then {{_uitems pushBack _x; true} count (uniformItems _unit);};
if !(_vest isEqualTo "") then {{_vitems pushBack _x; true} count (vestItems _unit);};
if !(_backpack isEqualTo "") then {{_bitems pushBack _x; true} count (backPackItems _unit);};

if !(primaryWeapon _unit isEqualTo "") then {
    _unit selectWeapon (primaryWeapon _unit);
    if !(currentMagazine _unit isEqualTo "") then {
        _magazines pushBack currentMagazine _unit;
    };
};

if !(secondaryWeapon _unit isEqualTo "") then {
    _unit selectWeapon (secondaryWeapon _unit);
    if !(currentMagazine _unit isEqualTo "") then {
        _magazines pushBack currentMagazine _unit;
    };
};

if !(handgunWeapon _unit isEqualTo "") then {
    _unit selectWeapon (handgunWeapon _unit);
    if !(currentMagazine _unit isEqualTo "") then {
        _magazines pushBack currentMagazine _unit;
    };
};
*/
/*
if (_dropItems isEqualTo 0) then {
 if !(primaryWeapon _unit isEqualTo "") then {_primitems = primaryWeaponItems _unit;};
 if !(handgunWeapon _unit isEqualTo "") then {_handgunItems = handgunItems _unit;};
 if !(_uniform isEqualTo "") then {{_uitems pushBack _x; true} count (uniformItems _unit);};
 if !(_vest isEqualTo "") then {{_vitems pushBack _x; true} count (vestItems _unit);};
 if !(_backpack isEqualTo "") then {{_bitems pushBack _x; true} count (backPackItems _unit);};
 if !(primaryWeapon _unit isEqualTo "") then {
 _unit selectWeapon (primaryWeapon _unit);
 if !(currentMagazine _unit isEqualTo "") then {
 _magazines pushBack currentMagazine _unit;
 };
 };
 if !(secondaryWeapon _unit isEqualTo "") then {
 _unit selectWeapon (secondaryWeapon _unit);
 if !(currentMagazine _unit isEqualTo "") then {
 _magazines pushBack currentMagazine _unit;
 };
 };
 if !(handgunWeapon _unit isEqualTo "") then {
 _unit selectWeapon (handgunWeapon _unit);
 if !(currentMagazine _unit isEqualTo "") then {
 _magazines pushBack currentMagazine _unit;
 };
 };
};

_unit selectWeapon (primaryWeapon _unit);

if (isNil "_handgunItems") then {_handgunItems = ["","",""];};

[_primary,_launcher,_handgun,_magazines,_uniform,_vest,_backpack,_items,_primitems,_secitems,_handgunitems,_uitems,_vitems,_bitems,_headgear,_goggles];

*/
//#include "..\..\script_macros.hpp"
/*
 File: fn_fetchDeadGear.sqf
 Author: Bryan "Tonic" Boardwine

 Description:
 Fetches gear off of a body.
*/
/*
params [["_unit",objNull,[objNull]]];

if (isNull _unit) exitWith {};

private _dropWeapons = husky_SETTINGS(getNumber,"drop_weapons_onDeath");
private _dropItems = husky_SETTINGS(getNumber,"drop_iitems_onDeath");
private _primary = [primaryWeapon _unit, ""] select _dropWeapons;
private _launcher = [secondaryWeapon _unit, ""] select _dropWeapons;
private _handgun = [handGunWeapon _unit, ""] select _dropWeapons;

private _primitems = [];
private _secitems = [];
private _handgunitems = [];

private _magazines = [];

private _uniform = uniform _unit;
private _vest = vest _unit;
private _backpack = backpack _unit;

private _items = assignedItems _unit;

private _headgear = headgear _unit;
private _goggles = goggles _unit;
private _uitems = [];
private _vitems = [];
private _bitems = [];
if (_dropItems isEqualTo 0) then {
 if !(primaryWeapon _unit isEqualTo "") then {_primitems = primaryWeaponItems _unit;};
 if !(handgunWeapon _unit isEqualTo "") then {_handgunItems = handgunItems _unit;};

 if !(_uniform isEqualTo "") then {{_uitems pushBack _x; true} count (uniformItems _unit);};
 if !(_vest isEqualTo "") then {{_vitems pushBack _x; true} count (vestItems _unit);};
 if !(_backpack isEqualTo "") then {{_bitems pushBack _x; true} count (backPackItems _unit);};

 if !(primaryWeapon _unit isEqualTo "") then {
 _unit selectWeapon (primaryWeapon _unit);
 if !(currentMagazine _unit isEqualTo "") then {
 _magazines pushBack currentMagazine _unit;
 };
 };

 if !(secondaryWeapon _unit isEqualTo "") then {
 _unit selectWeapon (secondaryWeapon _unit);
 if !(currentMagazine _unit isEqualTo "") then {
 _magazines pushBack currentMagazine _unit;
 };
 };

 if !(handgunWeapon _unit isEqualTo "") then {
 _unit selectWeapon (handgunWeapon _unit);
 if !(currentMagazine _unit isEqualTo "") then {
 _magazines pushBack currentMagazine _unit;
 };
 };
};
_unit selectWeapon (primaryWeapon _unit);

if (isNil "_handgunItems") then {_handgunItems = ["","",""];};

[_primary,_launcher,_handgun,_magazines,_uniform,_vest,_backpack,_items,_primitems,_secitems,_handgunitems,_uitems,_vitems,_bitems,_headgear,_goggles];
*/