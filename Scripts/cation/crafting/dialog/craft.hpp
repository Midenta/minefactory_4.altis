////////////////////////////////////////////////////////////////////////////
//////           This HPP was created by Shinji`s GUI tool            //////
//////           Minefactory.eu 							      //////
//////           Thieves										      //////
////////////////////////////////////////////////////////////////////////////
/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
class husky_craft {
   idd = 666;
   name = "husky_craft";
   movingenable = false;
   enablesimulation = true;
   onload = "";

   class controlsBackground
   {
       class husky_RscTitleBackground_bild : husky_RscPicture
       {
           idc = -1;
           text = "textures\Menus\TrunkPic.paa";
           x = -0.00208333333333333 * safezoneW + safezoneX;
           y = 0.122043519394513 * safezoneH + safezoneY;
           w = 1.00260416666667 * safezoneW;
           h = 0.790917691579943 * safezoneH;
       };
       class husky_RscTitleBackground : husky_RscText
       {
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
           idc = -1;
           x = 0.202604166666667 * safezoneW + safezoneX;
           y = 0.263386944181646 * safezoneH + safezoneY;
           w = 0.592708333333333 * safezoneW;
           h = 0.04 * safezoneH;
       };
       class MainBackground : husky_RscText
       {
           colorbackground[] = {0, 0, 0, 0.7};
           idc = -1;
           x = 0.202604166666667 * safezoneW + safezoneX;
           y = 0.307386944181646 * safezoneH + safezoneY;
           w = 0.592708333333333 * safezoneW;
           h = 0.479746452223273 * safezoneH;
       };
   };
   class controls
   {
       class Title : husky_RscTitle
       {
           colorbackground[] = {0, 0, 0, 0};
           idc = 667;
           text = "";
           x = 0.202604166666667 * safezoneW + safezoneX;
           y = 0.263386944181646 * safezoneH + safezoneY;
           w = 0.5734375 * safezoneW;
           h = 0.04 * safezoneH;
       };
       class craftListHeader : husky_RscText
       {
           idc = 668;
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           sizeex = 0.04;
           x = 0.207604166666667 * safezoneW + safezoneX;
           y = 0.323386944181646 * safezoneH + safezoneY;
           w = 0.212708333333333 * safezoneW;
           h = 0.04 * safezoneH;
       };
       class craftList : husky_RscListBox
       {
           idc = 669;
           sizeex = 0.030;
           onlbselchanged = "[] spawn cat_crafting_fnc_craft_update";
           x = 0.207604166666667 * safezoneW + safezoneX;
           y = 0.373386944181646 * safezoneH + safezoneY;
           w = 0.212708333333333 * safezoneW;
           h = 0.353197729422895 * safezoneH;
       };
       class materialListHeader : husky_RscText
       {
           idc = 670;
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           sizeex = 0.04;
           x = 0.424166666666667 * safezoneW + safezoneX;
           y = 0.323386944181646 * safezoneH + safezoneY;
           w = 0.205 * safezoneW;
           h = 0.04 * safezoneH;
       };
       class materialList : husky_RscControlsGroup
       {
           idc = 671;
           w = 0.205 * safezoneW;
           h = 0.353197729422895 * safezoneH;
           x = 0.424166666666667 * safezoneW + safezoneX;
           y = 0.373386944181646 * safezoneH + safezoneY;
           class Controls {
               class mats : husky_RscStructuredText
               {
               idc = 672;
               sizeex = 0.020;
               text = "";
               x = 0;
               y = 0;
               w = 0.27;
			   h = 0.44;
               };
           };
       };
       class FilterList : husky_RscCombo
       {
           idc = 673;
           colorbackground[] = {0,0,0,0.7};
           onlbselchanged = "[] call cat_crafting_fnc_craft_updateFilter";
           x = 0.634270833333333 * safezoneW + safezoneX;
           y = 0.373386944181646 * safezoneH + safezoneY;
           w = 0.15625 * safezoneW;
           h = 0.04 * safezoneH;
       };
       class ButtonCraft : husky_RscButtonMenu
       {
           idc = 674;
           text = "";
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           onbuttonclick = "if(!(husky_is_processing && husky_action_inUse)) then {[] spawn cat_crafting_fnc_craftAction};";
           x = 0.634270833333333 * safezoneW + safezoneX;
           y = 0.323386944181646 * safezoneH + safezoneY;
           w = 0.15625 * safezoneW;
           h = 0.04 * safezoneH;
       };
       class CloseButtonKey : husky_RscButtonMenu
       {
           idc = 675;
           text = "";
           onbuttonclick = "closeDialog 0;";
           x = 0.207604166666667 * safezoneW + safezoneX;
           y = 0.738240302743614 * safezoneH + safezoneY;
           w = 0.15625 * safezoneW;
           h = 0.04 * safezoneH;
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
