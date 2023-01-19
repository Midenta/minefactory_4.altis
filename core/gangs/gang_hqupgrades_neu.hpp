/////////////////////////////////////////////////////////////////
/////////// This File was Edited by GUI D3V by Shinji ///////////
/////////////////////////////////////////////////////////////////
class husky_gang_hqupgrades {
   idd = 220400;
   name = "husky_gang_hqupgrades";
   movingenable = 1;
   enablesimulation = 1;
   class controlsBackground
   {
       class RscText_1000 : husky_RscStructuredText
       {
           idc = -1;
           text = "<img image='\a3\3den\data\displays\display3den\entitymenu\garage_ca.paa'></img> HQ-Upgrades";
           x = 0.427604166666667 * safezoneW + safezoneX;
           y = 0.2998 * safezoneH + safezoneY;
           w = 0.1476215 * safezoneW;
           h = 0.0264 * safezoneH;
           colorbackground[] = {0.584314,0.647059,0.65098,0.6};
       };
       class RscText_1001 : husky_RscText
       {
           idc = -1;
           x = 0.428848666666667 * safezoneW + safezoneX;
           y = 0.3262 * safezoneH + safezoneY;
           w = 0.1456305 * safezoneW;
           h = 0.434443330179754 * safezoneH;
           colorbackground[] = {0.14902.0.196078.0.219608.0.9};
       };
       class RscText_1002 : husky_RscText
       {
           idc = -1;
           text = "$STR_aapps_gang_hq_upgrades";
           x = 0.431932 * safezoneW + safezoneX;
           y = 0.3339 * safezoneH + safezoneY;
           w = 0.137165 * safezoneW;
           h = 0.0264 * safezoneH;
           colorbackground[] = {0.584314,0.647059,0.65098,0.6};
       };
       class RscText_1003 : husky_RscText
       {
           idc = -1;
           x = 0.431938 * safezoneW + safezoneX;
           y = 0.3614 * safezoneH + safezoneY;
           w = 0.137674 * safezoneW;
           h = 0.359508230842006 * safezoneH;
           colorbackground[] = {0.584314,0.647059,0.65098,0.2};
       };
   };
   class controls
   {
       class RscButton_1604 : husky_RscButton
       {
           idc = -1;
           text = "$STR_aapps_gang_close";
           x = 0.428753 * safezoneW + safezoneX;
           y = 0.725841438032167 * safezoneH + safezoneY;
           w = 0.140517833333333 * safezoneW;
           h = 0.03058 * safezoneH;
           colorbackground[] = {0.14902,0.196078,0.219608,1};
           action = "closeDialog 0";
           type = 1;
           access = 0;
           colorshadow[] = {0,0,0,0};
       };
       class Upgradestemplate : husky_RscButton
       {
           idc = 220410;
           text = "";
           x = 0.435003 * safezoneW + safezoneX;
           y = 0.3702 * safezoneH + safezoneY;
           w = 0.130457 * safezoneW;
           h = 0.03058 * safezoneH;
           colorbackground[] = {0.14902,0.196078,0.219608,1};
           colorbackgrounddisabled[] = {0.14902,0.196078,0.219608,0.3};
           colordisabled[] = {1,1,1,1};
           action = "";
           type = 1;
           access = 0;
           colorshadow[] = {0,0,0,0};
       };
       class RscText_1006 : Upgradestemplate
       {
           idc = 220412;
           text = "";
           x = 0.434999 * safezoneW + safezoneX;
           y = 0.410644 * safezoneH + safezoneY;
           w = 0.130457 * safezoneW;
           h = 0.03058 * safezoneH;
       };
       class RscText_1007 : Upgradestemplate
       {
           idc = 220414;
           text = "";
           x = 0.435003 * safezoneW + safezoneX;
           y = 0.44874 * safezoneH + safezoneY;
           w = 0.130457 * safezoneW;
           h = 0.03058 * safezoneH;
       };
       class RscText_1008 : Upgradestemplate
       {
           idc = 220416;
           text = "";
           x = 0.435003 * safezoneW + safezoneX;
           y = 0.489 * safezoneH + safezoneY;
           w = 0.130457 * safezoneW;
           h = 0.03058 * safezoneH;
       };
       class RscText_1009 : Upgradestemplate
       {
           idc = 220418;
           text = "";
           x = 0.435003 * safezoneW + safezoneX;
           y = 0.52992 * safezoneH + safezoneY;
           w = 0.130457 * safezoneW;
           h = 0.03058 * safezoneH;
       };
       class buy_default : husky_RscButton
       {
           idc = 220411;
           text = "\a3\3den\data\attributes\edit\maximize_ca.paa";
           x = 0.548469 * safezoneW + safezoneX;
           y = 0.3702 * safezoneH + safezoneY;
           w = 0.0165002 * safezoneW;
           h = 0.0308 * safezoneH;
           action = "";
           type = 1;
           access = 0;
           colorshadow[] = {0,0,0,0};
           color[] = {1,1,1,1};
           colorbackground[] = {0.584314,0.647059,0.65098,0.6};
           colorbackgroundfocused[] = {0.584314,0.647059,0.65098,0.6};
           colorbackgroundactive[] = {0.584314,0.647059,0.65098,0.6};
           style = 48 + 0x800;
           offsetpressedx = 0;
           offsetpressedy = 0;
       };
       class RscText_1011 : buy_default
       {
           idc = 220413;
           x = 0.548525 * safezoneW + safezoneX;
           y = 0.410333 * safezoneH + safezoneY;
           w = 0.0165002 * safezoneW;
           h = 0.0308 * safezoneH;
           action = "";
       };
       class RscText_1012 : buy_default
       {
           idc = 220415;
           x = 0.548437 * safezoneW + safezoneX;
           y = 0.448642 * safezoneH + safezoneY;
           w = 0.0165002 * safezoneW;
           h = 0.0308 * safezoneH;
           action = "";
       };
       class RscText_1013 : buy_default
       {
           idc = 220417;
           x = 0.548469 * safezoneW + safezoneX;
           y = 0.489 * safezoneH + safezoneY;
           w = 0.0165002 * safezoneW;
           h = 0.0308 * safezoneH;
           action = "";
       };
       class RscText_1014 : buy_default
       {
           idc = 220419;
           x = 0.548469 * safezoneW + safezoneX;
           y = 0.52948 * safezoneH + safezoneY;
           w = 0.0165002 * safezoneW;
           h = 0.0308 * safezoneH;
           action = "";
       };
       class RscText_10090 : Upgradestemplate
       {
           idc = 220500;
           text = "";
           x = 0.435003 * safezoneW + safezoneX;
           y = 0.568437530747398 * safezoneH + safezoneY;
           w = 0.130457 * safezoneW;
           h = 0.0305799999999999 * safezoneH;
       };
       class RscText_100900 : Upgradestemplate
       {
           idc = 220501;
           text = "";
           x = 0.435003 * safezoneW + safezoneX;
           y = 0.606280482497635 * safezoneH + safezoneY;
           w = 0.130457 * safezoneW;
           h = 0.0305799999999999 * safezoneH;
       };
       class RscText_10140 : buy_default
       {
           idc = 220504;
           x = 0.548469 * safezoneW + safezoneX;
           y = 0.568437530747398 * safezoneH + safezoneY;
           w = 0.0165002 * safezoneW;
           h = 0.0308 * safezoneH;
           action = "";
       };
       class RscText_101400 : buy_default
       {
           idc = 220505;
           x = 0.548469 * safezoneW + safezoneX;
           y = 0.606280482497635 * safezoneH + safezoneY;
           w = 0.0165002 * safezoneW;
           h = 0.0308 * safezoneH;
           action = "";
       };
       class RscText_1009000 : Upgradestemplate
       {
           idc = 220502;
           text = "";
           x = 0.435003 * safezoneW + safezoneX;
           y = 0.64223128666036 * safezoneH + safezoneY;
           w = 0.130457 * safezoneW;
           h = 0.0305799999999999 * safezoneH;
       };
       class RscText_1014000 : buy_default
       {
           idc = 220506;
           x = 0.548469 * safezoneW + safezoneX;
           y = 0.64223128666036 * safezoneH + safezoneY;
           w = 0.0165002 * safezoneW;
           h = 0.0308 * safezoneH;
           action = "";
       };
       class RscText_10090000 : Upgradestemplate
       {
           idc = 220503;
           text = "";
           x = 0.435003 * safezoneW + safezoneX;
           y = 0.678182090823084 * safezoneH + safezoneY;
           w = 0.130457 * safezoneW;
           h = 0.0305799999999999 * safezoneH;
       };
       class RscText_10140000 : buy_default
       {
           idc = 220507;
           x = 0.548469 * safezoneW + safezoneX;
           y = 0.678182090823084 * safezoneH + safezoneY;
           w = 0.0165002 * safezoneW;
           h = 0.0308 * safezoneH;
           action = "";
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
