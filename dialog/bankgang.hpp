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
	name= "husky_atm_menu";
	movingEnable = 0;
	enableSimulation = 1;




	class controlsBackground {
		class husky_RscTitleBackground: husky_RscPicture {
			text = "textures\menus\BankBGNeu.paa";
			idc = -1;
            x = 0.138043 * safezoneW + safezoneX;
            y = 0.090224 * safezoneH + safezoneY;
            w = 0.728427 * safezoneW;
            h = 0.828686 * safezoneH;
		};
	};

	class controls {
		class CashTitle: husky_RscStructuredText {
			idc = 2701;
			text = "";
            x = 0.437575 * safezoneW + safezoneX;
            y = 0.287213 * safezoneH + safezoneY;
            w = 0.129189 * safezoneW;
            h = 0.066885 * safezoneH;
		};

		/*class Title: husky_RscTitle {
			colorBackground[] = {0, 0, 0, 0};
			idc = -1;
			text = "$STR_ATM_Title";
			x = 0.35;
			y = 0.2;
			w = 0.6;
			h = (1 / 25);
		};*/ // wird nicht benötigt wenn du es selber einbauen willst viel spass ^^ 


		class WithdrawButton: husky_RscButtonMenu {
			idc = -1;
			text = "";
			tooltip = "Klicke hier um den ausgewählten Betrag abzuheben!";
			onButtonClick = "[] call husky_fnc_bankWithdraw";
            x = 0.478207 * safezoneW + safezoneX;
            y = 0.454426 * safezoneH + safezoneY;
            w = 0.047924 * safezoneW;
            h = 0.018688 * safezoneH;
			colorBackground[] = {-1,-1,-1,-1};
			colorBackgroundFocused[] = {1,1,1,0.12};
			colorBackground2[] = {0.75,0.75,0.75,0.2};
			color[] = {1,1,1,1};
			colorFocused[] = {0,0,0,0};
			color2[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			colorDisabled[] = {1,0,0,0.1};
		};

		class DepositButton: husky_RscButtonMenu {
			idc = -1;
			text = "";
			tooltip = "Klicke hier um den ausgewählten Betrag einzuzahlen!";
			onButtonClick = "[] call husky_fnc_bankDeposit";
            x = 0.425594 * safezoneW + safezoneX;
            y = 0.454426 * safezoneH + safezoneY;
            w = 0.048445 * safezoneW;
            h = 0.019672 * safezoneH;
			colorBackground[] = {-1,-1,-1,-1};
			colorBackgroundFocused[] = {1,1,1,0.12};
			colorBackground2[] = {0.75,0.75,0.75,0.2};
			color[] = {1,1,1,1};
			colorFocused[] = {0,0,0,0};
			color2[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			colorDisabled[] = {1,0,0,0.1};
		};
		
		class moneyEdit: husky_RscEdit {
			idc = 2702;
			text = "10000";
			sizeEx = 0.030;
            x = 0.437575 * safezoneW + safezoneX;
            y = 0.416278 * safezoneH + safezoneY;
            w = 0.128148 * safezoneW;
            h = 0.023606 * safezoneH;
		};

		class PlayerList: husky_RscCombo {
			idc = 2703;
            x = 0.437575 * safezoneW + safezoneX;
            y = 0.490819 * safezoneH + safezoneY;
            w = 0.128147 * safezoneW;
            h = 0.019672 * safezoneH;
		};

		class TransferButton: husky_RscButtonMenu {
			idc = -1;
			text = "";
			tooltip = "Klicke hier um deinen ausgewählten Betrag zu überweisen!";
			onButtonClick = "[] call husky_fnc_bankTransfer";
            x = 0.529779 * safezoneW + safezoneX;
            y = 0.454426 * safezoneH + safezoneY;
            w = 0.048445 * safezoneW;
            h = 0.018688 * safezoneH;
			colorBackground[] = {-1,-1,-1,-1};
			colorBackgroundFocused[] = {1,1,1,0.12};
			colorBackground2[] = {0.75,0.75,0.75,0.2};
			color[] = {1,1,1,1};
			colorFocused[] = {0,0,0,0};
			color2[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			colorDisabled[] = {1,0,0,0.1};
		};

		
		class GangWithdraw : TransferButton {
			idc = 2705;
			text = "";
			tooltip = "Ausgewählten Betrag vom Gangkonto abheben?";
			onButtonClick = "[] call husky_fnc_gangWithdraw";
            x = 0.504254 * safezoneW + safezoneX;
            y = 0.588196 * safezoneH + safezoneY;
            w = 0.047924 * safezoneW;
            h = 0.019672 * safezoneH;
			colorBackground[] = {-1,-1,-1,-1};
			colorBackgroundFocused[] = {1,1,1,0.12};
			colorBackground2[] = {0.75,0.75,0.75,0.2};
			color[] = {1,1,1,1};
			colorFocused[] = {0,0,0,0};
			color2[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			colorDisabled[] = {1,0,0,0.1};
		};

		class GangDeposit : TransferButton {
			idc = 2706;
			text = "";
			tooltip = "Ausgewählten Betrag vom Gangkonto einzahlen?";
			onButtonClick = "[] call husky_fnc_gangDeposit";
            x = 0.452161 * safezoneW + safezoneX;
            y = 0.587212 * safezoneH + safezoneY;
            w = 0.047404 * safezoneW;
            h = 0.019672 * safezoneH;
			colorBackground[] = {-1,-1,-1,-1};
			colorBackgroundFocused[] = {1,1,1,0.12};
			colorBackground2[] = {0.75,0.75,0.75,0.2};
			color[] = {1,1,1,1};
			colorFocused[] = {0,0,0,0};
			color2[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			colorDisabled[] = {1,0,0,0.1};
		};	

		/*class CloseButtonKey: husky_RscButtonMenu {
			idc = -1;
			text = "Schliessen";
			onButtonClick = "closeDialog 0;";
			x = 0.276058 * safezoneW + safezoneX;
			y = 0.962393 * safezoneH + safezoneY;
			w = 0.0991833 * safezoneW;
			h = 0.0340011 * safezoneH;
		};*/
	};
};