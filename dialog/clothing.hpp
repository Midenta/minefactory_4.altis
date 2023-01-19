/////////////////////////////////////////////////////////////////
/////////// This File was Edited by GUI D3V by Shinji ///////////
/////////////////////////////////////////////////////////////////
class husky_Clothing {
   idd = 3100;
   name = "husky_Clothing";
   movingenable = 0;
   enablesimulation = 1;
   onload = "0 fadeMusic 1; playMusic ""LeadTrack01_F"";";
   onunload = "1.5 fadeMusic 0; playMusic """";";
   class controlsBackground
   {
       class RscTitleBackground : husky_RscText
       {
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
           idc = -1;
           x = -0.0015625 * safezoneW + safezoneX;
           y = 0.153846153846154 * safezoneH + safezoneY;
           w = 0.2296875 * safezoneW;
           h = 0.0248101265822785 * safezoneH;
       };
       class MainBackground : husky_RscText
       {
           colorbackground[] = {0,0,0,0.7};
           idc = -1;
           x = -0.000520833333333333 * safezoneW + safezoneX;
           y = 0.180708860759494 * safezoneH + safezoneY;
           w = 0.229166666666667 * safezoneW;
           h = 0.503809152872444 * safezoneH;
       };
       class Title : husky_RscTitle
       {
           colorbackground[] = {0,0,0,0};
           idc = 3103;
           text = "";
           x = -0.00104166666666667 * safezoneW + safezoneX;
           y = 0.154819863680623 * safezoneH + safezoneY;
           w = 0.2296875 * safezoneW;
           h = 0.0233690360272639 * safezoneH;
       };
       class itemInfo : husky_RscStructuredText
       {
           idc = 3111;
           sizeex = 0.035;
           colorbackground[] = {0,0,0,0.7};
           x = 0.232395833333333 * safezoneW + safezoneX;
           y = 0.182434274586173 * safezoneH + safezoneY;
           w = 0.159791666666667 * safezoneW;
           h = 0.388159688412853 * safezoneH;
       };
       class Pictrue : husky_RscStructuredText
       {
           idc = 3112;
           sizeex = 0.035;
           colorbackground[] = {0.31,0.31,0.31,0.898};
           x = 0.235729166666666 * safezoneW + safezoneX;
           y = 0.190847127555988 * safezoneH + safezoneY;
           w = 0.151770833333333 * safezoneW;
           h = 0.152872444011685 * safezoneH;
       };
       class itemInfo_Text : husky_RscStructuredText
       {
           idc = 3117;
           sizeex = 0.035;
           colorbackground[] = {0,0,0,0.7};
           x = 0.23625 * safezoneW + safezoneX;
           y = 0.347370983446933 * safezoneH + safezoneY;
           w = 0.15125 * safezoneW;
           h = 0.216407010710808 * safezoneH;
       };
       class PriceTag : husky_RscStructuredText
       {
           idc = 3102;
           sizeex = 0.035;
           x = 0.123541666666667 * safezoneW + safezoneX;
           y = 0.651687743914313 * safezoneH + safezoneY;
           w = 0.0936458333333333 * safezoneW;
           h = 0.0269880107108082 * safezoneH;
       };
       class TotalPrice : husky_RscStructuredText
       {
           idc = 3106;
           sizeex = 0.035;
           x = 0.00531250000000002 * safezoneW + safezoneX;
           y = 0.651411879259981 * safezoneH + safezoneY;
           w = 0.0926041666666666 * safezoneW;
           h = 0.0233690360272639 * safezoneH;
       };
   };
   class controls
   {
       class itemList : husky_RscTree
       {
           idc = 3101;
           sizeex = 0.035;
           ontreeselchanged = "[_this] call husky_fnc_changeClothes;[_this] call husky_fnc_clothingFilter;[_this] call husky_fnc_clothingSelection;";
           x = 0.00531250000000002 * safezoneW + safezoneX;
           y = 0.19255111976631 * safezoneH + safezoneY;
           w = 0.211354166666667 * safezoneW;
           h = 0.453992210321324 * safezoneH;
       };
       class BuyButtonKey : husky_RscButtonMenu
       {
           text = "$STR_Global_Buy";
           onbuttonclick = "[] call husky_fnc_buyClothes;";
           colorbackground[] = {0,0.501960,0,1};
           x = -0.00104166666666667 * safezoneW + safezoneX;
           y = 0.685998052580331 * safezoneH + safezoneY;
           w = 0.113020833333333 * safezoneW;
           h = 0.0267575462512172 * safezoneH;
           idc = -1;
		   class Attributes
       {
           font = "PuristaMedium";
           align = "center";
       };
       };
       class ButtonClose : husky_RscButtonMenu
       {
           text = "$STR_Global_Close";
           onbuttonclick = "closeDialog 0; [player, uniform player] call husky_fnc_playerSkins;";
           colorbackground[] = {1,0,0,1};
           x = 0.115625 * safezoneW + safezoneX;
           y = 0.685998052580331 * safezoneH + safezoneY;
           w = 0.113020833333333 * safezoneW;
           h = 0.0267575462512172 * safezoneH;
           idc = -1;
		   class Attributes
       {
           font = "PuristaMedium";
           align = "center";
       };
       };
       class viewAngle : husky_RscXSliderH
       {
           color[] = {1, 1, 1, 0.45};
           coloractive[] = {1, 1, 1, 0.65};
           idc = 3107;
           text = "";
           onsliderposchanged = "[4,_this select 1] call husky_fnc_s_onSliderChange;";
           tooltip = "";
           x = 0.25 * safezoneW + safezoneX;
           y = 0.93 * safezoneH + safezoneY;
           w = 0.5 * safezoneW;
           h = 0.02 * safezoneH;
       };
       class BuyButtonBuyEC : husky_RscButtonMenu
       {
           text = "$STR_Global_BuyEC";
           onbuttonclick = "[] call husky_fnc_buyClothesEC;";
           colorbackground[] = {0,0.501960,0,1};
           x = -0.00104166666666667 * safezoneW + safezoneX;
           y = 0.717877312560857 * safezoneH + safezoneY;
           w = 0.113020833333333 * safezoneW;
           h = 0.0267575462512172 * safezoneH;
           idc = -1;
           class Attributes
           {
               font = "PuristaMedium";
               align = "center";
           };
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
