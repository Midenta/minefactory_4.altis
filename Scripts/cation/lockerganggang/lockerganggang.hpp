class LockerMenuGanggang {
   idd = 500012;
   name = "LockerMenuGanggang";
   movingenable = 0;
   enablesimulation = 1;
   onload = "uiNamespace setVariable ['LockerMenuGanggang',_this select 0];";
   class controlsBackground
   {
	   class husky_RscTitleBackground_hintergrund : husky_RscPicture
       {
           idc = -1;
           text = "textures\Menus\TrunkPic.paa";
           x = -0.197916666666667 * safezoneW + safezoneX;
           y = -0.10879848628193 * safezoneH + safezoneY;
           w = 1.29322916666667 * safezoneW;
           h = 1.19726679961613 * safezoneH;
           colorbackground[] = {1,1,1,0};
       };
       class RscTitleBackground : Cat_RscText
       {
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
           x = 0.1 * safezoneW + safezoneX;
           y = 0.123561151079137 * safezoneH + safezoneY;
           w = 0.7 * safezoneW;
           h = 0.04 * safezoneH;
           idc = 1000;
       };
       class Background : Cat_RscText
       {
           colorbackground[] = {0, 0, 0, 0.7};
           x = 0.1 * safezoneW + safezoneX;
           y = 0.162769784172662 * safezoneH + safezoneY;
           w = 0.7 * safezoneW;
           h = 0.68873381294964 * safezoneH;
           idc = 1000;
       };
       class TitleText : Cat_RscText
       {
           colorbackground[] = {0, 0, 0, 0};
           idc = 500112;
           text = "";
           x = 0.1 * safezoneW + safezoneX;
           y = 0.126258992805755 * safezoneH + safezoneY;
           w = 0.699709302325581 * safezoneW;
           h = 0.04 * safezoneH;
           sizeex = 0.05;
           style = ST_TITLE;
       };
       class LockerText : Cat_RscText
       {
           idc = 500312;
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           sizeex = 0.04;
           x = 0.11 * safezoneW + safezoneX;
           y = 0.232913669064748 * safezoneH + safezoneY;
           w = 0.337107868681605 * safezoneW;
           h = 0.04 * safezoneH;
           style = Cat_ST_CENTER;
       };
       class PlayerText : Cat_RscText
       {
           idc = 500412;
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           sizeex = 0.04;
           x = 0.454924439812402 * safezoneW + safezoneX;
           y = 0.232697841726619 * safezoneH + safezoneY;
           w = 0.335435122459614 * safezoneW;
           h = 0.04 * safezoneH;
           style = Cat_ST_CENTER;
       };
   };
   class controls
   {
       class ProgressBar : Cat_RscProgressBar
       {
           w = 0.680515893694633 * safezoneW;
           h = 0.0410791366906475 * safezoneH;
           idc = 500212;
           x = 0.11 * safezoneW + safezoneX;
           y = 0.178345323741007 * safezoneH + safezoneY;
           colorframe[] = {0, 0, 0, 0.8};
           colorbar[] = {0,0.50,0,0.65};
       };
       class ProgressBarText : Cat_RscText
       {
           w = 0.680515893694633 * safezoneW;
           h = 0.0410791366906475 * safezoneH;
           idc = 502512;
           x = 0.11 * safezoneW + safezoneX;
           y = 0.178345323741007 * safezoneH + safezoneY;
           style = Cat_ST_CENTER;
       };
       class LockerGear : Cat_RscListBox
       {
           idc = 500512;
           text = "";
           onlbdblclick = "[1] call cat_Lockerganggang_fnc_takeItem";
           sizeex = 0.040;
           x = 0.11 * safezoneW + safezoneX;
           y = 0.283273381294964 * safezoneH + safezoneY;
           w = 0.337107868681605 * safezoneW;
           h = 0.506294964028777 * safezoneH;
       };
       class PlayerGear : Cat_RscListBox
       {
           idc = 500612;
           text = "";
           onlbdblclick = "[1] call cat_Lockerganggang_fnc_storeItem";
           sizeex = 0.040;
           x = 0.454924439812402 * safezoneW + safezoneX;
           y = 0.283273381294964 * safezoneH + safezoneY;
           w = 0.335435122459614 * safezoneW;
           h = 0.506294964028777 * safezoneH;
       };
       class TakeItem : Cat_RscButton
       {
           idc = 500712;
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           onbuttonclick = "[] call cat_Lockerganggang_fnc_takeItem;";
           x = 0.11 * safezoneW + safezoneX;
           y = 0.801834532374101 * safezoneH + safezoneY;
           w = 0.291250651380928 * safezoneW;
           h = 0.0389928057553957 * safezoneH;
       };
       class LockerEdit : Cat_RscEdit
       {
           idc = 500812;
           text = "1";
           sizeex = 0.040;
           x = 0.409067222511725 * safezoneW + safezoneX;
           y = 0.801834532374101 * safezoneH + safezoneY;
           w = 0.037931214174049 * safezoneW;
           h = 0.0389928057553957 * safezoneH;
       };
       class PlayerEdit : Cat_RscEdit
       {
           idc = 500912;
           text = "1";
           sizeex = 0.040;
           x = 0.454924439812402 * safezoneW + safezoneX;
           y = 0.801834532374101 * safezoneH + safezoneY;
           w = 0.0385617509119333 * safezoneW;
           h = 0.0389928057553957 * safezoneH;
       };
       class StoreItem : Cat_RscButton
       {
           idc = 501012;
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           onbuttonclick = "[] call cat_Lockerganggang_fnc_storeItem;";
           x = 0.50078165711308 * safezoneW + safezoneX;
           y = 0.801834532374101 * safezoneH + safezoneY;
           w = 0.290255341323606 * safezoneW;
           h = 0.0389928057553957 * safezoneH;
       };
       class VehicleSelect : Cat_RscButton
       {
           idc = 502712;
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           onbuttonclick = "[] call cat_Lockerganggang_fnc_vehicleSelected;";
           x = 0.454924439812402 * safezoneW + safezoneX;
           y = 0.801834532374101 * safezoneH + safezoneY;
           w = 0.335435122459614 * safezoneW;
           h = 0.0389928057553957 * safezoneH;
       };

       class ButtonClose : Cat_RscButton
       {
           idc = 501112;
           onbuttonclick = "closeDialog 0;";
           x = 0.11 * safezoneW + safezoneX;
           y = 0.850107913669065 * safezoneH + safezoneY;
           w = 0.164622199062011 * safezoneW;
           h = 0.0399999999999999 * safezoneH;
           colorBackgroundActive[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           colorFocused[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
       };
       class ButtonUpgrade : Cat_RscButton
       {
           idc = 501212;
           onbuttonclick = "[] spawn cat_Lockerganggang_fnc_upgrade;";
           x = 0.28379442417926 * safezoneW + safezoneX;
           y = 0.850107913669065 * safezoneH + safezoneY;
           w = 0.163 * safezoneW;
           h = 0.0399999999999999 * safezoneH;
           colorBackgroundActive[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           colorFocused[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
       };
       
       class ButtonVItems : Cat_RscButton
       {
           idc = 501312;
           onbuttonclick = "[0] call cat_Lockerganggang_fnc_switchDisplayType;";
           x = 0.0750859822824388 * safezoneW + safezoneX;
           y = 0.232697841726619 * safezoneH + safezoneY;
           w = 0.0249661281917665 * safezoneW;
           h = 0.04 * safezoneH;
           colorBackgroundActive[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           colorFocused[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
       };
       
       class ButtonVItemsIcon : Cat_RscPicture
       {
           idc = 501412;
           x = 0.0750859822824388 * safezoneW + safezoneX;
           y = 0.232697841726619 * safezoneH + safezoneY;
           w = 0.0249661281917665 * safezoneW;
           h = 0.04 * safezoneH;           
           text = "Scripts\cation\locker\vitems.paa"; 
       };
       class ButtonVItemsActive : Cat_RscText
       {
           idc = 503412;
           x = 0.0710922787193974 * safezoneW + safezoneX;
           y = 0.232697841726619 * safezoneH + safezoneY;
           w = 0.00470809792843691 * safezoneW;
           h = 0.04 * safezoneH;
           colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
       };
       
       class ButtonWeapons : Cat_RscButton
       {
           idc = 501512;
           onbuttonclick = "[1] call cat_Lockerganggang_fnc_switchDisplayType;";
           x = 0.0750859822824388 * safezoneW + safezoneX;
           y = 0.283273381294964 * safezoneH + safezoneY;
           w = 0.0249661281917665 * safezoneW;
           h = 0.04 * safezoneH;
           colorBackgroundActive[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           colorFocused[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
       };
       class ButtonWeaponsIcon : Cat_RscPicture
       {
           idc = 501612;
           x = 0.0750859822824388 * safezoneW + safezoneX;
           y = 0.283273381294964 * safezoneH + safezoneY;
           w = 0.0249661281917665 * safezoneW;
           h = 0.04 * safezoneH;
           text = "\A3\Ui_f\data\GUI\Rsc\RscDisplayArsenal\PrimaryWeapon_ca.paa";           
       };
       class ButtonWeaponsActive : Cat_RscText
       {
           idc = 503612;
           x = 0.0710922787193974 * safezoneW + safezoneX;
           y = 0.283273381294964 * safezoneH + safezoneY;
           w = 0.00470809792843691 * safezoneW;
           h = 0.04 * safezoneH;
           colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
       };
       class ButtonItems : Cat_RscButton
       {
           idc = 501712;
           onbuttonclick = "[2] call cat_Lockerganggang_fnc_switchDisplayType;";
           x = 0.0750859822824388 * safezoneW + safezoneX;
           y = 0.332517985611511 * safezoneH + safezoneY;
           w = 0.0249661281917665 * safezoneW;
           h = 0.04 * safezoneH;
           colorBackgroundActive[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           colorFocused[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
       };
       class ButtonItemsIcon : Cat_RscPicture
       {
           idc = 501812;
           x = 0.0750859822824388 * safezoneW + safezoneX;
           y = 0.332517985611511 * safezoneH + safezoneY;
           w = 0.0249661281917665 * safezoneW;
           h = 0.04 * safezoneH;
           text = "\A3\Ui_f\data\GUI\Rsc\RscDisplayArsenal\watch_ca.paa";
       };
       class ButtonItemsActive : Cat_RscText
       {
           idc = 503812;
           x = 0.0710922787193974 * safezoneW + safezoneX;
           y = 0.332517985611511 * safezoneH + safezoneY;
           w = 0.00470809792843691 * safezoneW;
           h = 0.04 * safezoneH;
           colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
       };
       class ButtonEquipment : Cat_RscButton
       {
           idc = 501912;
           onbuttonclick = "[3] call cat_Lockerganggang_fnc_switchDisplayType;";
           x = 0.0750859822824388 * safezoneW + safezoneX;
           y = 0.380827338129496 * safezoneH + safezoneY;
           w = 0.0249661281917665 * safezoneW;
           h = 0.04 * safezoneH;
           colorBackgroundActive[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           colorFocused[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
       };
       class ButtonEquipmentIcon : Cat_RscPicture
       {
           idc = 502012;
           x = 0.0750859822824388 * safezoneW + safezoneX;
           y = 0.380827338129496 * safezoneH + safezoneY;
           w = 0.0249661281917665 * safezoneW;
           h = 0.04 * safezoneH;
           text = "\A3\Ui_f\data\GUI\Rsc\RscDisplayArsenal\uniform_ca.paa";  
       };       
       class ButtonEquipmentActive : Cat_RscText
       {
           idc = 504012;
           x = 0.0710922787193974 * safezoneW + safezoneX;
           y = 0.380827338129496 * safezoneH + safezoneY;
           w = 0.00470809792843691 * safezoneW;
           h = 0.04 * safezoneH;
           colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
       };
       class ButtonPlayer : Cat_RscButton
       {
           idc = 502112;
           onbuttonclick = "[0] call cat_Lockerganggang_fnc_switchDisplayMode";
           x = 0.799398124022929 * safezoneW + safezoneX;
           y = 0.232697841726619 * safezoneH + safezoneY;
           w = 0.0249661281917665 * safezoneW;
           h = 0.04 * safezoneH;
           colorBackgroundActive[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           colorFocused[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
       };
       class ButtonPlayerIcon : Cat_RscPicture
       {
           idc = 502212;
           x = 0.799398124022929 * safezoneW + safezoneX;
           y = 0.232697841726619 * safezoneH + safezoneY;
           w = 0.0249661281917665 * safezoneW;
           h = 0.04 * safezoneH;
           text = "\A3\Ui_f\data\GUI\Rsc\RscDisplayMain\profile_player_ca.paa";
       };
       class ButtonPlayerActive : Cat_RscText
       {
           idc = 504212;
           x = 0.8243642522146955 * safezoneW + safezoneX;
           y = 0.232697841726619 * safezoneH + safezoneY;
           w = 0.00470809792843691 * safezoneW;
           h = 0.04 * safezoneH;
           colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
       };
       class ButtonVehicle : Cat_RscButton
       {
           idc = 502312;
           onbuttonclick = "[1] call cat_Lockerganggang_fnc_switchDisplayMode";
           x = 0.799398124022929 * safezoneW + safezoneX;
           y = 0.283273381294964 * safezoneH + safezoneY;
           w = 0.0249661281917665 * safezoneW;
           h = 0.04 * safezoneH;
           colorBackgroundActive[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           colorFocused[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
       };
       class ButtonVehicleIcon : Cat_RscPicture
       {
           idc = 502412;
           x = 0.799398124022929 * safezoneW + safezoneX;
           y = 0.283273381294964 * safezoneH + safezoneY;
           w = 0.0249661281917665 * safezoneW;
           h = 0.04 * safezoneH;
           text = "\A3\Ui_f\data\Map\VehicleIcons\iconCar_ca.paa";
       };
       class ButtonVehicleActive : Cat_RscText
       {
           idc = 504412;
           x = 0.8243642522146955 * safezoneW + safezoneX;
           y = 0.283273381294964 * safezoneH + safezoneY;
           w = 0.00470809792843691 * safezoneW;
           h = 0.04 * safezoneH;
           colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
       };
       class Hint : Cat_RscText
       {
           idc = 502612;
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           sizeex = 0.04;
           x = 0.454924439812402 * safezoneW + safezoneX;
           y = 0.850107913669065 * safezoneH + safezoneY;
           w = 0.337107868681605 * safezoneW;
           h = 0.05 * safezoneH;
           style = Cat_ST_MULTI;
       };
   };
};