////////////////////////////////////////////////////////////////////////////
//////           This HPP was created by Shinji`s GUI tool            //////
//////           Minefactory.eu 								  //////
//////           Thieves										      //////
////////////////////////////////////////////////////////////////////////////
/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
class siren_Menu {
   idd = 237400;
   name = "siren_Menu";
   movingenable = 0;
   enablesimulation = 1;

   class controlsBackground
   {
       class hintergrund : husky_RscPicture
       {
           idc = 1110;
           text = "textures\Menus\TrunkPic.paa";
           x = 0.352604166666667 * safezoneW + safezoneX;
           y = 0.165562913907285 * safezoneH + safezoneY;
           w = 0.254166666666667 * safezoneW;
           h = 0.620624408703879 * safezoneH;
       };
       class Title : husky_RscTitle
       {
           idc = 37401;
           text = "Sirenen Menu";
           x = 0.4234375 * safezoneW + safezoneX;
           y = 0.27608103500473 * safezoneH + safezoneY;
           w = 0.113437 * safezoneW;
           h = 0.033 * safezoneH;
           colortext[] = {255,255,255,1};
           colorbackground[] = {0,0,0,0.4};
           sizeex = 0.052;
       };
	   class MainBackground : husky_RscText
       {
           idc = -1;
           x = 0.4232815 * safezoneW + safezoneX;
           y = 0.31185903500473 * safezoneH + safezoneY;
           w = 0.113437 * safezoneW;
           h = 0.33147114474929 * safezoneH;
           colorbackground[] = {0,0,0,0.4};
       };
   };
   class controls
   {
       
       class ButtonClose : husky_RscButtonMenu
       {
           text = "$STR_Global_Close";
           onbuttonclick = "closeDialog 0;";
           x = 0.422760666666667 * safezoneW + safezoneX;
           y = 0.644456953642384 * safezoneH + safezoneY;
           w = 0.113437 * safezoneW;
           h = 0.0291475875118257 * safezoneH;
           colorbackground[] = {0,0,0,0.4};
           idc = 1000;
       };
       class ButtonOne : husky_RscButtonMenu
       {
           idc = 237450;
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           text = "Kontrolle";
           tooltip = "Verkehrskontrollen Ansage";
           onbuttonclick = "[] spawn husky_fnc_copsiren3; closeDialog 0;";
           x = 0.4284375 * safezoneW + safezoneX;
           y = 0.32285903500473 * safezoneH + safezoneY;
           w = 0.103125 * safezoneW;
           h = 0.0300264900662252 * safezoneH;
       };
       class ButtonTwo : husky_RscButtonMenu
       {
           idc = 237451;
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           text = "Schuss";
           tooltip = "Schuss Ansage";
           onbuttonclick = "[] spawn husky_fnc_copsiren2; closeDialog 0;";
           x = 0.4284375 * safezoneW + safezoneX;
           y = 0.366378429517502 * safezoneH + safezoneY;
           w = 0.103125 * safezoneW;
           h = 0.0300264900662252 * safezoneH;
       };
       class ButtonThree : husky_RscButtonMenu
       {
           idc = 237452;
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           text = "Razzia";
           tooltip = "Razzia Ansage";
           onbuttonclick = "[] spawn husky_fnc_copsiren4; closeDialog 0;";
           x = 0.4284375 * safezoneW + safezoneX;
           y = 0.41084389782403 * safezoneH + safezoneY;
           w = 0.103125 * safezoneW;
           h = 0.0300264900662252 * safezoneH;
       };
       class ButtonFour : husky_RscButtonMenu
       {
           idc = 237453;
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           text = "Rechte";
           tooltip = "Noch nicht Aktiv";
		   //onbuttonclick = "[] spawn husky_fnc_copsiren6; closeDialog 0;";
           x = 0.4284375 * safezoneW + safezoneX;
           y = 0.454363292336802 * safezoneH + safezoneY;
           w = 0.103125 * safezoneW;
           h = 0.0300264900662252 * safezoneH;
       };
       class ButtonFive : husky_RscButtonMenu
       {
           idc = 237454;
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           text = "Troll";
           tooltip = "Troll Ansage";
            //onbuttonclick = "[] spawn husky_fnc_copsiren5; closeDialog 0;";
           x = 0.4284375 * safezoneW + safezoneX;
           y = 0.497882686849574 * safezoneH + safezoneY;
           w = 0.103125 * safezoneW;
           h = 0.0300264900662252 * safezoneH;
       };
       class ButtonSix : husky_RscButtonMenu
       {
           idc = 237455;
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           text = "Frei";
           tooltip = "";
           x = 0.4284375 * safezoneW + safezoneX;
           y = 0.543294228949858 * safezoneH + safezoneY;
           w = 0.103125 * safezoneW;
           h = 0.0300264900662252 * safezoneH;
       };
       class ButtonSeven : husky_RscButtonMenu
       {
           idc = 237456;
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           text = "Frei";
           tooltip = "";
           x = 0.4284375 * safezoneW + safezoneX;
           y = 0.584921475875118 * safezoneH + safezoneY;
           w = 0.103125 * safezoneW;
           h = 0.0300264900662252 * safezoneH;
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
