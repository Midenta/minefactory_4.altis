////////////////////////////////////////////////////////////////////////////
//////           This HPP was created by Shinji`s GUI tool            //////
//////           Thieves-Gaming.de 							      //////
//////           Thieves										      //////
////////////////////////////////////////////////////////////////////////////
/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
class TrunkMenu {
   idd = 3500;
   name = "TrunkMenu";
   movingenable = 0;
   enablesimulation = 1;

   class controlsBackground
   {
       class MainBackground : husky_RscPicture
       {
           idc = -1;
           text = "textures\Menus\TrunkPic.paa";
           x = 0.06861 * safezoneW + safezoneX;
           y = 0.107852412488174 * safezoneH + safezoneY;
           w = 0.85677 * safezoneW;
           h = 0.818935587511826 * safezoneH;
           colorbackground[] = {1,1,1,0};
       };
       class RscTitleText : husky_RscTitle
       {
           idc = 3501;
           text = "";
           x = 0.242187 * safezoneW + safezoneX;
           y = 0.237118295175024 * safezoneH + safezoneY;
           w = 0.511979666666667 * safezoneW;
           h = 0.055 * safezoneH;
       };
       class VehicleWeight : RscTitleText
       {
           idc = 3504;
           style = 1;
           text = "";
           x = 0.242187 * safezoneW + safezoneX;
           y = 0.235226147587512 * safezoneH + safezoneY;
           w = 0.512500166666667 * safezoneW;
           h = 0.055 * safezoneH;
       };
       class RscTrunkText : husky_RscText
       {
           idc = -1;
           text = "$STR_Trunk_TInventory";
           sizeex = 0.04;
           x = 0.242187 * safezoneW + safezoneX;
           y = 0.302 * safezoneH + safezoneY;
           w = 0.232031 * safezoneW;
           h = 0.033 * safezoneH;
           colorbackground[] = {-1,-1,-1,0.7};
       };
       class RscPlayerText : husky_RscText
       {
           idc = -1;
           text = "$STR_Trunk_PInventory";
           sizeex = 0.04;
           x = 0.515469 * safezoneW + safezoneX;
           y = 0.302 * safezoneH + safezoneY;
           w = 0.232031 * safezoneW;
           h = 0.033 * safezoneH;
           colorbackground[] = {-1,-1,-1,0.7};
       };
   };
   class controls
   {
       class TrunkGear : husky_RscListbox
       {
           idc = 3502;
           text = "";
           sizeex = 0.030;
           x = 0.242187 * safezoneW + safezoneX;
           y = 0.346 * safezoneH + safezoneY;
           w = 0.232031 * safezoneW;
           h = 0.363 * safezoneH;
       };
       class PlayerGear : husky_RscListbox
       {
           idc = 3503;
           text = "";
           sizeex = 0.030;
           x = 0.515469 * safezoneW + safezoneX;
           y = 0.346 * safezoneH + safezoneY;
           w = 0.232031 * safezoneW;
           h = 0.363 * safezoneH;
       };
       class TrunkEdit : husky_RscEdit
       {
           idc = 3505;
           text = "1";
           sizeex = 0.030;
           x = 0.242187 * safezoneW + safezoneX;
           y = 0.72 * safezoneH + safezoneY;
           w = 0.0979687 * safezoneW;
           h = 0.022 * safezoneH;
       };
       class PlayerEdit : husky_RscEdit
       {
           idc = 3506;
           text = "1";
           sizeex = 0.030;
           x = 0.649531 * safezoneW + safezoneX;
           y = 0.72 * safezoneH + safezoneY;
           w = 0.0979687 * safezoneW;
           h = 0.022 * safezoneH;
       };
       class TakeItem : husky_RscButtonMenu
       {
           idc = -1;
           text = "Nehmen";
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           onbuttonclick = "[] call husky_fnc_vehTakeItem;";
           x = 0.345312 * safezoneW + safezoneX;
           y = 0.72 * safezoneH + safezoneY;
           w = 0.128906 * safezoneW;
           h = 0.033 * safezoneH;
       };
       class StoreItem : husky_RscButtonMenu
       {
           idc = -1;
           text = "Lagern";
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           onbuttonclick = "[] call husky_fnc_vehStoreItem;";
           x = 0.515469 * safezoneW + safezoneX;
           y = 0.72 * safezoneH + safezoneY;
           w = 0.128906 * safezoneW;
           h = 0.033 * safezoneH;
       };
       class TakeAllItem : husky_RscButtonMenu
       {
           idc = -1;
           text = "Alles Nehmen";
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           onbuttonclick = "[] call husky_fnc_vehTakeAllItem;";
           x = 0.345312 * safezoneW + safezoneX;
           y = 0.76 * safezoneH + safezoneY;
           w = 0.128906 * safezoneW;
           h = 0.033 * safezoneH;
       };
       class StoreAllItem : husky_RscButtonMenu
       {
           idc = -1;
           text = "Alles Lagern";
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           onbuttonclick = "[] call husky_fnc_vehStoreAllItem;";
           x = 0.515469 * safezoneW + safezoneX;
           y = 0.76 * safezoneH + safezoneY;
           w = 0.128906 * safezoneW;
           h = 0.033 * safezoneH;
       };
       class ButtonClose : husky_RscButtonMenu
       {
           idc = -1;
           text = "$STR_Global_Close";
           onbuttonclick = "closeDialog 0;";
           x = 0.237031 * safezoneW + safezoneX;
           y = 0.83 * safezoneH + safezoneY;
           w = 0.108281 * safezoneW;
           h = 0.033 * safezoneH;
           tooltip = "Schließen";
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
