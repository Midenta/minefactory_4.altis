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
class carDisplay {
   idd = 70700;
   name = "carDisplay";
   movingenable = 0;
   enablesimulation = 1;
   onUnload = "call husky_fnc_vehicleShopEnd3DPreview";
   class controlsBackground
   {
       class husky_RscTitleBackground : husky_RscText
       {
           idc = -1;
           text = "Car Database";
           x = -5.23333333333061E-05 * safezoneW + safezoneX;
           y = 0.03201903500473 * safezoneH + safezoneY;
           w = 0.170156 * safezoneW;
           h = 0.022 * safezoneH;
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])","(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
       };
       class MainBackground : husky_RscText
       {
           idc = -1;
		   text = "textures\Menus\TrunkPic.paa";
           x = -5.23333333333061E-05 * safezoneW + safezoneX;
           y = 0.05445903500473 * safezoneH + safezoneY;
           w = 0.179739833333333 * safezoneW;
           h = 0.936080227057711 * safezoneH;
           colorbackground[] = {0,0,0,0.7};
       };
       class MainBackground0 : husky_RscText
       {
           idc = -1;
		   text = "textures\Menus\TrunkPic.paa";
           x = 0.818901166666648 * safezoneW + safezoneX;
           y = 0.0291479659413431 * safezoneH + safezoneY;
           w = 0.181354666666667 * safezoneW;
           h = 0.407 * safezoneH;
           colorbackground[] = {0,0,0,0.7};
       };
       class CarText : husky_RscText
       {
           idc = -1;
           text = "Car Database";
           x = 0.00201066666666669 * safezoneW + safezoneX;
           y = 0.05885903500473 * safezoneH + safezoneY;
           w = 0.170906 * safezoneW;
           h = 0.022 * safezoneH;
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",0.5};
       };
       class CarText2 : husky_RscText
       {
           idc = -1;
           text = "Car Information";
           x = 0.820777833333315 * safezoneW + safezoneX;
           y = 0.0311150425733204 * safezoneH + safezoneY;
           w = 0.176353 * safezoneW;
           h = 0.022 * safezoneH;
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",0.5};
       };
   };
   class controls
   {
       class CarList : husky_RscListBox
       {
           idc = 77001;
           onlbselchanged = "_this call TLG_Client_fnc_carMenuLBChanged";
           x = 0.00510366666666666 * safezoneW + safezoneX;
           y = 0.08965903500473 * safezoneH + safezoneY;
           w = 0.165729666666667 * safezoneW;
           h = 0.874390160832545 * safezoneH;
           sizeex = 2.5 * 0.02;
       };
       class listTextures : husky_RscCombo
       {
           idc = 77013;
           onlbselchanged = "call TLG_Client_fnc_carMenuLBColor;";
           x = 0.819777833333315 * safezoneW + safezoneX;
           y = 0.392970009460738 * safezoneH + safezoneY;
           w = 0.174228 * safezoneW;
           h = 0.0299249763481554 * safezoneH;
       };
       class CarName : husky_RscText
       {
           idc = 70704;
           x = 0.819777833333315 * safezoneW + safezoneX;
           y = 0.0537082308420053 * safezoneH + safezoneY;
           w = 0.177873833333333 * safezoneW;
           h = 0.055 * safezoneH;
           sizeex = 2.7 * 0.02;
       };
       class BuyPrice : husky_RscText
       {
           idc = 70705;
           text = "Kaufpreis:";
           x = 0.819777833333315 * safezoneW + safezoneX;
           y = 0.217341721854304 * safezoneH + safezoneY;
           w = 0.136728 * safezoneW;
           h = 0.055 * safezoneH;
           sizeex = 2.7 * 0.02;
       };
       class SellPrice : husky_RscText
       {
           idc = 70706;
           text = "Verkaufpreis:";
           x = 0.819777833333315 * safezoneW + safezoneX;
           y = 0.277117123935667 * safezoneH + safezoneY;
           w = 0.136728 * safezoneW;
           h = 0.055 * safezoneH;
           sizeex = 2.7 * 0.02;
       };
       class Weight : husky_RscText
       {
           idc = 70707;
           text = "Gewicht:";
           x = 0.819777833333315 * safezoneW + safezoneX;
           y = 0.333416083254494 * safezoneH + safezoneY;
           w = 0.137769666666666 * safezoneW;
           h = 0.055 * safezoneH;
           sizeex = 2.7 * 0.02;
       };
       class Description : husky_RscStructuredText
       {
           idc = 70708;
           text = "Beschreibung:";
           x = 0.819777833333315 * safezoneW + safezoneX;
           y = 0.0537082308420053 * safezoneH + safezoneY;
           w = 0.06159 * safezoneW;
           h = 0.044 * safezoneH;
       };
       class DescriptionText : husky_RscStructuredText
       {
           idc = 70709;
           x = 0.819777833333315 * safezoneW + safezoneX;
           y = 0.100103500473037 * safezoneH + safezoneY;
           w = 0.177873833333333 * safezoneW;
           h = 0.11 * safezoneH;
       };
       class WeightNum : husky_RscText
       {
           idc = 70710;
           x = 0.873560333333315 * safezoneW + safezoneX;
           y = 0.333416083254494 * safezoneH + safezoneY;
           w = 0.120966333333333 * safezoneW;
           h = 0.055 * safezoneH;
           colortext[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])","(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
           sizeex = 2.7 * 0.02;
       };
       class SellNum : husky_RscText
       {
           idc = 70711;
           x = 0.873560333333315 * safezoneW + safezoneX;
           y = 0.277117123935667 * safezoneH + safezoneY;
           w = 0.120966333333333 * safezoneW;
           h = 0.055 * safezoneH;
           colortext[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])","(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
           sizeex = 2.7 * 0.02;
       };
       class BuyNum : husky_RscText
       {
           idc = 70712;
           x = 0.874734999999981 * safezoneW + safezoneX;
           y = 0.217341721854304 * safezoneH + safezoneY;
           w = 0.120966333333333 * safezoneW;
           h = 0.055 * safezoneH;
           colortext[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])","(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
           sizeex = 2.7 * 0.02;
       };
       class closeButton : husky_RscButtonMenu
       {
           onbuttonclick = "closeDialog 0;";
           text = "Schliessen";
           x = 0.00510366666666666 * safezoneW + safezoneX;
           y = 0.96822421948912 * safezoneH + safezoneY;
           w = 0.0644531 * safezoneW;
           h = 0.0219999999999998 * safezoneH;
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
