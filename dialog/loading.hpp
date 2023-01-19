class husky_loading {
 idd = 5000;
 name= "husky_loading";
 movingEnable = 0;
 enableSimulation = 1;
 onLoad="uiNamespace setVariable ['husky_loading',_this select 0]";
 fadein=0;
 duration = 99999999999;
 fadeout=0;
 objects[]={};

 class controlsBackground {
 class circle: husky_RscPictureKeepAspect {
 idc = 900;
 text = "A3\Missions_F_Exp\data\Img\lobby\ui_campaign_lobby_background_tablet_radial_left_ca.paa";
 x = 0.45875 * safezoneW + safezoneX;
 y = 0.422973 * safezoneH + safezoneY;
 w = 0.0825 * safezoneW;
 h = 0.154054 * safezoneH;
 };

 class text: husky_RscStructuredText {
 idc = 800;
 text = "";
 x = 0.29375 * safezoneW + safezoneX;
 y = 0.400965 * safezoneH + safezoneY;
 w = 0.4125 * safezoneW;
 h = 0.0220078 * safezoneH;
 };
 };
};