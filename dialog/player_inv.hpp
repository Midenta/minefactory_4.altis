#include "player_sys.sqf"
class playerSettings
{
	idd = playersys_DIALOG;
	name = "playerSettings";
	movingenable = 1;
	enablesimulation = 1;
	onload = "[] spawn husky_fnc_keyMenu;";
	
	class ControlsBackground
	{
		class husky_RscTitleBackground_hintergrund : husky_RscPicture 
		{
			idc = -1;
			text = "textures\Menus\TrunkPic.paa";
			x = safeZoneX + safeZoneW * -0.0775;
			y = safeZoneY + safeZoneH * 0.01;
			w = safeZoneW * 1.16;
			h = safeZoneH * 0.89;
			colorbackground[] = {1,1,1,0};
			
		};
		class husky_RscTitleBackground : husky_RscText 
		{
			idc = -1;
			x = safeZoneX + safeZoneW * 0.16125;
			y = safeZoneY + safeZoneH * 0.17111112;
			w = safeZoneW * 0.685;
			h = safeZoneH * 0.04;
			
		};
		class MainBackground : husky_RscText 
		{
			idc = -1;
			x = safeZoneX + safeZoneW * 0.16125;
			y = safeZoneY + safeZoneH * 0.21555556;
			w = safeZoneW * 0.685;
			h = safeZoneH * 0.56666667;
			colorBackground[] = {0,0,0,0.7};
			
		};
		class Title : husky_RscTitle 
		{
			idc = -1;
			x = safeZoneX + safeZoneW * 0.16125;
			y = safeZoneY + safeZoneH * 0.19222223;
			w = safeZoneW * 0.685;
			h = safeZoneH * 0.02;
			text = "$STR_PM_Title";
			colorBackground[] = {0,0,0,0};
			font = "PuristaMedium";
			
		};
		class PlayersName : husky_RscStructuredText 
		{
			idc = 2009;
			x = safeZoneX + safeZoneW * 0.773125;
			y = safeZoneY + safeZoneH * 0.24111112;
			w = safeZoneW * 0.06375;
			h = safeZoneH * 0.02;
			style = 1;
			text = "";
			colorBackground[] = {1,1,1,0};
			class Attributes
            {
                font = "PuristaMedium";
                align = "right";
            };
			
		};
		class uc : husky_RscStructuredText 
		{
			idc = -1;
			x = safeZoneX + safeZoneW * 0.16125;
			y = safeZoneY + safeZoneH * 0.16;
			w = safeZoneW * 0.685;
			h = safeZoneH * 0.03888889;
			text = "Minefactory.eu";
			size = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 2);
			colorBackground[] = {0,0,0,0};
			class Attributes
			{
				font = "PuristaMedium";
				color = "#ffffff";
				align = "center";
				
			};
			
		};
		class moneyStatusInfo : husky_RscStructuredText 
		{
			idc = 2015;
			x = safeZoneX + safeZoneW * 0.17125;
			y = safeZoneY + safeZoneH * 0.27111112;
			w = safeZoneW * 0.1275;
			h = safeZoneH * 0.11666667;
			colorBackground[] = {0,0,0,0.7059};
			class Attributes
			{
				font = "PuristaMedium";
				color = "#ffffff";
				align = "left";
				
			};
			
		};
		
	};
	class Controls
	{
		class itemHeader : husky_RscText 
		{
			idc = -1;
			x = safeZoneX + safeZoneW * 0.67;
			y = safeZoneY + safeZoneH * 0.24111112;
			w = safeZoneW * 0.168125;
			h = safeZoneH * 0.02;
			text = "$STR_PM_cItems";
			font = "PuristaMedium";
			sizeEx = 0.04;
			
		};
		class licenseHeader : husky_RscText 
		{
			idc = -1;
			x = safeZoneX + safeZoneW * 0.310625;
			y = safeZoneY + safeZoneH * 0.24111112;
			w = safeZoneW * 0.166875;
			h = safeZoneH * 0.02;
			text = "$STR_PM_Licenses";
			font = "PuristaMedium";
			sizeEx = 0.04;
			
		};
		class moneySHeader : husky_RscText 
		{
			idc = -1;
			x = safeZoneX + safeZoneW * 0.171875;
			y = safeZoneY + safeZoneH * 0.24111112;
			w = safeZoneW * 0.126875;
			h = safeZoneH * 0.02;
			text = "$STR_PM_MoneyStats";
			font = "PuristaMedium";
			sizeEx = 0.04;
			
		};
		class itemList : husky_RscListBox 
		{
			idc = 2005;
			x = safeZoneX + safeZoneW * 0.67;
			y = safeZoneY + safeZoneH * 0.27111112;
			w = safeZoneW * 0.168125;
			h = safeZoneH * 0.25;
			colorBackground[] = {0,0,0,0.7059};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = 0.030;
			colorSelectBackground[] = {0,0,0,1};
			class ListScrollBar
			{
				color[] = {1,1,1,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
				
			};
			
		};
		class moneyEdit : husky_RscEdit 
		{
			idc = 2018;
			x = safeZoneX + safeZoneW * 0.17125;
			y = safeZoneY + safeZoneH * 0.39222223;
			w = safeZoneW * 0.1275;
			h = safeZoneH * 0.02;
			text = "1";
			colorSelection[] = {1,0,0,1};
			font = "PuristaMedium";
			sizeEx = 0.030;
			
		};
		class NearPlayers : husky_RscCombo 
		{
			idc = 2022;
			x = safeZoneX + safeZoneW * 0.17125;
			y = safeZoneY + safeZoneH * 0.41666667;
			w = safeZoneW * 0.1275;
			h = safeZoneH * 0.02;
			font = "PuristaMedium";
			class ComboScrollBar
			{
				color[] = {1,1,1,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
				
			};
			
		};
		class moneyDrop : husky_RscButtonMenu 
		{
			idc = 2001;
			x = safeZoneX + safeZoneW * 0.193125;
			y = safeZoneY + safeZoneH * 0.44111112;
			w = safeZoneW * 0.08125;
			h = safeZoneH * 0.02;
			text = "Geben";
			sizeEx = 0.025;
			onButtonClick = "[] call husky_fnc_giveMoney;";
			class Attributes
            {
                font = "PuristaMedium";
                align = "center";
            };
			class TextPos
			{
				left = "0.25 * (((safezoneW / safezoneH) min 1.2) / 40)";
				top = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) - (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)) / 2";
				right = 0.005;
				bottom = 0.0;
			};
			
		};
		class itemEdit : husky_RscEdit 
		{
			idc = 2010;
			x = safeZoneX + safeZoneW * 0.670625;
			y = safeZoneY + safeZoneH * 0.53111112;
			w = safeZoneW * 0.028125;
			h = safeZoneH * 0.02;
			text = "1";
			colorSelection[] = {1,0,0,1};
			font = "PuristaMedium";
			sizeEx = 0.030;
			
		};
		class iNearPlayers : husky_RscCombo 
		{
			idc = 2023;
			x = safeZoneX + safeZoneW * 0.7025;
			y = safeZoneY + safeZoneH * 0.53111112;
			w = safeZoneW * 0.134375;
			h = safeZoneH * 0.02;
			font = "PuristaMedium";
			class ComboScrollBar
			{
				color[] = {1,1,1,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
				
			};
			
		};
		class DropButton : husky_RscButtonMenu 
		{
			idc = 2002;
			x = safeZoneX + safeZoneW * 0.756875;
			y = safeZoneY + safeZoneH * 0.55777778;
			w = safeZoneW * 0.083125;
			h = safeZoneH * 0.02;
			text = "Geben";
			onButtonClick = "[] call husky_fnc_giveItem;";
			class Attributes
            {
                font = "PuristaMedium";
                align = "center";
				valign = "center";
            };
			
		};
		class UseButton : husky_RscButtonMenu 
		{
			idc = 1000;
			x = safeZoneX + safeZoneW * 0.670625;
			y = safeZoneY + safeZoneH * 0.58111112;
			w = safeZoneW * 0.169375;
			h = safeZoneH * 0.02;
			text = "Benutzen";
			onButtonClick = "[] call husky_fnc_useItem;";
			class Attributes
            {
                font = "PuristaMedium";
                align = "center";
				valign = "center";
            };
			
		};
		class RemoveButton : husky_RscButtonMenu 
		{
			idc = 1000;
			x = safeZoneX + safeZoneW * 0.67;
			y = safeZoneY + safeZoneH * 0.55777778;
			w = safeZoneW * 0.083125;
			h = safeZoneH * 0.02;
			text = "Entfernen";
			onButtonClick = "[] call husky_fnc_removeItem;";
			class Attributes
            {
                font = "PuristaMedium";
                align = "center";
            };
			
		};
		class ButtonClose : husky_RscButtonMenu 
		{
			idc = 1000;
			x = safeZoneX + safeZoneW * 0.72625;
			y = safeZoneY + safeZoneH * 0.74222223;
			w = safeZoneW * 0.110625;
			h = safeZoneH * 0.03;
			text = "Schließen";
			onButtonClick = "closeDialog 0;";
			class Attributes
            {
                font = "PuristaMedium";
                align = "center";
            };
			
		};
		class ButtonSettings : husky_RscButtonMenu 
		{
			idc = 1000;
			x = safeZoneX + safeZoneW * 0.67625;
			y = safeZoneY + safeZoneH * 0.65666667;
			w = safeZoneW * 0.110625;
			h = safeZoneH * 0.03;
			text = "Einstellungen";
			onButtonClick = "[] call husky_fnc_settingsMenu;";
			class Attributes
            {
                font = "PuristaMedium";
                align = "center";
            };
			
		};
		class keyHeader : husky_RscText 
		{
			idc = -1;
			x = safeZoneX + safeZoneW * 0.489375;
			y = safeZoneY + safeZoneH * 0.24111112;
			w = safeZoneW * 0.166875;
			h = safeZoneH * 0.02;
			text = "Schlüssel";
			font = "PuristaMedium";
			sizeEx = 0.04;
			
		};
		class KeyChainList : husky_RscListBox 
		{
			idc = 2701;
			x = safeZoneX + safeZoneW * 0.489375;
			y = safeZoneY + safeZoneH * 0.27111112;
			w = safeZoneW * 0.168125;
			h = safeZoneH * 0.25;
			colorBackground[] = {0,0,0,0.7059};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = 0.035;
			colorSelectBackground[] = {0,0,0,1};
			class ListScrollBar
			{
				color[] = {1,1,1,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
				
			};
			
		};
		class kNearPlayers : husky_RscCombo 
		{
			idc = 2702;
			x = safeZoneX + safeZoneW * 0.489375;
			y = safeZoneY + safeZoneH * 0.53111112;
			w = safeZoneW * 0.16625;
			h = safeZoneH * 0.02;
			font = "PuristaMedium";
			class ComboScrollBar
			{
				color[] = {1,1,1,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
				
			};
			
		};
		class DropKey : husky_RscButtonMenu 
		{
			idc = -1;
			x = safeZoneX + safeZoneW * 0.489375;
			y = safeZoneY + safeZoneH * 0.55777778;
			w = safeZoneW * 0.07875;
			h = safeZoneH * 0.02;
			text = "Wegewerfen";
			onButtonClick = "[] call husky_fnc_keyDrop;";
			class Attributes
            {
                font = "PuristaMedium";
                align = "center";
            };
			
		};
		class GiveKey : husky_RscButtonMenu 
		{
			idc = 2703;
			x = safeZoneX + safeZoneW * 0.57375;
			y = safeZoneY + safeZoneH * 0.55777778;
			w = safeZoneW * 0.083125;
			h = safeZoneH * 0.02;
			text = "Geben";
			onButtonClick = "[] call husky_fnc_keyGive;";
			class Attributes
            {
                font = "PuristaMedium";
                align = "center";
            };
			
		};
		class Licenses_Menu : husky_RscListBox 
		{
			idc = 2014;
			x = safeZoneX + safeZoneW * 0.310625;
			y = safeZoneY + safeZoneH * 0.27111112;
			w = safeZoneW * 0.168125;
			h = safeZoneH * 0.30777778;
			font = "PuristaMedium";
			sizeEx = 0.035;
			class ListScrollBar
			{
				color[] = {1,1,1,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
				
			};
			
		};
		class helpButton : husky_RscButtonMenu 
		{
			idc = 1000;
			x = safeZoneX + safeZoneW * 0.45;
			y = safeZoneY + safeZoneH * 0.65666667;
			w = safeZoneW * 0.110625;
			h = safeZoneH * 0.03;
			text = "Informationen Hilfe";
			onButtonClick = "[]spawn MrFrost_fnc_InfoMenuCreate;";
			tooltip = "Informationen & Hilfe";
			class Attributes
            {
                font = "PuristaMedium";
                align = "center";
            };
			
		};
		class ButtonCell : husky_RscButtonMenu 
		{
			idc = 20145;
			x = safeZoneX + safeZoneW * 0.67625;
			y = safeZoneY + safeZoneH * 0.62111112;
			w = safeZoneW * 0.110625;
			h = safeZoneH * 0.03;
			text = "Telefon";
			onButtonClick = "[] call husky_fnc_physicalPhone;";
			tooltip = "Handy";
			class Attributes
            {
                font = "PuristaMedium";
                align = "center";
            };
			
		};
		class aapps_notruf : husky_RscButtonMenu 
		{
			idc = 4126;
			x = safeZoneX + safeZoneW * 0.45;
			y = safeZoneY + safeZoneH * 0.69222223;
			w = safeZoneW * 0.110625;
			h = safeZoneH * 0.03;
			text = "Notrufverwaltung";
			onButtonClick = "0 call husky_call_start;";
			tooltip = "Notrufverwaltung";
			class Attributes
            {
                font = "PuristaMedium";
                align = "center";
            };
			
		};
		class ButtonSyncData : husky_RscButtonMenu 
		{
			idc = 1000;
			x = safeZoneX + safeZoneW * 0.67625;
			y = safeZoneY + safeZoneH * 0.69222223;
			w = safeZoneW * 0.110625;
			h = safeZoneH * 0.03;
			text = "Speichern";
			onButtonClick = "[] call SOCK_fnc_syncData;";
			class Attributes
            {
                font = "PuristaMedium";
                align = "center";
            };
			
		};
		class fms : husky_RscButtonMenu 
		{
			idc = 4112;
			x = safeZoneX + safeZoneW * 0.22375;
			y = safeZoneY + safeZoneH * 0.65666667;
			w = safeZoneW * 0.110625;
			h = safeZoneH * 0.03;
			text = "Funkgerät";
			onButtonClick = "[] call cat_reporting_fnc_createDialogUnit;";
			tooltip = "Funkgerät";
			class Attributes
            {
                font = "PuristaMedium";
                align = "center";
            };
			
		};
		class Buttonleitstelle : husky_RscButtonMenu 
		{
			idc = 4115;
			x = safeZoneX + safeZoneW * 0.22375;
			y = safeZoneY + safeZoneH * 0.62111112;
			w = safeZoneW * 0.110625;
			h = safeZoneH * 0.03;
			text = "Leitstelle";
			onButtonClick = "[] call cat_reporting_fnc_createDialogControlCenter;";
			tooltip = "Leitstelle";
			class Attributes
            {
                font = "PuristaMedium";
                align = "center";
            };
			
		};
		class fms_cop : husky_RscButtonMenu 
		{
			idc = 4114;
			x = safeZoneX + safeZoneW * 0.336875;
			y = safeZoneY + safeZoneH * 0.62111112;
			w = safeZoneW * 0.110625;
			h = safeZoneH * 0.03;
			text = "Funk-Melde-System";
			onButtonClick = "[0] call husky_fnc_fms;";
			tooltip = "Funk-Melde-System";
			class Attributes
            {
                font = "PuristaMedium";
                align = "center";
            };
			
		};
		class fms_med : husky_RscButtonMenu 
		{
			idc = 4113;
			x = safeZoneX + safeZoneW * 0.336875;
			y = safeZoneY + safeZoneH * 0.62111112;
			w = safeZoneW * 0.110625;
			h = safeZoneH * 0.03;
			text = "Funk-Melde-System";
			onButtonClick = "[0] call husky_fnc_fms_med;";
			tooltip = "Funk-Melde-System";
			class Attributes
            {
                font = "PuristaMedium";
                align = "center";
            };
			
		};
		class absperrungen : husky_RscButtonMenu 
		{
			idc = 3333;
			x = safeZoneX + safeZoneW * 0.563125;
			y = safeZoneY + safeZoneH * 0.69222223;
			w = safeZoneW * 0.110625;
			h = safeZoneH * 0.03;
			text = "Absperrungen";
			onButtonClick = "closeDialog 0; 0 spawn husky_fnc_placeablesMenu;";
			class Attributes
            {
                font = "PuristaMedium";
                align = "center";
            };
			
		};
		class adminmenu : husky_RscButtonMenu 
		{
			idc = 2021;
			x = safeZoneX + safeZoneW * 0.17625;
			y = safeZoneY + safeZoneH * 0.47444445;
			w = safeZoneW * 0.110625;
			h = safeZoneH * 0.03;
			text = "$STR_PM_AdminMenu";
			onButtonClick = "[] call husky_fnc_adminevent;";
			class Attributes
            {
                font = "PuristaMedium";
                align = "center";
            };
			
		};
		class ButtonMarket : husky_RscButtonMenu 
		{
			idc = 2025;
			x = safeZoneX + safeZoneW * 0.563125;
			y = safeZoneY + safeZoneH * 0.62111112;
			w = safeZoneW * 0.110625;
			h = safeZoneH * 0.03;
			text = "Börse";
			onButtonClick = "createDialog ""husky_dynmarket_prices"";";
			tooltip = "Börse";
			class Attributes
            {
                font = "PuristaMedium";
                align = "center";
            };
			
		};
		class ButtonRepair : husky_RscButtonMenu 
		{
			idc = 5123;
			x = safeZoneX + safeZoneW * 0.563125;
			y = safeZoneY + safeZoneH * 0.62111112;
			w = safeZoneW * 0.110625;
			h = safeZoneH * 0.03;
			text = "Repair";
			onButtonClick = "[] call toxic_fnc_repairSystem; closeDialog 0;";
			tooltip = "Repariert defekte Objekte";
			class Attributes
            {
                font = "PuristaMedium";
                align = "center";
            };
			
		};
		class ButtonMyGang : husky_RscButtonMenu 
		{
			idc = 2011;
			x = safeZoneX + safeZoneW * 0.336875;
			y = safeZoneY + safeZoneH * 0.62111112;
			w = safeZoneW * 0.110625;
			h = safeZoneH * 0.03;
			text = "$STR_PM_MyGang";
			onButtonClick = "0 call husky_fnc_gang_openDialog;";
			class Attributes
            {
                font = "PuristaMedium";
                align = "center";
            };
			
		};
		class Buttonbug : husky_RscButtonMenu 
		{
			idc = 500;
			x = safeZoneX + safeZoneW * 0.563125;
			y = safeZoneY + safeZoneH * 0.65666667;
			w = safeZoneW * 0.110625;
			h = safeZoneH * 0.03;
			text = "Bugtracker";
			onButtonClick = "createDialog ""Bugtracker"";";
			tooltip = "Bugtracker";
			class Attributes
            {
                font = "PuristaMedium";
                align = "center";
            };
			
		};
		class crafting : husky_RscButtonMenu 
		{
			idc = 5556;
			x = safeZoneX + safeZoneW * 0.33625;
			y = safeZoneY + safeZoneH * 0.65666667;
			w = safeZoneW * 0.110625;
			h = safeZoneH * 0.03;
			text = "Crafting";
			onButtonClick = "closeDialog 0; [""craft_uran""] spawn cat_crafting_fnc_craft;";
			tooltip = "Crafting";
			class Attributes
            {
                font = "PuristaMedium";
                align = "center";
            };
			
		};
		class ButtonGambling : husky_RscButtonMenu 
		{
			idc = 2027;
			x = safeZoneX + safeZoneW * 0.45;
			y = safeZoneY + safeZoneH * 0.62111112;
			w = safeZoneW * 0.110625;
			h = safeZoneH * 0.03;
			text = "Gambling";
			onButtonClick = "createDialog ""GamblingDia"";";
			class Attributes
            {
                font = "PuristaMedium";
                align = "center";
            };
			
		};
		
	};
	
};
