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
class LicenseShop {
   idd = 5546;
   name = "LicenseShop";
   movingenable = false;
   enablesimulation = true;
   onload = "uiNamespace setVariable [""LicenseShop"", _this select 0];";
   class controlsBackground
   {
       class husky_RscTitleBackground : husky_RscPicture
       {
           idc = 1106;
           text = "textures\Menus\TrunkPic.paa";
           x = 0.131770833333333 * safezoneW + safezoneX;
           y = 0.207492 * safezoneH + safezoneY;
           w = 0.703645833333333 * safezoneW;
           h = 0.538014149479659 * safezoneH;
       };
       class MyLicenses : husky_RscText
       {
           idc = 55130;
           text = "Verfügbar";
           x = 0.2765625 * safezoneW + safezoneX;
           y = 0.313484147587512 * safezoneH + safezoneY;
           w = 0.074492 * safezoneW;
           h = 0.027917 * safezoneH;
           sizeex = 0.05;
       };
       class ShowLicenses : husky_RscText
       {
           idc = 55129;
           text = "Meine Lizenzen";
           x = 0.488020833333333 * safezoneW + safezoneX;
           y = 0.313366147587512 * safezoneH + safezoneY;
           w = 0.074492 * safezoneW;
           h = 0.028154 * safezoneH;
           sizeex = 0.05;
       };
   };
   class controls
   {
       class listbox : husky_RscListbox
       {
           idc = 55126;
           x = 0.2765625 * safezoneW + safezoneX;
           y = 0.343533 * safezoneH + safezoneY;
           w = 0.199479166666667 * safezoneW;
           h = 0.268769 * safezoneH;
           sizeex = 0.035;
       };
       class ShowLicenseslistbox : husky_RscListbox
       {
           idc = 55131;
           x = 0.488020833333333 * safezoneW + safezoneX;
           y = 0.343533 * safezoneH + safezoneY;
           w = 0.201415666666667 * safezoneW;
           h = 0.268769 * safezoneH;
           sizeex = 0.035;
       };
       class buybutton : husky_RscButtonMenu
       {
           idc = 55127;
           text = "$STR_Global_Buy";
           x = 0.451118333333333 * safezoneW + safezoneX;
           y = 0.63197729422895 * safezoneH + safezoneY;
           w = 0.085431 * safezoneW;
           h = 0.0304817057710501 * safezoneH;
           colorbackground[] = {0,0.501960,0,1};
           action = "if ( (lbData[55126,lbCurSel (55126)] != """") ) then { [false, false, false, lbData[55126,lbCurSel (55126)]] call husky_fnc_buyLicense; closeDialog 0; }; 1.5 fadeMusic 0; playMusic """";";
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
