/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

private _shop = param [0, "", [""]];

0 fadeMusic 1;
playMusic "LeadTrack01_F";

[nil, nil, nil, _shop] call mav_shop_fnc_initWeaponShop;

