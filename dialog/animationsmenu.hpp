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
class brizi_moves_menu {
   idd = 2900;
   name = "brizi_moves_menu";
   movingenable = false;
   enablesimulation = true;
   onload = "[] spawn husky_fnc_animation;";
   class controlsBackground
   {
	   class MainBackground : husky_RscPicture
       {
           idc = -1;
           text = "textures\Menus\TrunkPic.paa";
           x = 0.690104166666667 * safezoneW + safezoneX;
           y = -0.043519394512772 * safezoneH + safezoneY;
           w = 0.373958333333333 * safezoneW;
           h = 1.05771050141911 * safezoneH;
       };
       class RscTitleBackground : husky_RscText
       {
           idc = -1;
           text = "";
           colorbackground[] = {0,0,0,0.7};
           x = 0.775304166666667 * safezoneW + safezoneX;
           y = 0.124119180700095 * safezoneH + safezoneY;
           w = 0.207966 * safezoneW;
           h = 0.724234 * safezoneH;
       };
   };
   class controls
   {
       class Title : husky_RscTitle
       {
           colorbackground[] = {0, 0, 0, 0};
           idc = 2901;
           text = "Huskys-Animation";
           x = 0.783302166666667 * safezoneW + safezoneX;
           y = 0.141120180700095 * safezoneH + safezoneY;
           w = 0.180783 * safezoneW;
           h = 0.0476017 * safezoneH;
		    class Attributes 
            {
                align = "center";
            };

       };
       class movesList : husky_RscListBox
       {
           idc = 2902;
           text = "";
           sizeex = 0.035;
           x = 0.783302166666667 * safezoneW + safezoneX;
           y = 0.209123180700095 * safezoneH + safezoneY;
           w = 0.179183 * safezoneW;
           h = 0.499805 * safezoneH;
       };
       class CloseDialogAnimation : husky_RscButtonMenu
       {
           idc = -1;
           onbuttonclick = "closeDialog 0;";
           text = "Schliessen";
           x = 0.783302166666667 * safezoneW + safezoneX;
           y = 0.787149180700095 * safezoneH + safezoneY;
           w = 0.180783 * safezoneW;
           h = 0.0442015 * safezoneH;
           tooltip = "Schliessen";
		   class Attributes 
            {
                align = "center";
            };

       };

       class MoveAusfuhren : husky_RscButtonMenu
       {
           idc = -1;
           text = "Starten";
           onbuttonclick = "if (vehicle player != player) exitwith { closeDialog 0; };_move = lbData[2902,lbCurSel (2902)];_move = call compile format[""%1"", _move]; player playMove _move; closeDialog 0;";
           x = 0.783302166666667 * safezoneW + safezoneX;
           y = 0.729346180700095 * safezoneH + safezoneY;
           w = 0.180783 * safezoneW;
           h = 0.0442015 * safezoneH;
		    class Attributes 
            {
                align = "center";
            };

       };

   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
