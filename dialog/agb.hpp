/*

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
	
*/

class agb
{
 idd = 32154;
 name = "agb";
 movingEnable = false;
 enableSimulation = false;
 class controlsBackground
 {
	  class hintergrundbild : husky_RscPicture
       {
           idc = 1106;
           text = "textures\Menus\TrunkPic.paa";
           x = -0.294270833333333 * safezoneW + safezoneX;
           y = -0.127719962157048 * safezoneH + safezoneY;
           w = 1.59270833333333 * safezoneW;
           h = 1.25165562913907 * safezoneH;
       };
 class RscTitleBackground : husky_RscText
 {
 colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
 idc = -1;
 x = 0.0875;
 y = 0.06;
 w = 0.825;
 h = 0.04;
 };
 class RscBackground : husky_RscText
 {
 colorBackground[] = {0.31,0.31,0.31,1};
 idc = -1;
 x = 0.0875;
 y = 0.12;
 w = 0.825;
 h = 0.82;
 };
 class RscTitleText : husky_RscTitle
 {
 colorBackground[] = {0, 0, 0, 0};
 idc = -1;
 text = "Informationen:";
 x = 0.0875;
 y = 0.06;
 w = 0.825;
 h = 0.04;
 class Attributes 
 {
 align = "center";
 };
 };
 class RsclolStatus : husky_RscStructuredText
 {
 idc = -1;
  colorBackground[] = {0, 0, 0, 0};
 sizeEx = 0.0001;
 text = "<t size = '0.8'>Hallo Minefactory.eu Besucher<br / >Wir sind umgezogen auf eine andere IP.<br / >Du kannst den neuen Server über den Serverbrowser finden oder unter der IP zum direkt verbinden. <br / >IP: 194.26.183.165 Port: 2302<br / ><br / >Weitere Infos findest du im Forum<br / ><br / >Unsere Kontaktdaten: <br / >TS³ minefactory<br / >Homepage Minefactory.eu<br / >     <br / > ";
 x = 0.1125;
 y = 0.16;
 w = 0.775;
 h = 0.66;
 }; 
 };
 class Controls
 {
 class naz : husky_RscButtonMenu
 {
 idc = -1;
 text = "Alles klar!";
 colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
 onButtonClick = "closeDialog 0;";
 x = 0.1075;
 y = 0.88;
 w = 0.3;
 h = 0.04;
 class Attributes 
 {
 align = "center";
 };
 };
 class az : husky_RscButtonMenu
 {
 idc = -1;
 text = "Alles klar!";
 colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
 onButtonClick = "closeDialog 0;";
 x = 0.5825;
 y = 0.88;
 w = 0.3;
 h = 0.04;
 class Attributes 
 {
 align = "center";
 }; 
 };
 };
};