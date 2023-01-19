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
class husky_wanted_menu {
   idd = 2400;
   name = "husky_wanted_menu";
   movingenable = false;
   enablesimulation = true;

   class controlsBackground
   {
       class husky_RscTitleBackgroundbild : husky_RscPicture
       {
           idc = -1;
		   text = "textures\Menus\TrunkPic.paa";
           x = 0.113541666666667 * safezoneW + safezoneX;
           y = 0.0368968779564806 * safezoneH + safezoneY;
           w = 0.758333333333333 * safezoneW;
           h = 0.908230842005677 * safezoneH;
           colorbackground[] = {1,1,1,0};
       };
       /*class husky_RscTitleBackground : husky_RscPicture
       {
           idc = -1;
           x = 0.28125 * safezoneW + safezoneX;
           y = 0.229895931882687 * safezoneH + safezoneY;
           w = 0.426041666666667 * safezoneW;
           h = 0.583727530747398 * safezoneH;
       };*/
   };
   class controls
   {
       class Title : husky_RscTitle
       {
           colorbackground[] = {0, 0, 0, 0};
           idc = -1;
           text = "$STR_Wanted_Title";
           x = 0.280208333333333 * safezoneW + safezoneX;
           y = 0.197654859981079 * safezoneH + safezoneY;
           w = 0.411979166666667 * safezoneW;
           h = 0.0303489243140964 * safezoneH;
       };
       class WantedConnection : husky_RscText
       {
           idc = 2404;
           style = 1;
           x = 0.4671875 * safezoneW + safezoneX;
           y = 0.197654859981079 * safezoneH + safezoneY;
           w = 0.208854166666667 * safezoneW;
           h = 0.0303489243140964 * safezoneH;
       };
       class WantedList : husky_RscListBox
       {
           idc = 2401;
           text = "";
           sizeex = 0.035;
           onlbselchanged = "[] spawn husky_fnc_wantedGrab;";
           x = 0.2880385 * safezoneW + safezoneX;
           y = 0.277810450331126 * safezoneH + safezoneY;
           w = 0.195869 * safezoneW;
           h = 0.319162113528855 * safezoneH;
           colorbackground[] = {0,0,0,0.705882};
           colortext[] = {1,1,1,1};
           colorselectbackground[] = {0,0,0,1};
           //colorselect[] = {0,0,0,1};
       };
       class PlayerList : husky_RscListBox
       {
           idc = 2406;
           text = "";
           sizeex = 0.035;
           onlbselchanged = "";
           x = 0.5 * safezoneW + safezoneX;
           y = 0.277810450331126 * safezoneH + safezoneY;
           w = 0.200467 * safezoneW;
           h = 0.365519729422895 * safezoneH;
           colorbackground[] = {0,0,0,0.705882};
           colortext[] = {1,1,1,1};
           colorselectbackground[] = {0,0,0,1};
           //colorselect[] = {0,0,0,1};
       };
       class WantedDetails : husky_RscListBox
       {
           idc = 2402;
           text = "";
           sizeex = 0.035;
           x = 0.2880385 * safezoneW + safezoneX;
           y = 0.602649006622517 * safezoneH + safezoneY;
           w = 0.195869 * safezoneW;
           h = 0.144502000946074 * safezoneH;
           colorbackground[] = {0,0,0,0.705882};
           colortext[] = {1,1,1,1};
           colorselectbackground[] = {0,0,0,1};
           //colorselect[] = {0,0,0,1};
       };
       class BountyPrice : husky_RscText
       {
           idc = 2403;
           x = 0.2880385 * safezoneW + safezoneX;
           y = 0.755538088930936 * safezoneH + safezoneY;
           w = 0.195869 * safezoneW;
           h = 0.0439831 * safezoneH;
           colorbackground[] = {0,0,0,0.705882};
           colortext[] = {1,1,1,1};
           colorselectbackground[] = {0,0,0,1};
           //colorselect[] = {0,0,0,1};
       };
       class WantedAddL : husky_RscCombo
       {
           idc = 2407;
           x = 0.5 * safezoneW + safezoneX;
           y = 0.687824040681173 * safezoneH + safezoneY;
           w = 0.200467 * safezoneW;
           h = 0.028353821192053 * safezoneH;
       };
       class PardonButtonKey : husky_RscButtonMenu
       {
           idc = 2405;
           text = "$STR_Wanted_Pardon";
           onbuttonclick = "call husky_fnc_pardon; closeDialog 0;";
           x = 0.581770833333333 * safezoneW + safezoneX;
           y = 0.727572447492904 * safezoneH + safezoneY;
           w = 0.0760416666666667 * safezoneW;
           h = 0.0292865875118259 * safezoneH;
       };
       class ButtonWantedAdd : husky_RscButtonMenu
       {
           idc = 9800;
           text = "$STR_Wanted_Add";
           onbuttonclick = "call husky_fnc_wantedAddP;";
           x = 0.5 * safezoneW + safezoneX;
           y = 0.727572447492904 * safezoneH + safezoneY;
           w = 0.0755208333333333 * safezoneW;
           h = 0.0292865875118259 * safezoneH;
       };
       class wantedText : husky_RscText
       {
           idc = 1000;
           text = "$STR_Wanted_People";
           x = 0.2880385 * safezoneW + safezoneX;
           y = 0.236922491012299 * safezoneH + safezoneY;
           w = 0.195869 * safezoneW;
           h = 0.0327085402081362 * safezoneH;
       };
       class citizensText : husky_RscText
       {
           idc = 1001;
           text = "$STR_Wanted_Citizens";
           x = 0.500558 * safezoneW + safezoneX;
           y = 0.236922491012299 * safezoneH + safezoneY;
           w = 0.200467 * safezoneW;
           h = 0.0327085402081362 * safezoneH;
       };
       class crimesText : husky_RscText
       {
           idc = 1002;
           text = "$STR_Wanted_Crimes";
           x = 0.5 * safezoneW + safezoneX;
           y = 0.649135081362346 * safezoneH + safezoneY;
           w = 0.200467 * safezoneW;
           h = 0.0301459025543993 * safezoneH;
       };
       class etn_CloseHeader : husky_RscButtonMenu
       {
           onbuttonclick = "closeDialog 0;";
           text = "X";
           x = 0.693229166666667 * safezoneW + safezoneX;
           y = 0.197654859981079 * safezoneH + safezoneY;
           w = 0.0145122333333333 * safezoneW;
           h = 0.0303489243140964 * safezoneH;
           idc = -1;
       };
       class CloseButtonKey : husky_RscButtonMenu
       {
           text = "$STR_Global_Close";
           onbuttonclick = "closeDialog 0;";
           x = 0.5 * safezoneW + safezoneX;
           y = 0.771091842005677 * safezoneH + safezoneY;
           w = 0.0765625 * safezoneW;
           h = 0.0292865875118259 * safezoneH;
           idc = -1;
       };
       /*class CloseButtonKey0 : husky_RscButtonMenu
       {
           text = "Aktualisieren";
           onbuttonclick = "[] call husky_fnc_wanted_aktuallisieren;";
           x = 0.581770833333333 * safezoneW + safezoneX;
           y = 0.771091842005677 * safezoneH + safezoneY;
           w = 0.0765625 * safezoneW;
           h = 0.0292865875118259 * safezoneH;
           idc = 2408;
       };*/
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
