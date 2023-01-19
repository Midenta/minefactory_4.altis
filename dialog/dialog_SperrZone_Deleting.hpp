class dialog_SperrZone_Deleting
{
	idd = 41590;
	name = "dialog_SperrZone_Deleting";
	movingEnable = false;
	enableSimulation = true;
	
	class ControlsBackground
	{
		class Main_Titel : husky_RscStructuredText 
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.34375;
			y = safeZoneY + safeZoneH * 0.23444445;
			w = safeZoneW * 0.3125;
			h = safeZoneH * 0.03;
			style = 0;
			text = "Sperrzonen Menu";
			colorBackground[] = {0,0.698,1,1};
			colorText[] = {0.8,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			shadow = 0;
			
		};
		class Main_Background : husky_RscText 
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.34375;
			y = safeZoneY + safeZoneH * 0.27;
			w = safeZoneW * 0.3125;
			h = safeZoneH * 0.39;
			style = 0;
			text = "";
			colorBackground[] = {0.102,0.102,0.102,0.8};
			colorText[] = {0.3098,0.0941,0.2549,0};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class Titel_SperrzonenList : husky_RscStructuredText 
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.35375;
			y = safeZoneY + safeZoneH * 0.27444445;
			w = safeZoneW * 0.1225;
			h = safeZoneH * 0.02;
			style = 0;
			text = "Sperrzonen Liste";
			colorBackground[] = {0.1725,0.5725,0.7451,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			shadow = 0;
			
		};
		class Titel_SperrZonen_Info : husky_RscStructuredText 
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.48375;
			y = safeZoneY + safeZoneH * 0.27444445;
			w = safeZoneW * 0.16625;
			h = safeZoneH * 0.02;
			style = 0;
			text = "Sperrzonen Menu";
			colorBackground[] = {0.1725,0.5725,0.7451,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			shadow = 0;
			
		};
		class Sperrzonen_Info_Background : husky_RscText 
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.48375;
			y = safeZoneY + safeZoneH * 0.3;
			w = safeZoneW * 0.16625;
			h = safeZoneH * 0.35;
			style = 0;
			text = "";
			colorBackground[] = {0.2,0.2,0.2,1};
			colorText[] = {0.3098,0.0941,0.2549,0};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		
	};
	class Controls
	{
		class Sperrzonen_ListBox : husky_RscListBox
		{
			idc = 41591;
			x = safeZoneX + safeZoneW * 0.35375;
			y = safeZoneY + safeZoneH * 0.29888889;
			w = safeZoneW * 0.1225;
			h = safeZoneH * 0.35111112;
			colorBackground[] = {0.2,0.2,0.2,1};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorSelect[] = {0.1725,0.5725,0.7451,1};
			colorText[] = {1,1,1,1};
			onlbselchanged = "_this call husky_fnc_SperrDeleteChange;";
			font = "PuristaMedium";
			maxHistoryDelay = 0;
			rowHeight = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1.0};
			class ListScrollBar
			{
				color[] = {1,1,1,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
				
			};
			
		};
		class Button_Close
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.34375;
			y = safeZoneY + safeZoneH * 0.66444445;
			w = safeZoneW * 0.0925;
			h = safeZoneH * 0.02;
			style = 0;
			text = "Schließen";
			onButtonClick = "closedialog 0;";
			borderSize = 0;
			colorBackground[] = {0,0.698,1,1};
			colorBackgroundActive[] = {0.1725,0.5725,0.7451,1};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.01;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			
		};
		class Button_SperrZone_Delete
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.60375;
			y = safeZoneY + safeZoneH * 0.66444445;
			w = safeZoneW * 0.0525;
			h = safeZoneH * 0.02;
			style = 0;
			text = "Löschen";
			onButtonClick = "[]spawn husky_fnc_SperrDeleteing;";
			borderSize = 0;
			colorBackground[] = {0,0.698,1,1};
			colorBackgroundActive[] = {0.1725,0.5725,0.7451,1};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.01;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			
		};
		class Button_SperrZone_Delete_All
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.53;
			y = safeZoneY + safeZoneH * 0.66444445;
			w = safeZoneW * 0.07;
			h = safeZoneH * 0.02;
			style = 0;
			text = "Alles Löschen";
			onButtonClick = "[]spawn husky_fnc_SperrDeleteingAll;";
			borderSize = 0;
			colorBackground[] = {0,0.698,1,1};
			colorBackgroundActive[] = {0.1725,0.5725,0.7451,1};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.01;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			
		};
		class Titel_Sperrzonen_Creater : husky_RscStructuredText 
		{
			type = 0;
			idc = 41592;
			x = safeZoneX + safeZoneW * 0.48625;
			y = safeZoneY + safeZoneH * 0.31444445;
			w = safeZoneW * 0.15375;
			h = safeZoneH * 0.02;
			style = 0;
			text = "Ersteller: None";
			colorBackground[] = {0.1725,0.5725,0.7451,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			shadow = 0;
			
		};
		class Titel_Sperrzonen_Titel : husky_RscStructuredText 
		{
			type = 0;
			idc = 41593;
			x = safeZoneX + safeZoneW * 0.48625;
			y = safeZoneY + safeZoneH * 0.34444445;
			w = safeZoneW * 0.15375;
			h = safeZoneH * 0.02;
			style = 0;
			text = "Zonen Titel: None";
			colorBackground[] = {0.1725,0.5725,0.7451,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			shadow = 0;
			
		};
		class Titel_Sperrzonen_Ort : husky_RscStructuredText 
		{
			type = 0;
			idc = 41594;
			x = safeZoneX + safeZoneW * 0.48625;
			y = safeZoneY + safeZoneH * 0.37444445;
			w = safeZoneW * 0.15375;
			h = safeZoneH * 0.02;
			style = 0;
			text = "Zonen Ort: None";
			colorBackground[] = {0.1725,0.5725,0.7451,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			shadow = 0;
			
		};
		class Titel_Sperrzonen_Size : husky_RscStructuredText 
		{
			type = 0;
			idc = 41595;
			x = safeZoneX + safeZoneW * 0.48625;
			y = safeZoneY + safeZoneH * 0.40444445;
			w = safeZoneW * 0.15375;
			h = safeZoneH * 0.02;
			style = 0;
			text = "Zonen Größe: None X None";
			colorBackground[] = {0.1725,0.5725,0.7451,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			shadow = 0;
			
		};
		class Titel_Sperrzonen_Message_Player : husky_RscStructuredText 
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.48375;
			y = safeZoneY + safeZoneH * 0.44444445;
			w = safeZoneW * 0.16625;
			h = safeZoneH * 0.02;
			style = 0;
			text = "Nachricht an die Spieler:";
			colorBackground[] = {0.1725,0.5725,0.7451,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			shadow = 0;
			
		};
		class Titel_Sperrzonen_Message_Player_Strucer : husky_RscStructuredText 
		{
			type = 0;
			idc = 41596;
			x = safeZoneX + safeZoneW * 0.48375;
			y = safeZoneY + safeZoneH * 0.47444445;
			w = safeZoneW * 0.16625;
			h = safeZoneH * 0.16;
			style = 0;
			text = "None";
			colorBackground[] = {0.102,0.102,0.102,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			shadow = 0;
			
		};
		
	};
	
};
