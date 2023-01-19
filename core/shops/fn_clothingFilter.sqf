#include "..\..\script_macros.hpp"
/*
    File: fn_clothingFilter.sqf
    Author: Bryan "Tonic" Boardwine edit by Deathman / MrFrost

    Description:
    Check wich thing is selected and make Cam Move
*/
disableSerialization;
private _selectionthis = ((_this select 0) select 1) select 0;
switch (_selectionthis) do {
    case 4: {
        husky_shop_cam camSetTarget (player modelToWorld [0,-.15,1.3]);
        husky_shop_cam camSetPos (player modelToWorld [1,-4,2]);
        husky_shop_cam camCommit 1;
    };

    case 0: {
        husky_shop_cam camSetTarget (player modelToWorld [0,0,1]);
        husky_shop_cam camSetPos (player modelToWorld [1,4,2]);
        husky_shop_cam camCommit 1;
    };

    case 3: {
        husky_shop_cam camSetTarget (player modelToWorld [0,0,1.4]);
        husky_shop_cam camSetPos (player modelToWorld [-.1,2,1.4]);
        husky_shop_cam camCommit 1;
    };

    default {
        husky_shop_cam camSetTarget (player modelToWorld [0,0,1.6]);
        husky_shop_cam camSetPos (player modelToWorld [-.5,1,1.6]);
        husky_shop_cam camCommit 1;
    };
};
