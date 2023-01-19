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
class Toxic_Bus_Menu {
    idd = 1;
    name = "Toxic_Bus_Menu";
    onLoad = "uiNamespace setVariable ['Toxic_Bus_Menu',_this select 0]";
    movingEnable = false;
    enableSimulation = false;

    class controlsBackground {
        class hintergrundbild: husky_RscPicture
        {
            idc = 1106;
            text = "textures\Menus\TrunkPic.paa";
            x = 0.353802 * safezoneW + safezoneX;
            y = 0.157755 * safezoneH + safezoneY;
            w = 0.293610 * safezoneW;
            h = 0.644109 * safezoneH;
        };
        class backgroundMain: husky_RscText
        {
            idc = 2200;
           x = 0.423958333333333 * safezoneW + safezoneX;
           y = 0.310822 * safezoneH + safezoneY;
           w = 0.149056666666667 * safezoneW;
           h = 0.384542238410596 * safezoneH;
           colorbackground[] = {0,0,0,0.498039};
        };
        class topTrim: husky_RscText
        {
            idc = 1000;
           text = "Bus Menu";
           x = 0.424154 * safezoneW + safezoneX;
           y = 0.272261 * safezoneH + safezoneY;
           w = 0.148738 * safezoneW;
           h = 0.038442 * safezoneH;
           colorbackground[] = {0,0.501960,0,1};
        };
    };
    class controls {

        class interactionList: husky_RscListbox
        {
            idc = 1500;
           text = "";
           onlbdblclick = "";
           sizeex = 0.05;
           x = 0.428645833333333 * safezoneW + safezoneX;
           y = 0.317497 * safezoneH + safezoneY;
           w = 0.1390625 * safezoneW;
           h = 0.328874 * safezoneH;
           colorbackground[] = {0.098039,0.098039,0.098039,0.588235};
           colortext[] = {1,1,1,1};
        };
        class interactButton: husky_RscButtonMenu
        {
            idc = 2400;
           text = "Einsteigen";
           onbuttonclick = "[] spawn toxic_fnc_busStart";
           x = 0.433051166666667 * safezoneW + safezoneX;
           y = 0.654445295175024 * safezoneH + safezoneY;
           w = 0.128863 * safezoneW;
           h = 0.0295660577105014 * safezoneH;
           colorbackground[] = {0,0.501960,0,1};
           colortext[] = {1,1,1,1};
        };
    };
};
////////////////////////////////////////////////////////////////////////////
