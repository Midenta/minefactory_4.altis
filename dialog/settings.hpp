/////////////////////////////////////////////////////////////////
/////////// This File was Edited by GUI D3V by Shinji ///////////
/////////////////////////////////////////////////////////////////
class SettingsMenu {
   idd = 2900;
   name = "SettingsMenu";
   movingenable = 1;
   enablesimulation = 1;
   class controlsBackground
   {
       class husky_RscTitleBackground_bild : husky_RscPicture
       {
           text = "textures\Menus\TrunkPic.paa";
           x = 0.157291666666667 * safezoneW + safezoneX;
           y = 0.169347209082308 * safezoneH + safezoneY;
           w = 0.686979166666667 * safezoneW;
           h = 0.663197729422895 * safezoneH;
           idc = 1002;
       };
       class RscTitleBackground : husky_RscText
       {
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
           idc = -1;
           x = 0.2953125 * safezoneW + safezoneX;
           y = 0.274739829706717 * safezoneH + safezoneY;
           w = 0.411979166666667 * safezoneW;
           h = 0.04 * safezoneH;
       };
       class RscMainBackground : husky_RscText
       {
           colorbackground[] = {0,0,0,0.7};
           idc = -1;
           x = 0.295833333333333 * safezoneW + safezoneX;
           y = 0.330179754020814 * safezoneH + safezoneY;
           w = 0.409895833333334 * safezoneW;
           h = 0.408703878902554 * safezoneH;
       };
       /*class PlayerTagsHeader : husky_RscText
       {
           idc = -1;
           text = "$STR_SM_PlayerTags";
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
           x = 0.303645833333333 * safezoneW + safezoneX;
           y = 0.519877010406812 * safezoneH + safezoneY;
           w = 0.2171875 * safezoneW;
           h = 0.0345222327341533 * safezoneH;
       };*/
       class SideChatHeader : husky_RscText
       {
           idc = -1;
           text = "$STR_SM_SC";
           y = 0.566092715231788 * safezoneH + safezoneY;
           x = 0.303645833333333 * safezoneW + safezoneX;
           w = 0.215625 * safezoneW;
           h = 0.04 * safezoneH;
       };
       class RevealNearestHeader : husky_RscText
       {
           idc = -1;
           text = "$STR_SM_RNObj";
           y = 0.616092715231788 * safezoneH + safezoneY;
           x = 0.303645833333333 * safezoneW + safezoneX;
           w = 0.215625 * safezoneW;
           h = 0.04 * safezoneH;
       };
       class BroacastHeader : husky_RscText
       {
           idc = -1;
           text = "$STR_SM_BCSW";
           y = 0.664200567644276 * safezoneH + safezoneY;
           x = 0.303645833333333 * safezoneW + safezoneX;
           w = 0.2171875 * safezoneW;
           h = 0.04 * safezoneH;
       };
       class Title : husky_RscTitle
       {
           idc = -1;
           colorbackground[] = {0,0,0,0};
           text = "$STR_SM_Title";
           x = 0.2953125 * safezoneW + safezoneX;
           y = 0.274274361400189 * safezoneH + safezoneY;
           w = 0.411979166666666 * safezoneW;
           h = 0.04 * safezoneH;
       };
   };
   class controls
   {
       class VDonFoot : husky_RscText
       {
           idc = -1;
           text = "$STR_SM_onFoot";
           x = 0.303645833333333 * safezoneW + safezoneX;
           y = 0.355445600756859 * safezoneH + safezoneY;
           w = 0.135416666666667 * safezoneW;
           h = 0.04 * safezoneH;
       };
       class VDinCar : husky_RscText
       {
           idc = -1;
           text = "$STR_SM_inCar";
           x = 0.303645833333333 * safezoneW + safezoneX;
           y = 0.407445600756859 * safezoneH + safezoneY;
           w = 0.135416666666667 * safezoneW;
           h = 0.04 * safezoneH;
       };
       class VDinAir : husky_RscText
       {
           idc = -1;
           text = "$STR_SM_inAir";
           x = 0.303645833333333 * safezoneW + safezoneX;
           y = 0.457445600756859 * safezoneH + safezoneY;
           w = 0.135416666666667 * safezoneW;
           h = 0.04 * safezoneH;
       };
       class VD_onfoot_slider : husky_RscXSliderH
       {
           idc = 2901;
           text = "";
           onsliderposchanged = "[0,_this select 1] call husky_fnc_s_onSliderChange;";
           tooltip = "$STR_SM_ToolTip1";
           x = 0.385104166666666 * safezoneW + safezoneX;
           y = 0.355445600756859 * safezoneH + safezoneY;
           w = 0.237291666666667 * safezoneW;
           h = 0.029412 * safezoneH;
       };
       class VD_onfoot_value : husky_RscEdit
       {
           idc = 2902;
           text = "";
           onchar = "[_this select 0, _this select 1,'ground',false] call husky_fnc_s_onChar;";
           onkeyup = "[_this select 0, _this select 1,'ground',true] call husky_fnc_s_onChar;";
           x = 0.624479166666666 * safezoneW + safezoneX;
           y = 0.355445600756859 * safezoneH + safezoneY;
           w = 0.0799999999999999 * safezoneW;
           h = 0.04 * safezoneH;
       };
       class VD_car_slider : husky_RscXSliderH
       {
           idc = 2911;
           text = "";
           onsliderposchanged = "[1,_this select 1] call husky_fnc_s_onSliderChange;";
           tooltip = "$STR_SM_ToolTip2";
           x = 0.385104166666666 * safezoneW + safezoneX;
           y = 0.407445600756859 * safezoneH + safezoneY;
           w = 0.237291666666667 * safezoneW;
           h = 0.029412 * safezoneH;
       };
       class VD_car_value : husky_RscEdit
       {
           idc = 2912;
           text = "";
           onchar = "[_this select 0, _this select 1,'vehicle',false] call husky_fnc_s_onChar;";
           onkeyup = "[_this select 0, _this select 1,'vehicle',true] call husky_fnc_s_onChar;";
           x = 0.624479166666666 * safezoneW + safezoneX;
           y = 0.407445600756859 * safezoneH + safezoneY;
           w = 0.0799999999999999 * safezoneW;
           h = 0.04 * safezoneH;
       };
       class VD_air_slider : husky_RscXSliderH
       {
           idc = 2921;
           text = "";
           onsliderposchanged = "[2,_this select 1] call husky_fnc_s_onSliderChange;";
           tooltip = "$STR_SM_ToolTip3";
           x = 0.385104166666666 * safezoneW + safezoneX;
           y = 0.457445600756859 * safezoneH + safezoneY;
           w = 0.237291666666667 * safezoneW;
           h = 0.029412 * safezoneH;
       };
       class VD_air_value : husky_RscEdit
       {
           idc = 2922;
           text = "";
           onchar = "[_this select 0, _this select 1,'air',false] call husky_fnc_s_onChar;";
           onkeyup = "[_this select 0, _this select 1,'air',true] call husky_fnc_s_onChar;";
           x = 0.624479166666666 * safezoneW + safezoneX;
           y = 0.457445600756859 * safezoneH + safezoneY;
           w = 0.0799999999999999 * safezoneW;
           h = 0.04 * safezoneH;
       };
       /*class PlayerTagsONOFF : husky_Checkbox
       {
           tooltip = "$STR_GUI_PlayTags";
           idc = 2970;
           sizeex = 0.04;
           oncheckedchanged = "['tags',_this select 1] call husky_fnc_s_onCheckedChange;";
           x = 0.530208333333333 * safezoneW + safezoneX;
           y = 0.528391674550615 * safezoneH + safezoneY;
           w = 0.0208333333333333 * safezoneW;
           h = 0.0141911069063387 * safezoneH;
       };*/
       class SideChatONOFF : husky_Checkbox
       {
           idc = 2971;
           tooltip = "$STR_GUI_SideSwitch";
           oncheckedchanged = "['sidechat',_this select 1] call husky_fnc_s_onCheckedChange;";
           y = 0.572715231788079 * safezoneH + safezoneY;
           x = 0.530208333333333 * safezoneW + safezoneX;
           w = 0.0208333333333333 * safezoneW;
           h = 0.0141911069063387 * safezoneH;
       };
       class RevealONOFF : husky_Checkbox
       {
           idc = 2972;
           tooltip = "$STR_GUI_PlayerReveal";
           oncheckedchanged = "['objects',_this select 1] call husky_fnc_s_onCheckedChange;";
           y = 0.62271523178808 * safezoneH + safezoneY;
           x = 0.530208333333333 * safezoneW + safezoneX;
           w = 0.0208333333333333 * safezoneW;
           h = 0.0141911069063387 * safezoneH;
       };
       class BroadcastONOFF : husky_Checkbox
       {
           idc = 2973;
           tooltip = "$STR_GUI_BroadcastSwitch";
           oncheckedchanged = "['broadcast',_this select 1] call husky_fnc_s_onCheckedChange;";
           y = 0.678391674550615 * safezoneH + safezoneY;
           x = 0.530208333333333 * safezoneW + safezoneX;
           w = 0.0208333333333333 * safezoneW;
           h = 0.0141911069063387 * safezoneH;
       };
       class ButtonClose : husky_RscButtonMenu
       {
           idc = -1;
           text = "$STR_Global_Close";
           onbuttonclick = "closeDialog 0;";
           x = 0.596354166666667 * safezoneW + safezoneX;
           y = 0.702932828760643 * safezoneH + safezoneY;
           w = 0.108541666666666 * safezoneW;
           h = 0.0323368022705776 * safezoneH;
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
