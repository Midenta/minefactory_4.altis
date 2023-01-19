////////////////////////////////////////////////////////////////////////////
//////           This HPP was created by Shinji`s GUI tool            //////
//////           Minefactory.eu 							      //////
//////           Thieves										      //////
////////////////////////////////////////////////////////////////////////////
/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
class polizeicomputer_med {
   idd = 670080;
   name = "polizeicomputer_med";
   movingenable = false;
   enablesimulation = true;

   class controlsBackground
   {
       class hintergrundbild : husky_RscPicture
       {
           idc = 1106;
           text = "textures\Menus\TrunkPic.paa";
           x = -0.169270833333333 * safezoneW + safezoneX;
           y = -0.105014191106906 * safezoneH + safezoneY;
           w = 1.34947916666667 * safezoneW;
           h = 1.21097445600757 * safezoneH;
       };
       class IGUIBack_2200 : husky_RscText
       {
           idc = 670081;
           x = 0.111979166666667 * safezoneW + safezoneX;
           y = 0.0946073793755913 * safezoneH + safezoneY;
           w = 0.7890625 * safezoneW;
           h = 0.83822138126774 * safezoneH;
           colorbackground[] = {0,0,0,0.3};
       };
       class RscStructuredText_1100 : husky_RscStructuredText
       {
           idc = 670082;
           text = "<t size='1' align='center'>Infos</t>";
           x = 0.152083333333334 * safezoneW + safezoneX;
           y = 0.383159886471145 * safezoneH + safezoneY;
           w = 0.224479166666667 * safezoneW;
           h = 0.0416272469252602 * safezoneH;
           colorbackground[] = {0,0,0,0.5};
       };
       class RscStructuredText_1101 : husky_RscStructuredText
       {
           idc = 670083;
           x = 0.402083333333334 * safezoneW + safezoneX;
           y = 0.226111636707663 * safezoneH + safezoneY;
           w = 0.469791666666666 * safezoneW;
           h = 0.384105960264901 * safezoneH;
           colorbackground[] = {0,0,0,0.3};
       };
       class RscStructuredText_1102 : husky_RscStructuredText
       {
           idc = 670084;
           text = "<t size='1' align='center'>Infos</t>";
           x = 0.401041666666667 * safezoneW + safezoneX;
           y = 0.183538315988648 * safezoneH + safezoneY;
           w = 0.471354166666667 * safezoneW;
           h = 0.035 * safezoneH;
           colorbackground[] = {0,0,0,0.5};
       };
       class RscStructuredText_1103 : husky_RscStructuredText
       {
           idc = 670085;
           text = "<t size='1' align='center'>Infos über den Patienten</t>";
           x = 0.152083333333333 * safezoneW + safezoneX;
           y = 0.184484389782403 * safezoneH + safezoneY;
           w = 0.216145833333333 * safezoneW;
           h = 0.035 * safezoneH;
           colorbackground[] = {0,0,0,0.5};
       };
       class RscStructuredText_1104 : husky_RscStructuredText
       {
           idc = 670086;
           text = "<t size='1' align='center'>Name:</t>";
           x = 0.152083333333333 * safezoneW + safezoneX;
           y = 0.226111636707663 * safezoneH + safezoneY;
           w = 0.1 * safezoneW;
           h = 0.035 * safezoneH;
           colorbackground[] = {0,0,0,0.5};
       };
       class RscStructuredText_1105 : husky_RscStructuredText
       {
           idc = 670087;
           text = "<t size='1' align='center'>Status:<t>";
           x = 0.402083333333334 * safezoneW + safezoneX;
           y = 0.654683065279092 * safezoneH + safezoneY;
           w = 0.1 * safezoneW;
           h = 0.035 * safezoneH;
           colorbackground[] = {0,0,0,0.5};
       };
       class RscCombo_2102 : husky_RscCombo
       {
           idc = 671111;
           x = 0.6203125 * safezoneW + safezoneX;
           y = 0.654683065279092 * safezoneH + safezoneY;
           w = 0.12 * safezoneW;
           h = 0.035 * safezoneH;
       };
       class RscStructuredText_1109 : husky_RscStructuredText
       {
           idc = 670091;
           text = "unbekannt";
           x = 0.510416666666667 * safezoneW + safezoneX;
           y = 0.654683065279092 * safezoneH + safezoneY;
           w = 0.1 * safezoneW;
           h = 0.035 * safezoneH;
           colorbackground[] = {0,0,0,0.5};
       };
       class RscStructuredText_1106 : husky_RscStructuredText
       {
           idc = 670088;
           text = "<t size='1' align='center'>Im Gefängnis:</t>";
           x = 0.152083333333333 * safezoneW + safezoneX;
           y = 0.315988647114475 * safezoneH + safezoneY;
           w = 0.1 * safezoneW;
           h = 0.035 * safezoneH;
           colorbackground[] = {0,0,0,0.5};
       };
       class RscStructuredText_1107 : husky_RscStructuredText
       {
           idc = 670089;
           text = "<t size='1' align='center'>Wird Gesucht:</t>";
           x = 0.152083333333333 * safezoneW + safezoneX;
           y = 0.271523178807947 * safezoneH + safezoneY;
           w = 0.1 * safezoneW;
           h = 0.035 * safezoneH;
           colorbackground[] = {0,0,0,0.5};
       };
       class RscStructuredText_1108 : husky_RscStructuredText
       {
           idc = 670090;
           text = "Max Mustermann";
           x = 0.268229166666667 * safezoneW + safezoneX;
           y = 0.225165562913907 * safezoneH + safezoneY;
           w = 0.1 * safezoneW;
           h = 0.035 * safezoneH;
           colorbackground[] = {0,0,0,0.5};
       };
       class RscStructuredText_1110 : husky_RscStructuredText
       {
           idc = 670092;
           text = "nicht im Gefängnis";
           x = 0.269270833333334 * safezoneW + safezoneX;
           y = 0.315042573320719 * safezoneH + safezoneY;
           w = 0.1 * safezoneW;
           h = 0.035 * safezoneH;
           colorbackground[] = {0,0,0,0.5};
       };
       class RscStructuredText_1111 : husky_RscStructuredText
       {
           idc = 670093;
           text = "nicht Gesucht";
           x = 0.269270833333333 * safezoneW + safezoneX;
           y = 0.269631031220436 * safezoneH + safezoneY;
           w = 0.1 * safezoneW;
           h = 0.035 * safezoneH;
           colorbackground[] = {0,0,0,0.5};
       };
       class IGUIBack_2201 : husky_RscText
       {
           idc = -1;
           text = "Fahrzeug Computer";
           x = 0.151041666666667 * safezoneW + safezoneX;
           y = 0.120151371807001 * safezoneH + safezoneY;
           w = 0.721354166666666 * safezoneW;
           h = 0.0426764427625361 * safezoneH;
           colorbackground[] = {0.254901960784314,0.411764705882353,0.882352941176471,1};
       };
   };
   class controls
   {
       class RscListbox_1501 : husky_RscListbox
       {
           idc = 670095;
           x = 0.152083333333333 * safezoneW + safezoneX;
           y = 0.438978240302744 * safezoneH + safezoneY;
           w = 0.225520833333333 * safezoneW;
           h = 0.469252601702933 * safezoneH;
           onlbselchanged = "_this call husky_fnc_textinfo_med";
           sizeex = 0.04;
           colortext[] = {1,1,1,1};
       };
       class RscButtonMenuCancel_2700 : husky_RscButtonMenu
       {
			text = "Schließen";
           x = 0.747395833333334 * safezoneW + safezoneX;
           y = 0.853358561967833 * safezoneH + safezoneY;
           w = 0.095589 * safezoneW;
           h = 0.039216 * safezoneH;
           onbuttonclick = "closedialog 0;";
       };
       class RscButtonMenu_2400 : husky_RscButtonMenu
       {
           idc = 670096;
           text = "Bericht schreiben";
           x = 0.400000000000001 * safezoneW + safezoneX;
           y = 0.853358561967833 * safezoneH + safezoneY;
           w = 0.122395833333333 * safezoneW;
           h = 0.039216 * safezoneH;
           onbuttonclick = "closedialog 0; createDialog ""Polizeibericht_med"";";
       };
       class RscButtonMenu_2401 : husky_RscButtonMenu
       {
           idc = 670097;
           text = "Straftat löschen";
           x = 0.636458333333334 * safezoneW + safezoneX;
           y = 0.853358561967833 * safezoneH + safezoneY;
           w = 0.095589 * safezoneW;
           h = 0.039216 * safezoneH;
           onbuttonclick = "closeDialog 0;[] call husky_fnc_pcdbdelete_med;";
       };
       class RscButtonMenu_1441 : husky_RscButtonMenu
       {
           idc = 671197;
           text = "Status ändern";
           x = 0.747395833333334 * safezoneW + safezoneX;
           y = 0.652790917691579 * safezoneH + safezoneY;
           w = 0.095589 * safezoneW;
           h = 0.039216 * safezoneH;
           onbuttonclick = "closeDialog 0;[] call husky_fnc_statusupdate_med;";
       };
	   /*class fahndung : husky_RscButtonMenu
       {
           idc = 2012;
           text = "$STR_PM_WantedList";
           onbuttonclick = "[] call husky_fnc_wantedMenu;";
           x = 0.400000000000001 * safezoneW + safezoneX;
           y = 0.72116778051088 * safezoneH + safezoneY;
           w = 0.122395833333333 * safezoneW;
           h = 0.039216 * safezoneH;
       };*/
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
