/*
    File: perm.hpp
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description:
    dialog for perm system 
*/
class Cat_perm_management {
   idd = 9500;
   name = "Cat_perm_management";
   movingenable = 0;
   enablesimulation = 1;
   class controlsBackground
   {
	   class husky_RscTitleBackground_hintergrund : husky_RscPicture
       {
           idc = -1;
           text = "textures\Menus\TrunkPic.paa";
           x = 0.0213541666666667 * safezoneW + safezoneX;
           y = 0.121097445600757 * safezoneH + safezoneY;
           w = 0.975 * safezoneW;
           h = 0.763481551561022 * safezoneH;
           colorbackground[] = {1,1,1,0};
       };
      /* class background : husky_RscPicture
       {
           shadow = 0;
           type = 0;
           style = 48;
           sizeex = 0.05;
           font = "PuristaMedium";
           text = "Scripts\cation\perm\tablet.paa";
           colorbackground[] = {};
           colortext[] = {};
           x = 0.167302452316076 * safezoneW + safezoneX;
           y = 0.0292237442922374 * safezoneH + safezoneY;
           w = 0.688828337874659 * safezoneW;
           h = 0.963470319634703 * safezoneH;
           tooltipcolortext[] = {1.1.1.1};
           tooltipcolorbox[] = {1.1.1.1};
           tooltipcolorshade[] = {0.0.0.0.65};
           idc = -1;
       };*/
   };
   class controls
   {
       class giveLicence : husky_RscText
       {
           idc = 9512;
           colorbackground[] = {0,0,0,0};
           colortext[] = {1,1,1,1};
           x = 0.272888283378747 * safezoneW + safezoneX;
           y = 0.635678674351585 * safezoneH + safezoneY;
           h = 0.037 * safezoneH;
           w = 0.0968596157809169 * safezoneW;
           colorshadow[] = {0,0,0,0.5};
           tooltipcolortext[] = {1,1,1,1};
           tooltipcolorbox[] = {1,1,1,1};
           tooltipcolorshade[] = {0,0,0,0.65};
           sizeex = 0.05;
           font = "PuristaMedium";
       };
       class giveMoney : husky_RscText
       {
           idc = 9515;
           colorbackground[] = {0,0,0,0};
           colortext[] = {1,1,1,1};
           x = 0.272888283378747 * safezoneW + safezoneX;
           y = 0.677945725264169 * safezoneH + safezoneY;
           h = 0.037 * safezoneH;
           w = 0.0968596157809169 * safezoneW;
           colorshadow[] = {0,0,0,0.5};
           tooltipcolortext[] = {1,1,1,1};
           tooltipcolorbox[] = {1,1,1,1};
           tooltipcolorshade[] = {0,0,0,0.65};
           sizeex = 0.05;
           font = "PuristaMedium";
       };
       class moneyEdit : husky_RscEdit
       {
           idc = 9516;
           text = "0";
           x = 0.371848739495798 * safezoneW + safezoneX;
           y = 0.677945725264169 * safezoneH + safezoneY;
           h = 0.0370000000000001 * safezoneH;
           w = 0.105567226890756 * safezoneW;
           sizeex = 0.05;
           font = "PuristaMedium";
       };
       class changeRank : husky_RscText
       {
           idc = 9509;
           colorbackground[] = {0,0,0,0};
           colortext[] = {1,1,1,1};
           x = 0.272888283378747 * safezoneW + safezoneX;
           y = 0.594372238232469 * safezoneH + safezoneY;
           h = 0.0370000000000001 * safezoneH;
           w = 0.0968596157809169 * safezoneW;
           colorshadow[] = {0,0,0,0.5};
           tooltipcolortext[] = {1,1,1,1};
           tooltipcolorbox[] = {1,1,1,1};
           tooltipcolorshade[] = {0,0,0,0.65};
           sizeex = 0.05;
           font = "PuristaMedium";
       };
       class playerName : husky_RscText
       {
           idc = 9503;
           colorbackground[] = {0,0,0,0};
           colortext[] = {1,1,1,1};
           x = 0.272888283378747 * safezoneW + safezoneX;
           y = 0.393707973102786 * safezoneH + safezoneY;
           h = 0.037 * safezoneH;
           w = 0.238970588235294 * safezoneW;
           colorshadow[] = {0,0,0,0.5};
           tooltipcolortext[] = {1,1,1,1};
           tooltipcolorbox[] = {1,1,1,1};
           tooltipcolorshade[] = {0,0,0,0.65};
           sizeex = 0.05;
           font = "PuristaMedium";
       };
       class licenceHeader : husky_RscText
       {
           idc = 9518;
           x = 0.51313025210084 * safezoneW + safezoneX;
           y = 0.352698165344822 * safezoneH + safezoneY;
           h = 0.037 * safezoneH;
           w = 0.231828875964555 * safezoneW;
           sizeex = 0.05;
           font = "PuristaSemiBold";
       };
       class name : husky_RscText
       {
           idc = 9502;
           colorbackground[] = {0,0,0,0};
           colortext[] = {1,1,1,1};
           x = 0.272888283378747 * safezoneW + safezoneX;
           y = 0.352698165344822 * safezoneH + safezoneY;
           h = 0.037 * safezoneH;
           w = 0.238970588235294 * safezoneW;
           colorshadow[] = {0,0,0,0.5};
           tooltipcolortext[] = {1,1,1,1};
           tooltipcolorbox[] = {1,1,1,1};
           tooltipcolorshade[] = {0,0,0,0.65};
           sizeex = 0.05;
           font = "PuristaSemiBold";
       };
       class header : husky_RscText
       {
           idc = 9501;
           x = 0.272888283378747 * safezoneW + safezoneX;
           y = 0.297716894977169 * safezoneH + safezoneY;
           h = 0.037 * safezoneH;
           w = 0.472384825864951 * safezoneW;
           font = "PuristaSemiBold";
           sizeex = 0.06;
       };
       class licenceDropdown : husky_RscCombo
       {
           x = 0.371848739495798 * safezoneW + safezoneX;
           y = 0.635678674351585 * safezoneH + safezoneY;
           w = 0.10609243697479 * safezoneW;
           h = 0.037 * safezoneH;
           idc = 9513;
           sizeex = 0.05;
           font = "PuristaMedium";
       };
       class rank : husky_RscText
       {
           idc = 9504;
           colorbackground[] = {0,0,0,0};
           colortext[] = {1,1,1,1};
           x = 0.272888283378747 * safezoneW + safezoneX;
           y = 0.434118004289869 * safezoneH + safezoneY;
           h = 0.037 * safezoneH;
           w = 0.238970588235294 * safezoneW;
           colorshadow[] = {0,0,0,0.5};
           tooltipcolortext[] = {1,1,1,1};
           tooltipcolorbox[] = {1,1,1,1};
           tooltipcolorshade[] = {0,0,0,0.65};
           sizeex = 0.05;
           font = "PuristaSemiBold";
       };
       class rankOk : Cat_RscButton
       {
           idc = 9511;
           x = 0.48017797037071 * safezoneW + safezoneX;
           y = 0.594372238232469 * safezoneH + safezoneY;
           w = 0.0310626702997274 * safezoneW;
           h = 0.0370000000000001 * safezoneH;
           onbuttonclick = "[3] call cat_perm_fnc_handleAction;";
           sizeex = 0.05;
           font = "PuristaMedium";
       };
       class playerRank : husky_RscText
       {
           idc = 9506;
           colorbackground[] = {0,0,0,0};
           colortext[] = {1,1,1,1};
           x = 0.272888283378747 * safezoneW + safezoneX;
           y = 0.47350321082205 * safezoneH + safezoneY;
           h = 0.0370000000000001 * safezoneH;
           w = 0.238666338469993 * safezoneW;
           colorshadow[] = {0,0,0,0.5};
           tooltipcolortext[] = {1,1,1,1};
           tooltipcolorbox[] = {1,1,1,1};
           tooltipcolorshade[] = {0,0,0,0.65};
           sizeex = 0.05;
           font = "PuristaMedium";
       };
       class rankDropdown : husky_RscCombo
       {
           x = 0.371848739495798 * safezoneW + safezoneX;
           y = 0.594372238232469 * safezoneH + safezoneY;
           w = 0.10609243697479 * safezoneW;
           h = 0.0370000000000001 * safezoneH;
           idc = 9510;
           sizeex = 0.05;
           font = "PuristaMedium";
       };
       class licenceOk : Cat_RscButton
       {
           idc = 9514;
           x = 0.48017797037071 * safezoneW + safezoneX;
           y = 0.635678674351585 * safezoneH + safezoneY;
           w = 0.0310626702997274 * safezoneW;
           h = 0.037 * safezoneH;
           onbuttonclick = "[1] call cat_perm_fnc_handleAction;";
           sizeex = 0.05;
           font = "PuristaMedium";
       };
       class moneyOk : Cat_RscButton
       {
           idc = 9517;
           x = 0.48017797037071 * safezoneW + safezoneX;
           y = 0.677945725264169 * safezoneH + safezoneY;
           w = 0.0310626702997274 * safezoneW;
           h = 0.037 * safezoneH;
           onbuttonclick = "[0] call cat_perm_fnc_handleAction;";
           sizeex = 0.05;
           font = "PuristaMedium";
       };
       class licences : Cat_RscListBox
       {
           x = 0.51313025210084 * safezoneW + safezoneX;
           y = 0.393852065321806 * safezoneH + safezoneY;
           w = 0.231828875964555 * safezoneW;
           h = 0.278578290105668 * safezoneH;
           idc = 9519;
           sizeex = 0.05;
           font = "PuristaMedium";
       };
       class licenceRemove : Cat_RscButton
       {
           idc = 9520;
           x = 0.51313025210084 * safezoneW + safezoneX;
           y = 0.677945725264169 * safezoneH + safezoneY;
           w = 0.231828875964555 * safezoneW;
           h = 0.0370000000000001 * safezoneH;
           onbuttonclick = "[2] call cat_perm_fnc_handleAction;";
           sizeex = 0.05;
           font = "PuristaMedium";
       };
       class moneyBank : husky_RscStructuredText
       {
           idc = 9508;
           colorbackground[] = {0,0,0,0};
           colortext[] = {1,1,1,1};
           x = 0.272888283378747 * safezoneW + safezoneX;
           y = 0.55402641690682 * safezoneH + safezoneY;
           h = 0.0370000000000001 * safezoneH;
           w = 0.238666338469993 * safezoneW;
           colorshadow[] = {0,0,0,0.5};
           tooltipcolortext[] = {1,1,1,1};
           tooltipcolorbox[] = {1,1,1,1};
           tooltipcolorshade[] = {0,0,0,0.65};
           sizeex = 0.05;
           size = 0.05;
           font = "PuristaMedium";
       };
       class moneyCash : husky_RscStructuredText
       {
           idc = 9507;
           colorbackground[] = {0,0,0,0};
           colortext[] = {1,1,1,1};
           x = 0.272888283378747 * safezoneW + safezoneX;
           y = 0.513680595581172 * safezoneH + safezoneY;
           h = 0.0370000000000001 * safezoneH;
           w = 0.238666338469993 * safezoneW;
           colorshadow[] = {0,0,0,0.5};
           tooltipcolortext[] = {1,1,1,1};
           tooltipcolorbox[] = {1,1,1,1};
           tooltipcolorshade[] = {0,0,0,0.65};
           sizeex = 0.05;
           size = 0.05;
           font = "PuristaMedium";
       };
       class data : husky_RscStructuredText
       {
           idc = 9521;
           colorbackground[] = {0,0,0,0};
           colortext[] = {1,1,1,1};
           x = 0.272888283378747 * safezoneW + safezoneX;
           y = 0.434118004289869 * safezoneH + safezoneY;
           h = 0.11812768328593 * safezoneH;
           w = 0.471511627906977 * safezoneW;
           colorshadow[] = {0,0,0,0.5};
           tooltipcolortext[] = {1,1,1,1};
           tooltipcolorbox[] = {1,1,1,1};
           tooltipcolorshade[] = {0,0,0,0.65};
           sizeex = 0.1;
           size = 0.1;
           font = "PuristaSemiBold";
       };
   };
};