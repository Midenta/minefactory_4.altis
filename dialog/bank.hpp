////////////////////////////////////////////////////////////////////////////									      
//////           Dialog edited by Brizi Jaeger 
//////			 Picture MatzeDesign            					  //////
//////           Minefactory.eu 							      //////
//////           Thieves										      //////
////////////////////////////////////////////////////////////////////////////

/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
class husky_atm_management {
   idd = 2700;
   name = "husky_atm_management";
   movingenable = 0;
   enablesimulation = 1;

   class controlsBackground
   {
       class husky_RscTitleBackground : husky_RscPicture
       {
           text = "textures\menus\BankBGNeu.paa";
           idc = -1;
           x = 0.138043 * safezoneW + safezoneX;
           y = 0.090224 * safezoneH + safezoneY;
           w = 0.728427 * safezoneW;
           h = 0.828686 * safezoneH;
       };
   };
   class controls
   {
       class CashTitle : husky_RscStructuredText
       {
           idc = 2701;
           x = 0.4282 * safezoneW + safezoneX;
           y = 0.314649140018921 * safezoneH + safezoneY;
           w = 0.074925 * safezoneW;
           h = 0.208529667928098 * safezoneH;
       };
       class WithdrawButton : husky_RscButtonMenu
       {
           text = "";
           tooltip = "Klicke hier um den ausgewählten Betrag abzuheben!";
           onbuttonclick = "[] call husky_fnc_bankWithdraw";
           x = 0.5099735 * safezoneW + safezoneX;
           y = 0.414690900662252 * safezoneH + safezoneY;
           w = 0.060339 * safezoneW;
           h = 0.0205030444654683 * safezoneH;
           colorbackground[] = {-1,-1,-1,-1};
           colorbackgroundfocused[] = {1,1,1,0.12};
           colorbackground2[] = {0.75,0.75,0.75,0.2};
           color[] = {1,1,1,1};
           colorfocused[] = {0,0,0,0};
           color2[] = {0,0,0,0};
           colortext[] = {1,1,1,1};
           colordisabled[] = {1,0,0,0.1};
       };
       class DepositButton : husky_RscButtonMenu
       {
           text = "";
           tooltip = "Klicke hier um den ausgewählten Betrag einzuzahlen!";
           onbuttonclick = "[] call husky_fnc_bankDeposit";
           x = 0.5099735 * safezoneW + safezoneX;
           y = 0.339004997161779 * safezoneH + safezoneY;
           w = 0.060339 * safezoneW;
           h = 0.0205030444654683 * safezoneH;
           colorbackground[] = {-1,-1,-1,-1};
           colorbackgroundfocused[] = {1,1,1,0.12};
           colorbackground2[] = {0.75,0.75,0.75,0.2};
           color[] = {1,1,1,1};
           colorfocused[] = {0,0,0,0};
           color2[] = {0,0,0,0};
           colortext[] = {1,1,1,1};
           colordisabled[] = {1,0,0,0.1};
       };
       class moneyEdit : husky_RscEdit
       {
           idc = 2702;
           text = "10000";
           sizeex = 0.030;
           x = 0.4282 * safezoneW + safezoneX;
           y = 0.575765507095554 * safezoneH + safezoneY;
           w = 0.1483625 * safezoneW;
           h = 0.023606 * safezoneH;
       };
       class PlayerList : husky_RscCombo
       {
           idc = 2703;
           x = 0.5099735 * safezoneW + safezoneX;
           y = 0.521093361400189 * safezoneH + safezoneY;
           w = 0.060339 * safezoneW;
           h = 0.019672 * safezoneH;
       };
       class TransferButton : husky_RscButtonMenu
       {
           text = "";
           tooltip = "Klicke hier um deinen ausgewählten Betrag zu überweisen!";
           onbuttonclick = "[] call husky_fnc_bankTransfer";
           x = 0.5099735 * safezoneW + safezoneX;
           y = 0.492268951750236 * safezoneH + safezoneY;
           w = 0.060339 * safezoneW;
           h = 0.0205030444654684 * safezoneH;
           colorbackground[] = {-1,-1,-1,-1};
           colorbackgroundfocused[] = {1,1,1,0.12};
           colorbackground2[] = {0.75,0.75,0.75,0.2};
           color[] = {1,1,1,1};
           colorfocused[] = {0,0,0,0};
           color2[] = {0,0,0,0};
           colortext[] = {1,1,1,1};
           colordisabled[] = {1,0,0,0.1};
       };
       /*class GangWithdraw : TransferButton
       {
           idc = 2705;
           text = "";
           tooltip = "Ausgewählten Betrag vom Gangkonto abheben?";
           onbuttonclick = "[] call husky_fnc_gangWithdraw";
           x = 0.5183165 * safezoneW + safezoneX;
           y = 0.649690796594134 * safezoneH + safezoneY;
           w = 0.047924 * safezoneW;
           h = 0.019672 * safezoneH;
           colorbackground[] = {-1,-1,-1,-1};
           colorbackgroundfocused[] = {1,1,1,0.12};
           colorbackground2[] = {0.75,0.75,0.75,0.2};
           color[] = {1,1,1,1};
           colorfocused[] = {0,0,0,0};
           color2[] = {0,0,0,0};
           colortext[] = {1,1,1,1};
           colordisabled[] = {1,0,0,0.1};
       };
       class GangDeposit : TransferButton
       {
           idc = 2706;
           text = "";
           tooltip = "Ausgewählten Betrag vom Gangkonto einzahlen?";
           onbuttonclick = "[] call husky_fnc_gangDeposit";
           x = 0.4282 * safezoneW + safezoneX;
           y = 0.649690796594134 * safezoneH + safezoneY;
           w = 0.047404 * safezoneW;
           h = 0.019672 * safezoneH;
           colorbackground[] = {-1,-1,-1,-1};
           colorbackgroundfocused[] = {1,1,1,0.12};
           colorbackground2[] = {0.75,0.75,0.75,0.2};
           color[] = {1,1,1,1};
           colorfocused[] = {0,0,0,0};
           color2[] = {0,0,0,0};
           colortext[] = {1,1,1,1};
           colordisabled[] = {1,0,0,0.1};
       };*/
       class DepositALLButton : husky_RscButtonMenu
       {
           text = "";
           onbuttonclick = "[] call husky_fnc_bankDepositAll";
           x = 0.5099735 * safezoneW + safezoneX;
           y = 0.376847948912015 * safezoneH + safezoneY;
           w = 0.060339 * safezoneW;
           h = 0.0205030444654683 * safezoneH;
           colorbackground[] = {-1,-1,-1,-1};
           colorbackgroundfocused[] = {1,1,1,0.12};
           colorbackground2[] = {0.75,0.75,0.75,0.2};
           color[] = {1,1,1,1};
           colorfocused[] = {0,0,0,0};
           color2[] = {0,0,0,0};
           colortext[] = {1,1,1,1};
           colordisabled[] = {1,0,0,0.1};
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
