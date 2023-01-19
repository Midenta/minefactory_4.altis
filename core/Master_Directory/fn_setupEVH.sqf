/*
    File: fn_setupEVH.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Master eventhandler file
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
player addEventHandler ["Killed", {_this call husky_fnc_onPlayerKilled}];
player addEventHandler ["HandleDamage", {_this call husky_fnc_handleDamage}];
player addEventHandler ["HandleHeal", {_this call husky_fnc_handleHeal}];
player addEventHandler ["Respawn", {_this call husky_fnc_onPlayerRespawn}];
player addEventHandler ["Take", {_this call husky_fnc_onTakeItem}];
player addEventHandler ["Fired", {_this call husky_fnc_onFired}];
player addEventHandler ["InventoryClosed", {_this call husky_fnc_inventoryClosed}];		//remoteExec zum server und vom server ture und in die eighentliche datei
player addEventHandler ["InventoryOpened", {_this call husky_fnc_inventoryOpened}];
player addEventHandler ["HandleRating", {0}];
//player addEventHandler ["GetOutMan", { _this addaction [("<t color=""#ED2744"">") + ("Paradrop") + "</t>", "husky_fnc_Paradrop", "", 1, false, true,"", "((vehicle player) iskindof ""Air"") && (((position player) select 2) > 20))"]; }];