
//Update husky of HUD after heal
((uiNamespace getVariable ["playerHUD",displayNull]) displayCtrl 2403) ctrlSetText format["%1 %",round ((1 - (damage player)) * 100)];
