/*--------------------------------------------------------------------------
    Author:     Maverick Applications
    Website:    https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

private _shop = param [3, "", [""]];

//(findDisplay MAV_IDD_GUIWEAPONSHOP) displaySetEventHandler ["KeyDown","if ((_this select 1) isEqualTo 1) then {hint localize 'STR_locker_pressesc';true}"]; //Block the ESC menu
try {
	if (_shop isEqualTo "") throw (getText(missionConfigFile >> "maverick_weaponshop_cfg" >> "localization" >> "msgParamEmpty"));
	if !(isNull objectParent player) throw (getText(missionConfigFile >> "maverick_weaponshop_cfg" >> "localization" >> "msgInVehicle"));

    private _cfg = missionConfigFile >> "maverick_weaponshop_cfg" >> "shops" >> _shop;

    if !(isClass _cfg) throw (getText(missionConfigFile >> "maverick_weaponshop_cfg" >> "localization" >> "msgShopExists"));
    if !(call compile (getText(_cfg >> "condition"))) throw (getText(missionConfigFile >> "maverick_weaponshop_cfg" >> "localization" >> "msgCondition"));

    if (getNumber (_cfg >> "simple") isEqualTo 0) then {
        MAV_guiWeaponShop_Type = _shop;
        MAV_guiWeaponShop_Cfg = _cfg;
		
		0 fadeMusic 1; 
		playMusic "LeadTrack01_F";

        createDialog "MAV_guiWeaponShop";
		
    } else {
        MAV_guiWeaponShopSimple_Type = _shop;
        MAV_guiWeaponShopSimple_Cfg = _cfg;

		0 fadeMusic 1; 
		playMusic "LeadTrack01_F";
		
        createDialog "MAV_guiWeaponShopSimple";
		
    };
} catch {
	hint _exception;
};