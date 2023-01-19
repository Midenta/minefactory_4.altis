class LockerMenuGang {
   idd = 50001;
   name = "LockerMenuGang";
   movingenable = 0;
   enablesimulation = 1;
   onload = "uiNamespace setVariable ['LockerMenuGang',_this select 0];";
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
           idc = 50011;
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
           idc = 50031;
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
           idc = 50041;
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
           idc = 50021;
           x = 0.11 * safezoneW + safezoneX;
           y = 0.178345323741007 * safezoneH + safezoneY;
           colorframe[] = {0, 0, 0, 0.8};
           colorbar[] = {0,0.50,0,0.65};
       };
       class ProgressBarText : Cat_RscText
       {
           w = 0.680515893694633 * safezoneW;
           h = 0.0410791366906475 * safezoneH;
           idc = 50251;
           x = 0.11 * safezoneW + safezoneX;
           y = 0.178345323741007 * safezoneH + safezoneY;
           style = Cat_ST_CENTER;
       };
       class LockerGear : Cat_RscListBox
       {
           idc = 50051;
           text = "";
           //onlbdblclick = "[1] call cat_Lockergang_fnc_takeItem";
           sizeex = 0.040;
           x = 0.11 * safezoneW + safezoneX;
           y = 0.283273381294964 * safezoneH + safezoneY;
           w = 0.337107868681605 * safezoneW;
           h = 0.506294964028777 * safezoneH;
       };
       class PlayerGear : Cat_RscListBox
       {
           idc = 50061;
           text = "";
           onlbdblclick = "[1] call cat_Lockergang_fnc_storeItem";
           sizeex = 0.040;
           x = 0.454924439812402 * safezoneW + safezoneX;
           y = 0.283273381294964 * safezoneH + safezoneY;
           w = 0.335435122459614 * safezoneW;
           h = 0.506294964028777 * safezoneH;
       };/*
       class TakeItem : Cat_RscButton
       {
           idc = 5007;
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           onbuttonclick = "[] call cat_Lockergang_fnc_takeItem;";
           x = 0.11 * safezoneW + safezoneX;
           y = 0.801834532374101 * safezoneH + safezoneY;
           w = 0.291250651380928 * safezoneW;
           h = 0.0389928057553957 * safezoneH;
       };*/
       class LockerEdit : Cat_RscEdit
       {
           idc = 50081;
           text = "1";
           sizeex = 0.040;
           x = 0.409067222511725 * safezoneW + safezoneX;
           y = 0.801834532374101 * safezoneH + safezoneY;
           w = 0.037931214174049 * safezoneW;
           h = 0.0389928057553957 * safezoneH;
       };
       class PlayerEdit : Cat_RscEdit
       {
           idc = 50091;
           text = "1";
           sizeex = 0.040;
           x = 0.454924439812402 * safezoneW + safezoneX;
           y = 0.801834532374101 * safezoneH + safezoneY;
           w = 0.0385617509119333 * safezoneW;
           h = 0.0389928057553957 * safezoneH;
       };
       class StoreItem : Cat_RscButton
       {
           idc = 50101;
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           onbuttonclick = "[] call cat_Lockergang_fnc_storeItem;";
           x = 0.50078165711308 * safezoneW + safezoneX;
           y = 0.801834532374101 * safezoneH + safezoneY;
           w = 0.290255341323606 * safezoneW;
           h = 0.0389928057553957 * safezoneH;
       };/*
       class VehicleSelect : Cat_RscButton
       {
           idc = 5027;
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           onbuttonclick = "[] call cat_Lockergang_fnc_vehicleSelected;";
           x = 0.454924439812402 * safezoneW + safezoneX;
           y = 0.801834532374101 * safezoneH + safezoneY;
           w = 0.335435122459614 * safezoneW;
           h = 0.0389928057553957 * safezoneH;
       };
       */
       class ButtonClose : Cat_RscButton
       {
           idc = 50111;
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
           idc = 50121;
           onbuttonclick = "[] spawn cat_Lockergang_fnc_upgrade;";
           x = 0.28379442417926 * safezoneW + safezoneX;
           y = 0.850107913669065 * safezoneH + safezoneY;
           w = 0.163 * safezoneW;
           h = 0.0399999999999999 * safezoneH;
           colorBackgroundActive[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           colorFocused[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
       };
       /*
       class ButtonVItems : Cat_RscButton
       {
           idc = 5013;
           onbuttonclick = "[0] call cat_Lockergang_fnc_switchDisplayType;";
           x = 0.0750859822824388 * safezoneW + safezoneX;
           y = 0.232697841726619 * safezoneH + safezoneY;
           w = 0.0249661281917665 * safezoneW;
           h = 0.04 * safezoneH;
           colorBackgroundActive[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           colorFocused[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
       };
       
       class ButtonVItemsIcon : Cat_RscPicture
       {
           idc = 5014;
           x = 0.0750859822824388 * safezoneW + safezoneX;
           y = 0.232697841726619 * safezoneH + safezoneY;
           w = 0.0249661281917665 * safezoneW;
           h = 0.04 * safezoneH;           
           text = "Scripts\cation\locker\vitems.paa"; 
       };
       class ButtonVItemsActive : Cat_RscText
       {
           idc = 5034;
           x = 0.0710922787193974 * safezoneW + safezoneX;
           y = 0.232697841726619 * safezoneH + safezoneY;
           w = 0.00470809792843691 * safezoneW;
           h = 0.04 * safezoneH;
           colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
       };
       
       class ButtonWeapons : Cat_RscButton
       {
           idc = 5015;
           onbuttonclick = "[1] call cat_Lockergang_fnc_switchDisplayType;";
           x = 0.0750859822824388 * safezoneW + safezoneX;
           y = 0.283273381294964 * safezoneH + safezoneY;
           w = 0.0249661281917665 * safezoneW;
           h = 0.04 * safezoneH;
           colorBackgroundActive[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           colorFocused[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
       };
       class ButtonWeaponsIcon : Cat_RscPicture
       {
           idc = 5016;
           x = 0.0750859822824388 * safezoneW + safezoneX;
           y = 0.283273381294964 * safezoneH + safezoneY;
           w = 0.0249661281917665 * safezoneW;
           h = 0.04 * safezoneH;
           text = "\A3\Ui_f\data\GUI\Rsc\RscDisplayArsenal\PrimaryWeapon_ca.paa";           
       };
       class ButtonWeaponsActive : Cat_RscText
       {
           idc = 5036;
           x = 0.0710922787193974 * safezoneW + safezoneX;
           y = 0.283273381294964 * safezoneH + safezoneY;
           w = 0.00470809792843691 * safezoneW;
           h = 0.04 * safezoneH;
           colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
       };
       class ButtonItems : Cat_RscButton
       {
           idc = 5017;
           onbuttonclick = "[2] call cat_Lockergang_fnc_switchDisplayType;";
           x = 0.0750859822824388 * safezoneW + safezoneX;
           y = 0.332517985611511 * safezoneH + safezoneY;
           w = 0.0249661281917665 * safezoneW;
           h = 0.04 * safezoneH;
           colorBackgroundActive[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           colorFocused[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
       };
       class ButtonItemsIcon : Cat_RscPicture
       {
           idc = 5018;
           x = 0.0750859822824388 * safezoneW + safezoneX;
           y = 0.332517985611511 * safezoneH + safezoneY;
           w = 0.0249661281917665 * safezoneW;
           h = 0.04 * safezoneH;
           text = "\A3\Ui_f\data\GUI\Rsc\RscDisplayArsenal\watch_ca.paa";
       };
       class ButtonItemsActive : Cat_RscText
       {
           idc = 5038;
           x = 0.0710922787193974 * safezoneW + safezoneX;
           y = 0.332517985611511 * safezoneH + safezoneY;
           w = 0.00470809792843691 * safezoneW;
           h = 0.04 * safezoneH;
           colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
       };
       class ButtonEquipment : Cat_RscButton
       {
           idc = 5019;
           onbuttonclick = "[3] call cat_Lockergang_fnc_switchDisplayType;";
           x = 0.0750859822824388 * safezoneW + safezoneX;
           y = 0.380827338129496 * safezoneH + safezoneY;
           w = 0.0249661281917665 * safezoneW;
           h = 0.04 * safezoneH;
           colorBackgroundActive[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           colorFocused[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
       };
       class ButtonEquipmentIcon : Cat_RscPicture
       {
           idc = 5020;
           x = 0.0750859822824388 * safezoneW + safezoneX;
           y = 0.380827338129496 * safezoneH + safezoneY;
           w = 0.0249661281917665 * safezoneW;
           h = 0.04 * safezoneH;
           text = "\A3\Ui_f\data\GUI\Rsc\RscDisplayArsenal\uniform_ca.paa";  
       };       
       class ButtonEquipmentActive : Cat_RscText
       {
           idc = 5040;
           x = 0.0710922787193974 * safezoneW + safezoneX;
           y = 0.380827338129496 * safezoneH + safezoneY;
           w = 0.00470809792843691 * safezoneW;
           h = 0.04 * safezoneH;
           colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
       };*/
       class ButtonPlayer : Cat_RscButton
       {
           idc = 50211;
           onbuttonclick = "[0] call cat_Lockergang_fnc_switchDisplayMode";
           x = 0.799398124022929 * safezoneW + safezoneX;
           y = 0.232697841726619 * safezoneH + safezoneY;
           w = 0.0249661281917665 * safezoneW;
           h = 0.04 * safezoneH;
           colorBackgroundActive[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           colorFocused[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
       };
       class ButtonPlayerIcon : Cat_RscPicture
       {
           idc = 50221;
           x = 0.799398124022929 * safezoneW + safezoneX;
           y = 0.232697841726619 * safezoneH + safezoneY;
           w = 0.0249661281917665 * safezoneW;
           h = 0.04 * safezoneH;
           text = "\A3\Ui_f\data\GUI\Rsc\RscDisplayMain\profile_player_ca.paa";
       };
       class ButtonPlayerActive : Cat_RscText
       {
           idc = 50421;
           x = 0.8243642522146955 * safezoneW + safezoneX;
           y = 0.232697841726619 * safezoneH + safezoneY;
           w = 0.00470809792843691 * safezoneW;
           h = 0.04 * safezoneH;
           colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
       };/*
       class ButtonVehicle : Cat_RscButton
       {
           idc = 5023;
           onbuttonclick = "[1] call cat_Lockergang_fnc_switchDisplayMode";
           x = 0.799398124022929 * safezoneW + safezoneX;
           y = 0.283273381294964 * safezoneH + safezoneY;
           w = 0.0249661281917665 * safezoneW;
           h = 0.04 * safezoneH;
           colorBackgroundActive[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           colorFocused[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
       };
       class ButtonVehicleIcon : Cat_RscPicture
       {
           idc = 5024;
           x = 0.799398124022929 * safezoneW + safezoneX;
           y = 0.283273381294964 * safezoneH + safezoneY;
           w = 0.0249661281917665 * safezoneW;
           h = 0.04 * safezoneH;
           text = "\A3\Ui_f\data\Map\VehicleIcons\iconCar_ca.paa";
       };
       class ButtonVehicleActive : Cat_RscText
       {
           idc = 5044;
           x = 0.8243642522146955 * safezoneW + safezoneX;
           y = 0.283273381294964 * safezoneH + safezoneY;
           w = 0.00470809792843691 * safezoneW;
           h = 0.04 * safezoneH;
           colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
       };*/
       class Hint : Cat_RscText
       {
           idc = 50261;
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