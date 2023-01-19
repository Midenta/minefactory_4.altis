/////////////////////////////////////////////////////////////////
/////////// This File was Edited by GUI D3V by Shinji ///////////
/////////////////////////////////////////////////////////////////
class husky_Vehicle_Shop_v2_3D {
   idd = 2300;
   name = "husky_Vehicle_Shop_v2_3D";
   movingenable = 0;
   enablesimulation = 1;
   onload = "ctrlShow [2330,false];0 fadeMusic 1; playMusic ""LeadTrack01_F"";";
   onunload = "[] call husky_fnc_vehicleShopEnd3DPreview; 1.5 fadeMusic 0; playMusic """";";
   
   class controlsBackground
   {
       class hintergrund : husky_RscPicture
       {
           idc = 1110;
           text = "textures\Menus\TrunkPic.paa";
           x = -0.0755208333333333 * safezoneW + safezoneX;
           y = -0.102175969725639 * safezoneH + safezoneY;
           w = 0.391145833333333 * safezoneW;
           h = 1.11542100283822 * safezoneH;
       };
       class hintergrundzwei : husky_RscPicture
       {
           idc = 1111;
           text = "textures\Menus\TrunkPic.paa";
           x = 0.705208333333333 * safezoneW + safezoneX;
           y = -0.021759697256386 * safezoneH + safezoneY;
           w = 0.365104166666667 * safezoneW;
           h = 0.558183538315989 * safezoneH;
       };
       class SecondBackground : husky_RscText
       {
           idc = -1;
           text = "";
           x = 0.784742 * safezoneW + safezoneX;
           y = 0.0708961807000946 * safezoneH + safezoneY;
           w = 0.206576 * safezoneW;
           h = 0.382487 * safezoneH;
           colorbackground[] = {0.1,0.1,0.1,0.9};
       };
       class VehicleTitleBox : husky_RscText
       {
           idc = -1;
           text = "$STR_GUI_ShopStock";
           x = 0.0109279999999999 * safezoneW + safezoneX;
           y = 0.0734001807000946 * safezoneH + safezoneY;
           w = 0.216456 * safezoneW;
           h = 0.033 * safezoneH;
       };
       class VehicleInfoHeader : husky_RscText
       {
           idc = -1;
           text = "$STR_GUI_VehInfo";
           x = 0.784972 * safezoneW + safezoneX;
           y = 0.0722751807000946 * safezoneH + safezoneY;
           w = 0.206347 * safezoneW;
           h = 0.030873 * safezoneH;
       };
   };
   class controls
   {
       class VehicleList : husky_RscListBox
       {
           idc = 2302;
           text = "";
           sizeex = 2.5 * 0.02;
           colorbackground[] = {0.1,0.1,0.1,0.9};
           onlbselchanged = "_this call husky_fnc_vehicleShopLBChange;";
           x = 0.01068 * safezoneW + safezoneX;
           y = 0.107881180700095 * safezoneH + safezoneY;
           w = 0.217746 * safezoneW;
           h = 0.659621 * safezoneH;
       };
       class BuyCar : husky_RscButtonMenu
       {
           idc = 2309;
           text = "$STR_Global_Buy";
           onbuttonclick = "[true] spawn husky_fnc_vehicleShopBuy;";
           x = 0.04776 * safezoneW + safezoneX;
           y = 0.814201180700095 * safezoneH + safezoneY;
           w = 0.087325 * safezoneW;
           h = 0.039095 * safezoneH;
           colorbackground[] = {0,0.501960,0,1};
       };
       class CloseBtn : husky_RscButtonMenu
       {
           idc = -1;
           text = "$STR_Global_Close";
           onbuttonclick = "closeDialog 0;";
           x = 0.138922 * safezoneW + safezoneX;
           y = 0.771687180700095 * safezoneH + safezoneY;
           w = 0.087325 * safezoneW;
           h = 0.038948 * safezoneH;
           colorbackground[] = {1,0,0,1};
       };
       class RentCar : husky_RscButtonMenu
       {
           idc = -1;
           text = "$STR_Global_RentVeh";
           onbuttonclick = "[false] spawn husky_fnc_vehicleShopBuy;";
           x = 0.138496 * safezoneW + safezoneX;
           y = 0.814201180700095 * safezoneH + safezoneY;
           w = 0.087136 * safezoneW;
           h = 0.038621 * safezoneH;
           colorbackground[] = {1,0.647058,0,1};
       };
       class ColorList : husky_RscCombo
       {
           idc = 2304;
           text = "";
           onlbselchanged = "[] call husky_fnc_vehiclecolor3DRefresh;";
           x = 0.010914 * safezoneW + safezoneX;
           y = 0.769101180700095 * safezoneH + safezoneY;
           w = 0.125596 * safezoneW;
           h = 0.042228 * safezoneH;
           colorbackground[] = {0.098039,0.098039,0.098039,0.666666};
       };
       class vehicleInfomationList : husky_RscStructuredText
       {
           idc = 2303;
           text = "";
           sizeex = 0.035;
           x = 0.797145 * safezoneW + safezoneX;
           y = 0.108827180700095 * safezoneH + safezoneY;
           w = 0.183495 * safezoneW;
           h = 0.323659 * safezoneH;
       };
       class BuyCarEC : husky_RscButtonMenu
       {
           idc = 25654236;
           text = "$STR_Global_BuyEC";
           onbuttonclick = "[true] spawn husky_fnc_vehicleShopBuyEC;";
           x = 0.04776 * safezoneW + safezoneX;
           y = 0.856791351022395 * safezoneH + safezoneY;
           w = 0.087325 * safezoneW;
           h = 0.039095 * safezoneH;
           colorbackground[] = {0,0.501960,0,1};
       };
       class RentCarEC : husky_RscButtonMenu
       {
           idc = 25658466;
           text = "$STR_Global_RentVehEC";
           onbuttonclick = "[false] spawn husky_fnc_vehicleShopBuyEC;";
           x = 0.138496 * safezoneW + safezoneX;
           y = 0.856791351022395 * safezoneH + safezoneY;
           w = 0.087325 * safezoneW;
           h = 0.039095 * safezoneH;
           colorbackground[] = {1,0.647058,0,1};
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
