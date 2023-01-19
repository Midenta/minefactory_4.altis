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
class husky_cell_old_msgs {
   idd = 98111;
   name = "husky_cell_old_msgs";
   movingenable = 0;
   enablesimulation = 1;
   onload = "";
   class controlsBackground
   {
       class hintergrundbild : husky_RscPicture
       {
           idc = 1107;
           text = "textures\Menus\TrunkPic.paa";
           x = 0.1859375 * safezoneW + safezoneX;
           y = 0.195837275307474 * safezoneH + safezoneY;
           w = 0.5453125 * safezoneW;
           h = 0.684011352885525 * safezoneH;
       };
       class husky_RscTitleBackground : husky_RscText
       {
           idc = -1;
           text = "Nachrichten";
           x = 0.300520333333333 * safezoneW + safezoneX;
           y = 0.311588924587125 * safezoneH + safezoneY;
           w = 0.314531 * safezoneW;
           h = 0.0337013422818792 * safezoneH;
       };
       class MainBackground : husky_RscText
       {
           colorbackground[] = {0, 0, 0, 0.7};
           idc = -1;
           x = 0.300520333333333 * safezoneW + safezoneX;
           y = 0.348128488250271 * safezoneH + safezoneY;
           w = 0.314531 * safezoneW;
           h = 0.38255033557047 * safezoneH;
       };
       class FromBar : husky_RscText
       {
           idc = -1;
           text = "Von";
           x = 0.305677333333333 * safezoneW + safezoneX;
           y = 0.354269427847586 * safezoneH + safezoneY;
           w = 0.0979687 * safezoneW;
           h = 0.0381543624161074 * safezoneH;
       };
       class MessageBar : husky_RscText
       {
           idc = -1;
           text = "Nachricht";
           x = 0.411284468033187 * safezoneW + safezoneX;
           y = 0.352927145968392 * safezoneH + safezoneY;
           w = 0.194729136163982 * safezoneW;
           h = 0.0421812080536913 * safezoneH;
       };
   };
   class controls
   {
       class TextBox : husky_RscStructuredText
       {
           idc = 98113;
           x = 0.410552403611517 * safezoneW + safezoneX;
           y = 0.403162045297251 * safezoneH + safezoneY;
           w = 0.196193265007321 * safezoneW;
           h = 0.311409395973154 * safezoneH;
           colorbackground[] = {0,0,0,0.7};
       };
       class PlayerList : husky_RscListBox
       {
           idc = 98112;
           text = "";
           sizeex = 0.035;
           onlbselchanged = "[] call husky_fnc_lbChanged";
           x = 0.305677333333333 * safezoneW + safezoneX;
           y = 0.399135199659667 * safezoneH + safezoneY;
           w = 0.0979687 * safezoneW;
           h = 0.319463087248322 * safezoneH;
           colorbackground[] = {0,0,0,0.7};
       };
       class CloseButtonKey : husky_RscButtonMenu
       {
           idc = -1;
           text = "$STR_Global_Close";
           onbuttonclick = "closeDialog 0;";
           x = 0.553130295510005 * safezoneW + safezoneX;
           y = 0.741721854304636 * safezoneH + safezoneY;
           w = 0.0644530999999999 * safezoneW;
           h = 0.0284571377775515 * safezoneH;
       };
       class DeleteButton : husky_RscButtonMenu
       {
           idc = 98114;
           text = "Löschen";
           colorbackground[] = {0.7, 0, 0, 0.7};
           onbuttonclick = "[] spawn husky_fnc_deleteMessage";
           x = 0.371976268911664 * safezoneW + safezoneX;
           y = 0.741721854304636 * safezoneH + safezoneY;
           w = 0.0644531 * safezoneW;
           h = 0.0284571377775515 * safezoneH;
       };
       class ReplyButton : husky_RscButtonMenu
       {
           idc = 98115;
           text = "Antworten";
           colorbackground[] = {0.9,0.5,0.1,1};
           onbuttonclick = "[] spawn husky_fnc_replyMessage";
           x = 0.305677333333333 * safezoneW + safezoneX;
           y = 0.741721854304636 * safezoneH + safezoneY;
           w = 0.0644531 * safezoneW;
           h = 0.0284571377775515 * safezoneH;
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
