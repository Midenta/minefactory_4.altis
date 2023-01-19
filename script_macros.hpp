/* System Wide Stuff */
#define SYSTEM_TAG "husky"
#define ITEM_TAG format ["%1%2",SYSTEM_TAG,"item_"]
#define c126 husky_cash
#define b126 husky_atmbank
#define COINS husky_coins
#define GANG_FUNDS group player getVariable ["gang_bank",0];
#define dbid husky_dbid

//RemoteExec Macros
#define RSERV 2 //Only server
#define RCLIENT -2 //Except server
#define RANY 0 //Global

//Scripting Macros
#define CONST(var1,var2) var1 = compileFinal (if (var2 isEqualType "") then {var2} else {str(var2)})
#define CONSTVAR(var) var = compileFinal (if (var isEqualType "") then {var} else {str(var)})
#define FETCH_CONST(var) (call var)

//Display Macros
#define CONTROL(disp,ctrl) ((findDisplay ##disp) displayCtrl ##ctrl)
#define CONTROL_DATA(ctrl) (lbData[ctrl,lbCurSel ctrl])
#define CONTROL_DATAI(ctrl,index) ctrl lbData index

//System Macros
#define LICENSE_VARNAME(varName,flag) format ["license_%1_%2",flag,M_CONFIG(getText,"Licenses",varName,"variable")]
#define LICENSE_VALUE(varName,flag) missionNamespace getVariable [LICENSE_VARNAME(varName,flag),false]
#define ITEM_VARNAME(varName) format ["husky_inv_%1",M_CONFIG(getText,"VirtualItems",varName,"variable")]
#define ITEM_VALUE(varName) missionNamespace getVariable [ITEM_VARNAME(varName),0]
#define ITEM_ILLEGAL(varName) M_CONFIG(getNumber,"VirtualItems",varName,"illegal")
#define ITEM_SELLPRICE(varName) M_CONFIG(getNumber,"VirtualItems",varName,"sellPrice")
#define ITEM_BUYPRICE(varName) M_CONFIG(getNumber,"VirtualItems",varName,"buyPrice")
#define ITEM_NAME(varName) M_CONFIG(getText,"VirtualItems",varName,"displayName")
#define ITEM_HASLICENSE(varName) M_CONFIG(getNumber,"VirtualItems",varName,"hasLicense")

#define ITEM_WEIGHT(varName) M_CONFIG(getNumber,"VirtualItems",varName,"weight")
#define ITEM_VARPRICE(varName) M_CONFIG(getNumber,"VirtualItems",varName,"varPrice")
#define ITEM_MAXPRICE(varName) M_CONFIG(getNumber,"VirtualItems",varName,"maxPrice")
#define ITEM_MINPRICE(varName) M_CONFIG(getNumber,"VirtualItems",varName,"minPrice")
#define ITEM_FACTOR(varName) M_CONFIG(getNumber,"VirtualItems",varName,"factor")

//Achievement
#define ACHIEVEMENT_VARNAME(varName) format ["Achievement_%1",M_CONFIG(getText,"Achievement",varName,"variable")]
#define ACHIEVEMENT_VALUE(varName) missionNamespace getVariable [ACHIEVEMENT_VARNAME(varName),false]

//Condition Macros
#define KINDOF_ARRAY(a,b) [##a,##b] call {_veh = _this select 0;_types = _this select 1;_res = false; {if (_veh isKindOf _x) exitWith { _res = true };} forEach _types;_res}

//Config Macros
#define FETCH_CONFIG(TYPE,CFG,SECTION,CLASS,ENTRY) TYPE(configFile >> CFG >> SECTION >> CLASS >> ENTRY)
#define FETCH_CONFIG2(TYPE,CFG,CLASS,ENTRY) TYPE(configFile >> CFG >> CLASS >> ENTRY)
#define FETCH_CONFIG3(TYPE,CFG,SECTION,CLASS,ENTRY,SUB) TYPE(configFile >> CFG >> SECTION >> CLASS >> ENTRY >> SUB)
#define FETCH_CONFIG4(TYPE,CFG,SECTION,CLASS,ENTRY,SUB,SUB2) TYPE(configFile >> CFG >> SECTION >> CLASS >> ENTRY >> SUB >> SUB2)
#define M_CONFIG(TYPE,CFG,CLASS,ENTRY) TYPE(missionConfigFile >> CFG >> CLASS >> ENTRY)
#define BASE_CONFIG(CFG,CLASS) inheritsFrom(configFile >> CFG >> CLASS)
#define husky_SETTINGS(TYPE,SETTING) TYPE(missionConfigFile >> "husky_SETTINGS" >> SETTING)

//UI Macros
#define huskydisplay (uiNamespace getVariable ["playerHUD",displayNull])
#define huskyctrl(ctrl) ((uiNamespace getVariable ["playerHUD",displayNull]) displayCtrl ctrl)

//HelpMenu
#define REGISTER(functionName)                 class functionName {}
#define REGISTER_PUBVAR(functionName)          class functionName {publicVariable = 1;}
#define REGISTER_POSTINIT_PUBVAR(functionName) class functionName {postInit = 1; publicVariable = 1;}
#define REGISTER_PREINIT(functionName)         class functionName {preInit = 1;}
#define REGISTER_POSTINIT(functionName)        class functionName {postInit = 1;}
