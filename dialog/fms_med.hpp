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
class fms_med {
   idd = 890010;
   name = "fms_med";
   movingenable = 0;
   enablesimulation = 1;

   class controlsBackground
   {
       class hintergrundbild : husky_RscPicture
       {
           idc = 81106;
           text = "textures\Menus\TrunkPic.paa";
           x = 0.0239583333333333 * safezoneW + safezoneX;
           y = 0.0605487228003784 * safezoneH + safezoneY;
           w = 0.9234375 * safezoneW;
           h = 0.855250709555345 * safezoneH;
       };
       class MainBackground : husky_RscText
       {
           idc = -1;
           x = 0.211458333333333 * safezoneW + safezoneX;
           y = 0.24 * safezoneH + safezoneY;
           w = 0.550520833333333 * safezoneW;
           h = 0.546187322611164 * safezoneH;
           colorbackground[] = {0,0,0,0.4};
       };
       class Title : husky_RscText
       {
           idc = -1;
           text = "Funkmeldesystem - FMS";
           x = 0.209895833333333 * safezoneW + safezoneX;
           y = 0.191424 * safezoneH + safezoneY;
           w = 0.552604166666667 * safezoneW;
           h = 0.04 * safezoneH;
           colortext[] = {255,255,255,1};
           colorbackground[] = {0,0,0,0.4};
           sizeex = 0.0509289;
       };
       class Buttonhinzufuegen : husky_RscButtonMenu
       {
           idc = -1;
           onbuttonclick = "[3] call husky_fnc_fms_med;";
           text = "Hinzufuegen";
           x = 0.217708333333333 * safezoneW + safezoneX;
           y = 0.725676442762535 * safezoneH + safezoneY;
           w = 0.0875 * safezoneW;
           h = 0.04 * safezoneH;
           colortext[] = {255,255,255,1};
           colorbackground[] = {0,0,0,0.4};
           tooltip = "Fuegt dich zu einer ausgewaehlten Streife hinzu";
           sizeex = 0.0363778;
       };
       class ButtonClose : husky_RscButtonMenu
       {
           idc = -1;
           onbuttonclick = "closeDialog 0;";
           text = "Schliessen";
           x = 0.672916666666667 * safezoneW + safezoneX;
           y = 0.734191106906339 * safezoneH + safezoneY;
           w = 0.0875 * safezoneW;
           h = 0.04 * safezoneH;
           colortext[] = {255,255,255,1};
           colorbackground[] = {0,0,0,0.4};
           sizeex = 0363778;
       };
       class ButtonRemove : husky_RscButtonMenu
       {
           idc = -1;
           onbuttonclick = "[4] call husky_fnc_fms_med;";
           text = "Entfernen";
           x = 0.306770833333333 * safezoneW + safezoneX;
           y = 0.725676442762535 * safezoneH + safezoneY;
           w = 0.0875 * safezoneW;
           h = 0.04 * safezoneH;
           colortext[] = {255,255,255,1};
           colorbackground[] = {0,0,0,0.4};
           tooltip = "Entfernt dich aus deiner momentanen Streife";
           sizeex = 0.0363778;
       };
       class TextStreifen : husky_RscText
       {
           idc = -1;
           text = "Streifen";
           x = 0.217708333333333 * safezoneW + safezoneX;
           y = 0.26 * safezoneH + safezoneY;
           w = 0.175 * safezoneW;
           h = 0.02 * safezoneH;
           colortext[] = {255,255,255,1};
           colorbackground[] = {0,0,0,0.4};
           sizeex = 0.0363778;
       };
       class TextUnits : husky_RscText
       {
           idc = -1;
           text = "Zugeteilte Einheiten";
           x = 0.4046875 * safezoneW + safezoneX;
           y = 0.26 * safezoneH + safezoneY;
           w = 0.175 * safezoneW;
           h = 0.02 * safezoneH;
           colortext[] = {255,255,255,1};
           colorbackground[] = {0,0,0,0.4};
           sizeex = 0.0363778;
       };
       class TextBeschreibung : husky_RscText
       {
           idc = -1;
           text = "Beschreibung";
           x = 0.588541666666667 * safezoneW + safezoneX;
           y = 0.26 * safezoneH + safezoneY;
           w = 0.1671875 * safezoneW;
           h = 0.02 * safezoneH;
           colortext[] = {255,255,255,1};
           colorbackground[] = {0,0,0,0.4};
           sizeex = 0.0363778;
       };
   };
   class controls
   {
       class ListboxStreifen : husky_RscListBox
       {
           idc = 890011;
           x = 0.217708333333333 * safezoneW + safezoneX;
           y = 0.28 * safezoneH + safezoneY;
           w = 0.175 * safezoneW;
           h = 0.44 * safezoneH;
           colortext[] = {255,255,255,1};
           colorbackground[] = {0,0,0,0.4};
           sizeex = 0.0436534;
           onlbselchanged = "[1] call husky_fnc_fms_med; [2] call husky_fnc_fms_med;";
       };
       class ListboxUnits : husky_RscListBox
       {
           idc = 890012;
           x = 0.4046875 * safezoneW + safezoneX;
           y = 0.28 * safezoneH + safezoneY;
           w = 0.175 * safezoneW;
           h = 0.44 * safezoneH;
           colortext[] = {255,255,255,1};
           colorbackground[] = {0,0,0,0.4};
           sizeex = 0.0436534;
       };
       class BeschreibungText : husky_RscStructuredText
       {
           idc = 890013;
           text = "Willkommen im Funkmeldesystem!";
           x = 0.588020833333333 * safezoneW + safezoneX;
           y = 0.279091769157994 * safezoneH + safezoneY;
           w = 0.168229166666667 * safezoneW;
           h = 0.44 * safezoneH;
           colortext[] = {255,255,255,1};
           colorbackground[] = {0,0,0,0.4};
           sizeex = 0.0363778;
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
