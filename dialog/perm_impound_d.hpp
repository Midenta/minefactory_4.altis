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
class perm_impound_dialog {
   idd = 8600;
   name = "perm_impound_dialog";
   movingenable = 0;
   enablesimulation = 1;

   class controlsBackground
   {
       class husky_RscTitleBackground : husky_RscPicture
       {
           idc = -1;
           text = "textures\Menus\TrunkPic.paa";
           x = 0.152083333333333 * safezoneW + safezoneX;
           y = 0.496688741721854 * safezoneH + safezoneY;
           w = 0.713020833333333 * safezoneW;
           h = 0.359508041627247 * safezoneH;
       };
       class MainBackground : husky_RscText
       {
           colorbackground[] = {0, 0, 0, 0.7};
           idc = -1;
           x = 0.3015625 * safezoneW + safezoneX;
           y = 0.571341532639546 * safezoneH + safezoneY;
           w = 0.4125 * safezoneW;
           h = 0.212 * safezoneH;
       };
   };
   class controls
   {
       class InfoMsg_perm : husky_RscStructuredText
       {
           idc = 8601;
           sizeex = 0.020;
		   align = "center";
		   text = "Möchtest du wirklich das Fahrzeug permanant beschlagnahmen?";
           x = 0.303125 * safezoneW + safezoneX;
           y = 0.571341532639546 * safezoneH + safezoneY;
           w = 0.411979166666667 * safezoneW;
           h = 0.12 * safezoneH;
       };
       class payTicket : husky_RscButtonMenu
       {
           text = "$STR_vInAct_ImpoundPerm";
           onbuttonclick = "closeDialog 0;[husky_vInact_curTarget] spawn husky_fnc_impoundPermAction;";
           x = 0.331604166666667 * safezoneW + safezoneX;
           y = 0.707341532639546 * safezoneH + safezoneY;
           w = 0.15625 * safezoneW;
           h = 0.04 * safezoneH;
       };
       class refuseTicket : husky_RscButtonMenu
       {
           text = "SCHLIESSEN";
           onbuttonclick = "closeDialog 0;";
           x = 0.531604166666667 * safezoneW + safezoneX;
           y = 0.707341532639546 * safezoneH + safezoneY;
           w = 0.15625 * safezoneW;
           h = 0.04 * safezoneH;
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
