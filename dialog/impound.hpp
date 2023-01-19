////////////////////////////////////////////////////////////////////////////
//////           This HPP was created by Shinji`s GUI tool            //////
//////           Minefactory.eu 								  //////
//////           Thieves										      //////
////////////////////////////////////////////////////////////////////////////
/*
Thieves

Minefactory.eu

Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de!
Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
class husky_impound_menu {
    idd = 2800;
    name = "husky_impound_menu";
    movingenable = 0;
    enablesimulation = 1;
    onload = "ctrlShow [2830,false];[] call husky_fnc_vehicleShopInit3DPreview; 0 fadeMusic 1; playMusic ""LeadTrack01_F"";";//LeadTrack04_F	//ctrlShow [2330,false];  [] call husky_fnc_vehicleShopInit3DPreview;[] spawn husky_fnc_vehicleShop3DPreview;
    onunload = "[] call husky_fnc_vehicleShopEnd3DPreview; 1.5 fadeMusic 0; playMusic """";";

    class controlsBackground
    {
        class husky_RscTitleBackground : husky_RscPicture
        {
            idc = 1107;
            text = "textures\Menus\TrunkPic.paa";
            x = -0.0692708333333333 * safezoneW + safezoneX;
            y = -0.0794701986754967 * safezoneH + safezoneY;
            w = 0.331770833333333 * safezoneW;
            h = 0.950804162724692 * safezoneH;
        };
        class hintergrundzwei : husky_RscPicture
        {
            idc = 1108;
            text = "textures\Menus\TrunkPic.paa";
            x = 0.751041666666667 * safezoneW + safezoneX;
            y = -0.0444654683065279 * safezoneH + safezoneY;
            w = 0.306770833333333 * safezoneW;
            h = 0.620624408703879 * safezoneH;
        };
        class VehicleTitleBox : husky_RscText
        {
            idc = -1;
            text = "$STR_GUI_YourVeh";
            x = 0.00812116666666635 * safezoneW + safezoneX;
            y = 0.0641994853358561 * safezoneH + safezoneY;
            w = 0.177035666666667 * safezoneW;
            h = 0.034542 * safezoneH;
        };
        class VehicleInfoHeader : husky_RscText
        {
            idc = 2830;
            text = "$STR_GUI_VehInfo";
            x = 0.821955666666667 * safezoneW + safezoneX;
            y = 0.0683377805108798 * safezoneH + safezoneY;
            w = 0.163851833333333 * safezoneW;
            h = 0.03194 * safezoneH;
        };
    };
    class controls
    {
        class VehicleList : husky_RscListBox
        {
            idc = 2802;
            text = "";
            sizeex = 2.5 * 0.02;
            onlbselchanged = "_this call husky_fnc_garageLBChange;";
            x = 0.00733933333333301 * safezoneW + safezoneX;
            y = 0.1013444115421 * safezoneH + safezoneY;
            w = 0.177035666666667 * safezoneW;
            h = 0.482383119205298 * safezoneH;
        };
        class vehicleInfomationList : husky_RscStructuredText
        {
            idc = 2803;
            x = 0.821955666666667 * safezoneW + safezoneX;
            y = 0.1013444115421 * safezoneH + safezoneY;
            w = 0.163981833333333 * safezoneW;
            h = 0.379495 * safezoneH;
            colorbackground[] = {0.1,0.1,0.1,0.9};
        };
        class CloseBtn : husky_RscButtonMenu
        {
            idc = 8999;
            text = "$STR_Global_Close";
            onbuttonclick = "closeDialog 0; 1.5 fadeMusic 0; playMusic """";";
            x = 0.00733933333333301 * safezoneW + safezoneX;
            y = 0.685071942289499 * safezoneH + safezoneY;
            w = 0.0890148333333337 * safezoneW;
            h = 0.033123 * safezoneH;
            colorbackground[] = {1,0,0,1};
        };
        class RetrieveCar : husky_RscButtonMenu
        {
            idc = 11999;
            text = "$STR_Global_Retrieve";
            onbuttonclick = "[] call husky_fnc_unimpound;";
            x = 0.00733933333333301 * safezoneW + safezoneX;
            y = 0.646403177861873 * safezoneH + safezoneY;
            w = 0.0890148333333337 * safezoneW;
            h = 0.033123 * safezoneH;
            colorbackground[] = {0,0.501960,0,1};
        };
        class SellCar : husky_RscButtonMenu
        {
            text = "$STR_Global_Sell";
            onbuttonclick = "closeDialog 0; [] call husky_fnc_sellGarage;";
            //onbuttonclick = "[] call husky_fnc_sellVehicle;";
            x = 0.0964018333333331 * safezoneW + safezoneX;
            y = 0.685071942289499 * safezoneH + safezoneY;
            w = 0.0890148333333337 * safezoneW;
            h = 0.033123 * safezoneH;
            colorbackground[] = {1,0.647058,0,1};
        };
        class versicherung : husky_RscButtonMenu
        {
            idc = 1001;
            text = "Versicherung";
            onbuttonclick = " closeDialog 0; [] call husky_fnc_insureCar;";
            x = 0.0964018333333331 * safezoneW + safezoneX;
            y = 0.646403177861873 * safezoneH + safezoneY;
            w = 0.0890148333333337 * safezoneW;
            h = 0.033123 * safezoneH;
            colorbackground[] = {0,1,1,1};
        };
        /*
        class InsureCar : husky_RscButtonMenu
        {
        idc = 97480;
        text = "Assurer";
        onButtonClick = "[] call husky_fnc_insureCar;";
        x = 0.43 + (6.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
        y = 0.9 - (1 / 25);
        w = (6.25 / 40);
        h = (1 / 25);
    };
    */
    /*class ColorList : husky_RscCombo
    {
    idc = 2804;
    text = "";
    onlbselchanged = "[] call husky_fnc_vehiclecolor3DRefreshGarage;";
    x = 0.0964018333333331 * safezoneW + safezoneX;
    y = 0.646403177861873 * safezoneH + safezoneY;
    w = 0.0890148333333337 * safezoneW;
    h = 0.034069 * safezoneH;
    colorbackground[] = {0.098039,0.098039,0.098039,0.666666};
};
*/
/*class versicherung : husky_RscButtonMenu
{
idc = 1001;
text = "Versicherung";
onbuttonclick = "closeDialog 0; 1.5 fadeMusic 0; playMusic """";";
x = 0.0964018333333331 * safezoneW + safezoneX;
y = 0.626415367076632 * safezoneH + safezoneY;
w = 0.0890148333333337 * safezoneW;
h = 0.033123 * safezoneH;
colorbackground[] = {0,1,1,1};
};*/
/*class kennzeichenButton : husky_RscButtonMenu
{
idc = -1;
text = "Kennzeichen";
onbuttonclick = "call husky_fnc_changePlate;";
x = 0.0964018333333331 * safezoneW + safezoneX;
y = 0.646403177861873 * safezoneH + safezoneY;
w = 0.0890148333333337 * safezoneW;
h = 0.034069 * safezoneH;
};
class RscEdit_1400 : husky_RscEdit
{
idc = 2812;
text = "erster Teil";
x = 0.00733933333333301 * safezoneW + safezoneX;
y = 0.597540208136235 * safezoneH + safezoneY;
w = 0.0890148333333337 * safezoneW;
h = 0.04 * safezoneH;
};
class RscEdit_1401 : husky_RscEdit
{
idc = 2813;
text = "zweiter Teil";
x = 0.0964018333333331 * safezoneW + safezoneX;
y = 0.597540208136235 * safezoneH + safezoneY;
w = 0.0890148333333337 * safezoneW;
h = 0.04 * safezoneH;
};
*/
};
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
