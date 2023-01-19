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
class revokeLicense_Menu_med {
   idd = 71000;
   name = "revokeLicense_Menu_med";
   movingenable = false;
   enablesimulation = true;

   class controlsBackground
   {
       class hg_revocelizenz : husky_RscPicture
       {
           idc = -1;
           text = "textures\Menus\TrunkPic.paa";
           x = -0.0635416666666667 * safezoneW + safezoneX;
           y = 0.23841059602649 * safezoneH + safezoneY;
           w = 0.439583333333333 * safezoneW;
           h = 0.822138126773889 * safezoneH;
       };
   };
   class controls
   {
       class ButtonClose : husky_RscButtonMenu
       {
           onbuttonclick = "closeDialog 0;";
           text = "$STR_Global_Close";
           x = 0.161458333333333 * safezoneW + safezoneX;
           y = 0.905998107852413 * safezoneH + safezoneY;
           w = 0.115833333333333 * safezoneW;
           h = 0.0302743614001893 * safezoneH;
           idc = 1000;
       };
       class ButtonOne_nehm : husky_RscButtonMenu
       {
           idc = 71002;
           text = "Kraftfahrzeug Lizenz 1 nehmen";
           sizeex = 0.025;
           x = 0.0352083333333333 * safezoneW + safezoneX;
           y = 0.373699148533586 * safezoneH + safezoneY;
           w = 0.115833333333333 * safezoneW;
           h = 0.0302743614001893 * safezoneH;
       };
       class ButtonTwo_nehm : husky_RscButtonMenu
       {
           idc = 71003;
           text = "Kraftfahrzeug Lizenz 2 nehmen";
           sizeex = 0.025;
           x = 0.0352083333333333 * safezoneW + safezoneX;
           y = 0.421229895931883 * safezoneH + safezoneY;
           w = 0.115833333333333 * safezoneW;
           h = 0.0302743614001893 * safezoneH;
       };
       class ButtonThree_nehm : husky_RscButtonMenu
       {
           idc = 71004;
           text = "Kraftfahrzeug Lizenz 3 nehmen";
           sizeex = 0.025;
           x = 0.0352083333333333 * safezoneW + safezoneX;
           y = 0.464749290444655 * safezoneH + safezoneY;
           w = 0.115833333333333 * safezoneW;
           h = 0.0302743614001893 * safezoneH;
       };
       class ButtonFour_nehm : husky_RscButtonMenu
       {
           idc = 71005;
           text = "Helikopter Lizenz 1 nehmen";
           sizeex = 0.025;
           x = 0.0352083333333333 * safezoneW + safezoneX;
           y = 0.513945127719963 * safezoneH + safezoneY;
           w = 0.115833333333333 * safezoneW;
           h = 0.0302743614001893 * safezoneH;
       };
       class ButtonFive_nehm : husky_RscButtonMenu
       {
           idc = 71006;
           text = "Helikopter Lizenz 2 nehmen";
           sizeex = 0.025;
           x = 0.0352083333333333 * safezoneW + safezoneX;
           y = 0.562194891201515 * safezoneH + safezoneY;
           w = 0.115833333333333 * safezoneW;
           h = 0.0302743614001893 * safezoneH;
       };
       class ButtonSix_nehm : husky_RscButtonMenu
       {
           idc = 71007;
           text = "Helikopter Lizenz 3 nehmen";
           sizeex = 0.025;
           x = 0.0352083333333333 * safezoneW + safezoneX;
           y = 0.603396404919585 * safezoneH + safezoneY;
           w = 0.115833333333333 * safezoneW;
           h = 0.0302743614001893 * safezoneH;
       };
       class ButtonSeven_nehm : husky_RscButtonMenu
       {
           idc = 71008;
           text = "Wasserrettungs Lizenz 1 nehmen";
           sizeex = 0.025;
           x = 0.0352083333333333 * safezoneW + safezoneX;
           y = 0.644881740775781 * safezoneH + safezoneY;
           w = 0.115833333333333 * safezoneW;
           h = 0.0302743614001893 * safezoneH;
       };
       class Buttonacht_nehmall : husky_RscButtonMenu
       {
           idc = 71009;
           text = "Alle Lizenz nehmen";
           sizeex = 0.025;
           x = 0.0352083333333333 * safezoneW + safezoneX;
           y = 0.905998107852413 * safezoneH + safezoneY;
           w = 0.115833333333333 * safezoneW;
           h = 0.0302743614001893 * safezoneH;
       };
       class ButtonOne_geben : husky_RscButtonMenu
       {
           idc = 71013;
           text = "Kraftfahrzeug Lizenz 1 geben";
           sizeex = 0.025;
           x = 0.161458333333333 * safezoneW + safezoneX;
           y = 0.373699148533586 * safezoneH + safezoneY;
           w = 0.115833333333333 * safezoneW;
           h = 0.0302743614001893 * safezoneH;
       };
       class ButtonTwo_geb : husky_RscButtonMenu
       {
           idc = 71014;
           text = "Kraftfahrzeug Lizenz 2 geben";
           sizeex = 0.025;
           x = 0.161458333333333 * safezoneW + safezoneX;
           y = 0.421229895931883 * safezoneH + safezoneY;
           w = 0.115833333333333 * safezoneW;
           h = 0.0302743614001893 * safezoneH;
       };
       class ButtonThree_geb : husky_RscButtonMenu
       {
           idc = 71015;
           text = "Kraftfahrzeug Lizenz 3 geben";
           sizeex = 0.025;
           x = 0.161458333333333 * safezoneW + safezoneX;
           y = 0.464749290444655 * safezoneH + safezoneY;
           w = 0.115833333333333 * safezoneW;
           h = 0.0302743614001893 * safezoneH;
       };
       class ButtonFour_geb : husky_RscButtonMenu
       {
           idc = 71016;
           text = "Helikopter Lizenz 1 geben";
           sizeex = 0.025;
           x = 0.161458333333333 * safezoneW + safezoneX;
           y = 0.513945127719963 * safezoneH + safezoneY;
           w = 0.115833333333333 * safezoneW;
           h = 0.0302743614001893 * safezoneH;
       };
       class ButtonFive_geb : husky_RscButtonMenu
       {
           idc = 71017;
           text = "Helikopter Lizenz 2 geben";
           sizeex = 0.025;
           x = 0.161458333333333 * safezoneW + safezoneX;
           y = 0.562194891201515 * safezoneH + safezoneY;
           w = 0.115833333333333 * safezoneW;
           h = 0.0302743614001893 * safezoneH;
       };
       class ButtonSix_geb : husky_RscButtonMenu
       {
           idc = 71018;
           text = "Helikopter Lizenz 3 geben";
           sizeex = 0.025;
           x = 0.161458333333333 * safezoneW + safezoneX;
           y = 0.603396404919585 * safezoneH + safezoneY;
           w = 0.115833333333333 * safezoneW;
           h = 0.0302743614001893 * safezoneH;
       };
       class ButtonSeven_geb : husky_RscButtonMenu
       {
           idc = 71019;
           text = "Wasserrettungs Lizenz 1 geben";
           sizeex = 0.025;
           x = 0.161458333333333 * safezoneW + safezoneX;
           y = 0.644881740775781 * safezoneH + safezoneY;
           w = 0.115833333333333 * safezoneW;
           h = 0.0302743614001893 * safezoneH;
       };
       class ButtonSeven_nehm0 : husky_RscButtonMenu
       {
           idc = 71020;
           text = "Löschfahrzeug Lizenz 1 nehmen";
           sizeex = 0.025;
           x = 0.0352083333333333 * safezoneW + safezoneX;
           y = 0.689687795648061 * safezoneH + safezoneY;
           w = 0.115833333333333 * safezoneW;
           h = 0.0302743614001893 * safezoneH;
       };
       class ButtonSeven_nehm00 : husky_RscButtonMenu
       {
           idc = 71021;
           text = "Bergrettung Lizenz 1 nehmen";
           sizeex = 0.025;
           x = 0.0352083333333333 * safezoneW + safezoneX;
           y = 0.733207190160833 * safezoneH + safezoneY;
           w = 0.115833333333333 * safezoneW;
           h = 0.0302743614001893 * safezoneH;
       };
       class ButtonSeven_nehm000 : husky_RscButtonMenu
       {
           idc = 71022;
           text = "Ausbilder Lizenz nehmen";
           sizeex = 0.025;
           x = 0.0352083333333333 * safezoneW + safezoneX;
           y = 0.774834437086093 * safezoneH + safezoneY;
           w = 0.115833333333333 * safezoneW;
           h = 0.0302743614001893 * safezoneH;
       };
       class ButtonSeven_nehm0000 : husky_RscButtonMenu
       {
           idc = 71023;
           text = "Katastrophenschutz Lizenz nehmen";
           sizeex = 0.025;
           x = 0.0352083333333333 * safezoneW + safezoneX;
           y = 0.817407757805109 * safezoneH + safezoneY;
           w = 0.115833333333333 * safezoneW;
           h = 0.0302743614001893 * safezoneH;
       };
       class ButtonSeven_nehm00000 : husky_RscButtonMenu
       {
           idc = 71024;
           text = "Bauer Lizenz nehmen";
           sizeex = 0.025;
           x = 0.0352083333333333 * safezoneW + safezoneX;
           y = 0.860927152317881 * safezoneH + safezoneY;
           w = 0.115833333333333 * safezoneW;
           h = 0.0302743614001893 * safezoneH;
       };
       class ButtonSeven_geb0 : husky_RscButtonMenu
       {
           idc = 71025;
           text = "Löschfahrzeug Lizenz 1 geben";
           sizeex = 0.025;
           x = 0.161458333333333 * safezoneW + safezoneX;
           y = 0.689687795648061 * safezoneH + safezoneY;
           w = 0.115833333333333 * safezoneW;
           h = 0.0302743614001893 * safezoneH;
       };
       class ButtonSeven_geb00 : husky_RscButtonMenu
       {
           idc = 71026;
           text = "Bergrettung Lizenz 1 geben";
           sizeex = 0.025;
           x = 0.161458333333333 * safezoneW + safezoneX;
           y = 0.733207190160833 * safezoneH + safezoneY;
           w = 0.115833333333333 * safezoneW;
           h = 0.0302743614001893 * safezoneH;
       };
       class ButtonSeven_geb000 : husky_RscButtonMenu
       {
           idc = 71027;
           text = "Ausbilder Lizenz geben";
           sizeex = 0.025;
           x = 0.161458333333333 * safezoneW + safezoneX;
           y = 0.774834437086093 * safezoneH + safezoneY;
           w = 0.115833333333333 * safezoneW;
           h = 0.0302743614001893 * safezoneH;
       };
       class ButtonSeven_geb0000 : husky_RscButtonMenu
       {
           idc = 71028;
           text = "Katastrophenschutz Lizenz geben";
           sizeex = 0.025;
           x = 0.161458333333333 * safezoneW + safezoneX;
           y = 0.817407757805109 * safezoneH + safezoneY;
           w = 0.115833333333333 * safezoneW;
           h = 0.0302743614001893 * safezoneH;
       };
       class ButtonSeven_geb00000 : husky_RscButtonMenu
       {
           idc = 71029;
           text = "Bauer Lizenz geben";
           sizeex = 0.025;
           x = 0.161458333333333 * safezoneW + safezoneX;
           y = 0.860927152317881 * safezoneH + safezoneY;
           w = 0.115833333333333 * safezoneW;
           h = 0.0302743614001893 * safezoneH;
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
