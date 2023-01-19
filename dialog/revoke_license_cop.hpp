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
class revokeLicense_Menu_cop {
   idd = 51000;
   name = "revokeLicense_Menu_cop";
   movingenable = false;
   enablesimulation = true;

   class controlsBackground
   {
       class hg_revocelizenz : husky_RscPicture
       {
           idc = -1;
           text = "textures\Menus\TrunkPic.paa";
           x = -0.065625 * safezoneW + safezoneX;
           y = 0.329233680227058 * safezoneH + safezoneY;
           w = 0.439583333333333 * safezoneW;
           h = 0.685903500473037 * safezoneH;
       };
   };
   class controls
   {
       class ButtonClose : husky_RscButtonMenu
       {
           onbuttonclick = "closeDialog 0;";
           text = "$STR_Global_Close";
           x = 0.161458333333333 * safezoneW + safezoneX;
           y = 0.859640491958373 * safezoneH + safezoneY;
           w = 0.115833333333333 * safezoneW;
           h = 0.0302743614001893 * safezoneH;
       };
       class ButtonOne_nehm : husky_RscButtonMenu
       {
           idc = 51002;
           text = "Pilotenschein nehmen";
           sizeex = 0.025;
           x = 0.0352083333333333 * safezoneW + safezoneX;
           y = 0.467360454115421 * safezoneH + safezoneY;
           w = 0.115833333333333 * safezoneW;
           h = 0.0302743614001893 * safezoneH;
       };
       class ButtonTwo_nehm : husky_RscButtonMenu
       {
           idc = 51003;
           text = "Küstenwachenausbildung nehmen";
           sizeex = 0.025;
           x = 0.0352083333333333 * safezoneW + safezoneX;
           y = 0.514891201513718 * safezoneH + safezoneY;
           w = 0.115833333333333 * safezoneW;
           h = 0.0302743614001893 * safezoneH;
       };
       class ButtonThree_nehm : husky_RscButtonMenu
       {
           idc = 51004;
           text = "Zivilfahnder Lizenz nehmen";
           sizeex = 0.025;
           x = 0.0352083333333333 * safezoneW + safezoneX;
           y = 0.55841059602649 * safezoneH + safezoneY;
           w = 0.115833333333333 * safezoneW;
           h = 0.0302743614001893 * safezoneH;
       };
       class ButtonFour_nehm : husky_RscButtonMenu
       {
           idc = 51005;
           //text = "GSG9 Lizenz nehmen";
		   text = "copbereitschaftspolizei Lizenz nehmen";
           sizeex = 0.025;
           x = 0.0352083333333333 * safezoneW + safezoneX;
           y = 0.607606433301798 * safezoneH + safezoneY;
           w = 0.115833333333333 * safezoneW;
           h = 0.0302743614001893 * safezoneH;
       };
       /*class ButtonFive_nehm : husky_RscButtonMenu
       {
           idc = 51006;
           text = "PSK Lizenz nehmen";
           sizeex = 0.025;
           x = 0.0352083333333333 * safezoneW + safezoneX;
           y = 0.65585619678335 * safezoneH + safezoneY;
           w = 0.115833333333333 * safezoneW;
           h = 0.0302743614001893 * safezoneH;
       };*/
       class ButtonSix_nehm : husky_RscButtonMenu
       {
           idc = 51007;
           text = "Ausbilder Lizenz nehmen";
           sizeex = 0.025;
           x = 0.0352083333333333 * safezoneW + safezoneX;
           y = 0.69705771050142 * safezoneH + safezoneY;
           w = 0.115833333333333 * safezoneW;
           h = 0.0302743614001893 * safezoneH;
       };
       /*class ButtonSeven_nehm : husky_RscButtonMenu
       {
           idc = 51008;
           text = "Flugzeugpilot nehmen";
           sizeex = 0.025;
           x = 0.0352083333333333 * safezoneW + safezoneX;
           y = 0.738543046357616 * safezoneH + safezoneY;
           w = 0.115833333333333 * safezoneW;
           h = 0.0302743614001893 * safezoneH;
       };*/
       class Buttonacht_nehmall : husky_RscButtonMenu
       {
           idc = 51009;
           text = "Alle Lizenz nehmen";
           sizeex = 0.025;
           x = 0.0352083333333333 * safezoneW + safezoneX;
           y = 0.859640491958373 * safezoneH + safezoneY;
           w = 0.115833333333333 * safezoneW;
           h = 0.0302743614001893 * safezoneH;
       };
       class ButtonOne_geben : husky_RscButtonMenu
       {
           idc = 51013;
           text = "Pilotenschein geben";
           sizeex = 0.025;
           x = 0.161458333333333 * safezoneW + safezoneX;
           y = 0.467360454115421 * safezoneH + safezoneY;
           w = 0.115833333333333 * safezoneW;
           h = 0.0302743614001893 * safezoneH;
       };
       class ButtonTwo_geb : husky_RscButtonMenu
       {
           idc = 51014;
           text = "Küstenwachenausbildung geben";
           sizeex = 0.025;
           x = 0.161458333333333 * safezoneW + safezoneX;
           y = 0.514891201513718 * safezoneH + safezoneY;
           w = 0.115833333333333 * safezoneW;
           h = 0.0302743614001893 * safezoneH;
       };
       class ButtonThree_geb : husky_RscButtonMenu
       {
           idc = 51015;
           text = "Zivilfahnder Lizenz geben";
           sizeex = 0.025;
           x = 0.161458333333333 * safezoneW + safezoneX;
           y = 0.55841059602649 * safezoneH + safezoneY;
           w = 0.115833333333333 * safezoneW;
           h = 0.0302743614001893 * safezoneH;
       };
       class ButtonFour_geb : husky_RscButtonMenu
       {
           idc = 51016;
           //text = "GSG9 Lizenz geben";
		   text = "copbereitschaftspolizei Lizenz geben";
           sizeex = 0.025;
           x = 0.161458333333333 * safezoneW + safezoneX;
           y = 0.607606433301798 * safezoneH + safezoneY;
           w = 0.115833333333333 * safezoneW;
           h = 0.0302743614001893 * safezoneH;
       };
       /*class ButtonFive_geb : husky_RscButtonMenu
       {
           idc = 51017;
           text = "PSK Lizenz geben";
           sizeex = 0.025;
           x = 0.161458333333333 * safezoneW + safezoneX;
           y = 0.65585619678335 * safezoneH + safezoneY;
           w = 0.115833333333333 * safezoneW;
           h = 0.0302743614001893 * safezoneH;
       };*/
       class ButtonSix_geb : husky_RscButtonMenu
       {
           idc = 51018;
           text = "Ausbilder Lizenz geben";
           sizeex = 0.025;
           x = 0.161458333333333 * safezoneW + safezoneX;
           y = 0.69705771050142 * safezoneH + safezoneY;
           w = 0.115833333333333 * safezoneW;
           h = 0.0302743614001893 * safezoneH;
       };
       /*class ButtonSeven_geb : husky_RscButtonMenu
       {
           idc = 51019;
           text = "Flugzeugpilot geben";
           sizeex = 0.025;
           x = 0.161458333333333 * safezoneW + safezoneX;
           y = 0.738543046357616 * safezoneH + safezoneY;
           w = 0.115833333333333 * safezoneW;
           h = 0.0302743614001893 * safezoneH;
       };
       class ButtonClose0 : husky_RscButtonMenu
       {
           idc = 51020;
           onbuttonclick = "[player] remoteExecCall [""husky_fnc_licenseCheck"",husky_pInact_curTarget];";
           text = "$STR_pInAct_checkLicenses";
           x = 0.161458333333333 * safezoneW + safezoneX;
           y = 0.899716177861873 * safezoneH + safezoneY;
           w = 0.115833333333333 * safezoneW;
           h = 0.0302743614001893 * safezoneH;
       };*/
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
