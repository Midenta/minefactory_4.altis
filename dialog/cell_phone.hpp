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
class husky_cell_phone {
   idd = 3000;
   name = "husky_cell_phone";
   movingenable = 0;
   enablesimulation = 1;
   onload = "[] spawn husky_fnc_cellphone";

   class controlsBackground
   {
       class hintergrund : husky_RscPicture
       {
           idc = 1110;
           text = "textures\Menus\TrunkPic.paa";
           x = 0.338541666666667 * safezoneW + safezoneX;
           y = 0.033112582781457 * safezoneH + safezoneY;
           w = 0.336458333333333 * safezoneW;
           h = 0.952696310312204 * safezoneH;
       };
       class husky_RscTitleBackground : husky_RscText
       {
           colorbackground[] = {0,0.501960784313725,0,1};
           idc = -1;
           x = 0.415517935578331 * safezoneW + safezoneX;
           y = 0.182994799768878 * safezoneH + safezoneY;
           w = 0.185002897755002 * safezoneW;
           h = 0.0442953020134228 * safezoneH;
       };
       class MainBackground : husky_RscText
       {
           colorbackground[] = {0, 0, 0, 0.7};
           idc = -1;
           x = 0.415517935578331 * safezoneW + safezoneX;
           y = 0.230281980786447 * safezoneH + safezoneY;
           w = 0.185002897755002 * safezoneW;
           h = 0.621476510067114 * safezoneH;
       };
       class SendTo : husky_RscText
       {
           idc = -1;
           text = "Senden an:";
           x = 0.421247102244998 * safezoneW + safezoneX;
           y = 0.483237350231438 * safezoneH + safezoneY;
           w = 0.131357064421669 * safezoneW;
           h = 0.0441476510067114 * safezoneH;
       };
   };
   class controls
   {
       class Title : husky_RscTitle
       {
           colorbackground[] = {0, 0, 0, 0};
           idc = 3001;
           text = "Handy";
           x = 0.415517935578331 * safezoneW + safezoneX;
           y = 0.184139129993078 * safezoneH + safezoneY;
           w = 0.185002897755002 * safezoneW;
           h = 0.0442953020134228 * safezoneH;
       };
       class TextToSend : husky_RscTitle
       {
           colorbackground[] = {0, 0, 0, 0};
           idc = 3002;
           text = "Nachricht:";
           x = 0.415517935578331 * safezoneW + safezoneX;
           y = 0.254148590731016 * safezoneH + safezoneY;
           w = 0.185002897755002 * safezoneW;
           h = 0.042738255033557 * safezoneH;
       };
       class textEdit : husky_RscEditMulti
       {
           idc = 3003;
           text = "";
           sizeex = 0.04;
           x = 0.415517935578331 * safezoneW + safezoneX;
           y = 0.297382550335569 * safezoneH + safezoneY;
           w = 0.183440397755002 * safezoneW;
           h = 0.180469798657718 * safezoneH;
       };
       class TextMsgButton : husky_RscButtonMenu
       {
           idc = 3015;
           text = "senden";
           onbuttonclick = "[] call TON_fnc_cell_textmsg";
           x = 0.425934602244998 * safezoneW + safezoneX;
           y = 0.548201113700291 * safezoneH + safezoneY;
           w = 0.076669564421669 * safezoneW;
           h = 0.0407114093959731 * safezoneH;
           colortext[] = {1,1,1,1};
           colorbackground[] = {0.9,0.5,0.1,1};
       };
       class PlayerList : husky_RscCombo
       {
           idc = 3004;
           x = 0.468642935578331 * safezoneW + safezoneX;
           y = 0.483237350231438 * safezoneH + safezoneY;
           w = 0.129273731088336 * safezoneW;
           h = 0.044 * safezoneH;
       };
       class TextCopButton : husky_RscButtonMenu
       {
           idc = 3016;
           text = "110  Notruf";
           onbuttonclick = "[] call TON_fnc_cell_textcop";
           x = 0.5078125 * safezoneW + safezoneX;
           y = 0.591309061355107 * safezoneH + safezoneY;
           w = 0.079934876769156 * safezoneW;
           h = 0.0407114093959731 * safezoneH;
           colortext[] = {1,1,1,1};
           colorbackground[] = {0,0,0.5,1};
       };
       class TextAdminButton : husky_RscButtonMenu
       {
           idc = 3017;
           text = "Admin Notruf";
           onbuttonclick = "[] call TON_fnc_cell_textadmin";
           x = 0.5078125 * safezoneW + safezoneX;
           y = 0.639558824836659 * safezoneH + safezoneY;
           w = 0.079934876769156 * safezoneW;
           h = 0.0407114093959731 * safezoneH;
           colortext[] = {1,1,1,1};
           colorbackground[] = {0.5,0,0,0.7};
       };
       class AdminMsgButton : husky_RscButtonMenu
       {
           idc = 3020;
           text = "private Admin-Nachricht";
           onbuttonclick = "[] call TON_fnc_cell_adminmsg";
           x = 0.425934602244998 * safezoneW + safezoneX;
           y = 0.686862514524455 * safezoneH + safezoneY;
           w = 0.079934876769156 * safezoneW;
           h = 0.0407114093959731 * safezoneH;
           colortext[] = {1,1,1,1};
           colorbackground[] = {0.5,0,0,0.7};
       };
       class AdminMsgAllButton : husky_RscButtonMenu
       {
           idc = 3021;
           text = "Admin Alle";
           onbuttonclick = "[] call TON_fnc_cell_adminmsgall";
           x = 0.425934602244998 * safezoneW + safezoneX;
           y = 0.730793355895182 * safezoneH + safezoneY;
           w = 0.0802083333333333 * safezoneW;
           h = 0.0407114093959731 * safezoneH;
           colortext[] = {1,1,1,1};
           colorbackground[] = {0.5,0,0,0.7};
       };
       class EMSRequest : husky_RscButtonMenu
       {
           idc = 3022;
           text = "112 Notruf";
           onbuttonclick = "[] call TON_fnc_cell_textmedic";
           x = 0.5078125 * safezoneW + safezoneX;
           y = 0.548201113700291 * safezoneH + safezoneY;
           w = 0.079934876769156 * safezoneW;
           h = 0.0407114093959731 * safezoneH;
           colortext[] = {1,1,1,1};
           colorbackground[] = {0,0.5,0,0.7};
       };
       class CloseButtonKey : husky_RscButtonMenu
       {
           text = "$STR_Global_Close";
           onbuttonclick = "closeDialog 0;";
           x = 0.425934602244998 * safezoneW + safezoneX;
           y = 0.805533185601899 * safezoneH + safezoneY;
           w = 0.071982064421669 * safezoneW;
           h = 0.0407114093959732 * safezoneH;
           idc = 1000;
       };
       class MessagesButtonKey : husky_RscButtonMenu
       {
           text = "alte Nachrichten";
           onbuttonclick = "[] spawn husky_fnc_messagesMenu";
           x = 0.425934602244998 * safezoneW + safezoneX;
           y = 0.591309061355107 * safezoneH + safezoneY;
           w = 0.076669564421669 * safezoneW;
           h = 0.0407114093959731 * safezoneH;
           colortext[] = {1,1,1,1};
           colorbackground[] = {0.9,0.5,0.1,1};
           idc = 1000;
       };
       class policealle : husky_RscButtonMenu
       {
           idc = 3025;
           text = "Polizei ALLE";
           onbuttonclick = "[] call TON_fnc_cell_copmsgall";
           x = 0.5078125 * safezoneW + safezoneX;
           y = 0.730793355895182 * safezoneH + safezoneY;
           w = 0.0802083333333333 * safezoneW;
           h = 0.0407114093959731 * safezoneH;
           colortext[] = {1,1,1,1};
           colorbackground[] = {0,0,0.5,1};
       };
       class emsalle : husky_RscButtonMenu
       {
           idc = 3026;
           text = "Feuerwehr ALLE";
           onbuttonclick = "[] call TON_fnc_cell_medicmsgall";
           x = 0.5078125 * safezoneW + safezoneX;
           y = 0.686862514524455 * safezoneH + safezoneY;
           w = 0.0802083333333333 * safezoneW;
           h = 0.0407114093959731 * safezoneH;
           colortext[] = {1,1,1,1};
           colorbackground[] = {0,0.5,0,0.7};
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
