/////////////////////////////////////////////////////////////////
/////////// This File was Edited by GUI D3V by Shinji ///////////
/////////////////////////////////////////////////////////////////
class shops_menu {
   idd = 38400;
   name = "shops_menu";
   movingenable = 0;
   enablesimulation = 1;
   class controlsBackground
   {
       class RscTitleBackground : husky_RscText
       {
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
           idc = -1;
           x = -0.0015625 * safezoneW + safezoneX;
           y = 0.153846153846154 * safezoneH + safezoneY;
           w = 0.459895833333333 * safezoneW;
           h = 0.0248101265822785 * safezoneH;
       };
       class MainBackground : husky_RscText
       {
           colorbackground[] = {0,0,0,0.698};
           idc = -1;
           x = -0.00104166666666667 * safezoneW + safezoneX;
           y = 0.179735150925025 * safezoneH + safezoneY;
           w = 0.458333333333333 * safezoneW;
           h = 0.397674780915287 * safezoneH;
       };
       class Title : husky_RscTitle
       {
           colorbackground[] = {0,0,0,0};
           idc = 38401;
           text = "V Item Shop";
           x = 0 * safezoneW + safezoneX;
           y = 0.153846153846154 * safezoneH + safezoneY;
           w = 0.457291666666667 * safezoneW;
           h = 0.0233690360272639 * safezoneH;
           class Attributes
			{
           font = "PuristaMedium";
           align = "center";
			};
       };
       class itemInfo : husky_RscText
       {
           idc = 38404;
           sizeex = 0.035;
           colorbackground[] = {0,0,0,0.7};
           x = 0.172395833333333 * safezoneW + safezoneX;
           y = 0.21811100292113 * safezoneH + safezoneY;
           w = 0.10625 * safezoneW;
           h = 0.338851022395326 * safezoneH;
       };
       class Pictrue : husky_RscStructuredText
       {
           idc = 38444;
           sizeex = 0.035;
           colorbackground[] = {0.31,0.31,0.31,0.898};
           x = 0.175833333333333 * safezoneW + safezoneX;
           y = 0.221032132424537 * safezoneH + safezoneY;
           w = 0.0986458333333333 * safezoneW;
           h = 0.148003894839338 * safezoneH;
       };
       class itemInfo_Text : husky_RscStructuredText
       {
           idc = 38445;
           sizeex = 0.035;
           colorbackground[] = {0,0,0,0.7};
           x = 0.175833333333333 * safezoneW + safezoneX;
           y = 0.371713729308666 * safezoneH + safezoneY;
           w = 0.098125 * safezoneW;
           h = 0.176484907497566 * safezoneH;
       };
       class Title0 : husky_RscTitle
       {
           colorbackground[] = {0,0,0,0};
           idc = 1003;
           text = "Shop Inventar";
           x = 0.00531250000000002 * safezoneW + safezoneX;
           y = 0.192794547224927 * safezoneH + safezoneY;
           w = 0.165 * safezoneW;
           h = 0.0233690360272639 * safezoneH;
           class Attributes
			{
           font = "PuristaMedium";
           align = "center";
			};
       };
       class Title00 : husky_RscTitle
       {
           colorbackground[] = {0,0,0,0};
           idc = 1004;
           text = "Dein Inventar";
           x = 0.280520833333333 * safezoneW + safezoneX;
           y = 0.192794547224927 * safezoneH + safezoneY;
           w = 0.165 * safezoneW;
           h = 0.0233690360272639 * safezoneH;
           class Attributes
			{
           font = "PuristaMedium";
           align = "center";
			};
       };
   };
   class controls
   {
       class itemListBuy : husky_RscTree
       {
           idc = 38403;
           sizeex = 0.035;
           ontreeselchanged = "_this call husky_fnc_virt_selection";
           x = 0.00531250000000002 * safezoneW + safezoneX;
           y = 0.21811100292113 * safezoneH + safezoneY;
           w = 0.165 * safezoneW;
           h = 0.31840311587147 * safezoneH;
       };
       class itemListSell : husky_RscTree
       {
           idc = 384444;
           sizeex = 0.035;
           ontreeselchanged = "_this call husky_fnc_virt_selectionSell";
           x = 0.280520833333333 * safezoneW + safezoneX;
           y = 0.21811100292113 * safezoneH + safezoneY;
           w = 0.165 * safezoneW;
           h = 0.31840311587147 * safezoneH;
       };
       class ButtonBuySell : husky_RscButtonMenu
       {
           idc = 38405;
           text = "$STR_Global_Buy";
           onbuttonclick = "[] call husky_fnc_virt_buy;";
           colorbackground[] = {0.871,0.118,0.322,1};
           x = 0.0177083333333333 * safezoneW + safezoneX;
           y = 0.577916260954235 * safezoneH + safezoneY;
           w = 0.113020833333333 * safezoneW;
           h = 0.0267575462512172 * safezoneH;
           class Attributes
			{
           font = "PuristaMedium";
           align = "center";
			};
       };
       class ButtonSellAll : husky_RscButtonMenu
       {
           idc = 38410;
           text = "Alles Verkaufen";
           onbuttonclick = "[]call husky_fnc_virt_sellAll;";
           colorbackground[] = {0.871,0.118,0.322,1};
           x = 0.309375 * safezoneW + safezoneX;
           y = 0.606874391431354 * safezoneH + safezoneY;
           w = 0.113020833333333 * safezoneW;
           h = 0.0267575462512172 * safezoneH;
           class Attributes
			{
           font = "PuristaMedium";
           align = "center";
			};
       };
       class ValueEditShopInv : husky_RscEdit
       {
           idc = 2405;
           text = "1";
           sizeex = 0.030;
           x = 0.00531250000000002 * safezoneW + safezoneX;
           y = 0.539191820837391 * safezoneH + safezoneY;
           w = 0.165 * safezoneW;
           h = 0.0197176241480036 * safezoneH;
           class Attributes
			{
           font = "PuristaMedium";
           align = "center";
			};
       };
       class ButtonClose : husky_RscButtonMenu
       {
           text = "$STR_Global_Close";
           onbuttonclick = "closeDialog 0;";
           colorbackground[] = {0.871,0.118,0.322,1};
           x = 0.168229166666667 * safezoneW + safezoneX;
           y = 0.577916260954235 * safezoneH + safezoneY;
           w = 0.113020833333333 * safezoneW;
           h = 0.0267575462512172 * safezoneH;
           idc = -1;
           class Attributes
			{
           font = "PuristaMedium";
           align = "center";
			};
       };
       class ButtonBuySellEC : husky_RscButtonMenu
       {
           idc = 38555;
           text = "$STR_Global_BuyEC";
           onbuttonclick = "[] spawn husky_fnc_virt_buy_ec;";
           colorbackground[] = {0,0.501960,0,1};
           x = 0.0177083333333333 * safezoneW + safezoneX;
           y = 0.606874391431354 * safezoneH + safezoneY;
           w = 0.113020833333333 * safezoneW;
           h = 0.0267575462512172 * safezoneH;
           class Attributes
			{
           font = "PuristaMedium";
           align = "center";
			};
       };
       class ValueEditInv : husky_RscEdit
       {
           idc = 24454;
           text = "1";
           sizeex = 0.030;
           x = 0.280520833333333 * safezoneW + safezoneX;
           y = 0.539191820837391 * safezoneH + safezoneY;
           w = 0.165 * safezoneW;
           h = 0.0197176241480036 * safezoneH;
       };
       class ButtonSell : husky_RscButtonMenu
       {
           idc = 38655;
           text = "$STR_Global_Sell";
           onbuttonclick = "[] call husky_fnc_virt_sell;";
           colorbackground[] = {0.871,0.118,0.322,1};
           x = 0.309375 * safezoneW + safezoneX;
           y = 0.577916260954235 * safezoneH + safezoneY;
           w = 0.113020833333333 * safezoneW;
           h = 0.0267575462512172 * safezoneH;
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
