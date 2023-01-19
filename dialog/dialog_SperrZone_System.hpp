class dialog_SperrZone_System
{
	idd = 21450;
	name = "dialog_SperrZone_System";
	movingEnable = false;
	enableSimulation = true;
	
	class ControlsBackground
	{
		class Main_Background
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.29625;
			y = safeZoneY + safeZoneH * 0.25666667;
			w = safeZoneW * 0.4075;
			h = safeZoneH * 0.29333334;
			style = 0;
			text = "";
			colorBackground[] = {0.102,0.102,0.102,0.8};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class Main_Titel : husky_RscStructuredText 
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.29625;
			y = safeZoneY + safeZoneH * 0.23111112;
			w = safeZoneW * 0.4075;
			h = safeZoneH * 0.02222223;
			style = 0;
			text = "Sperrzonen Menu";
			colorBackground[] = {0,0.698,1,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			shadow = 0;
			
		};
		class Titel_Zone_Titel : husky_RscStructuredText 
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.3025;
			y = safeZoneY + safeZoneH * 0.26777778;
			w = safeZoneW * 0.063125;
			h = safeZoneH * 0.02777778;
			style = 0;
			text = "Zonen Titel:";
			colorBackground[] = {0.1742,0.5733,0.7459,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			shadow = 0;
			
		};
		class Titel_Zone_Location : husky_RscStructuredText 
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.3025;
			y = safeZoneY + safeZoneH * 0.3;
			w = safeZoneW * 0.063125;
			h = safeZoneH * 0.02777778;
			style = 0;
			text = "Zonen Ort:";
			colorBackground[] = {0.1725,0.5725,0.7451,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			shadow = 0;
			
		};
		class Titel_Zone_Message_User : husky_RscStructuredText 
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.3025;
			y = safeZoneY + safeZoneH * 0.38222223;
			w = safeZoneW * 0.394375;
			h = safeZoneH * 0.02777778;
			style = 0;
			text = "Nachricht an die Spieler:";
			colorBackground[] = {0.1725,0.5725,0.7451,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			shadow = 0;
			
		};
		class Titel_Zone_Size : husky_RscStructuredText 
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.544375;
			y = safeZoneY + safeZoneH * 0.26777778;
			w = safeZoneW * 0.065625;
			h = safeZoneH * 0.02777778;
			style = 0;
			text = "Zonen Größe:";
			colorBackground[] = {0.1725,0.5725,0.7451,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			shadow = 0;
			
		};
		class Titel_Zone_Color : husky_RscStructuredText 
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.544375;
			y = safeZoneY + safeZoneH * 0.3;
			w = safeZoneW * 0.065625;
			h = safeZoneH * 0.02777778;
			style = 0;
			text = "Zonen Farbe:";
			colorBackground[] = {0.1725,0.5725,0.7451,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			shadow = 0;
			
		};
		class Titel_Zone_Type : husky_RscStructuredText 
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.544375;
			y = safeZoneY + safeZoneH * 0.33222223;
			w = safeZoneW * 0.065625;
			h = safeZoneH * 0.02777778;
			style = 0;
			text = "Zonen Type:";
			colorBackground[] = {0.1725,0.5725,0.7451,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			shadow = 0;
			
		};
		class Titel_Zone_Shape : husky_RscStructuredText 
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.3025;
			y = safeZoneY + safeZoneH * 0.33222223;
			w = safeZoneW * 0.063125;
			h = safeZoneH * 0.02777778;
			style = 0;
			text = "Zonen Art:";
			colorBackground[] = {0.1725,0.5725,0.7451,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			shadow = 0;
			
		};
		
	};
	class Controls
	{
		class Edit_Zone_Titel : husky_RscEdit 
		{
			idc = 21451;
			x = safeZoneX + safeZoneW * 0.371875;
			y = safeZoneY + safeZoneH * 0.26777778;
			w = safeZoneW * 0.149375;
			h = safeZoneH * 0.02777778;
			text = "";
			colorBackground[] = {0.2,0.2,0.2,1};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorSelection[] = {1,0,0,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class Edit_Zone_Location : husky_RscEdit 
		{
			idc = 21452;
			x = safeZoneX + safeZoneW * 0.371875;
			y = safeZoneY + safeZoneH * 0.3;
			w = safeZoneW * 0.149375;
			h = safeZoneH * 0.02777778;
			text = "";
			colorBackground[] = {0.2,0.2,0.2,1};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorSelection[] = {1,0,0,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class Edit_Zone_Message_User : husky_RscEdit 
		{
			idc = 21453;
			x = safeZoneX + safeZoneW * 0.3025;
			y = safeZoneY + safeZoneH * 0.41444445;
			w = safeZoneW * 0.394375;
			h = safeZoneH * 0.12777778;
			text = "";
			style = 0+16;
			colorBackground[] = {0.2,0.2,0.2,1};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorSelection[] = {1,0,0,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class Edit_Zone_Size_firstNumber : husky_RscEdit 
		{
			idc = 21455;
			x = safeZoneX + safeZoneW * 0.61625;
			y = safeZoneY + safeZoneH * 0.26777778;
			w = safeZoneW * 0.0375;
			h = safeZoneH * 0.02777778;
			text = "100";
			colorBackground[] = {0.2,0.2,0.2,1};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorSelection[] = {1,0,0,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class Edit_Zone_Size_secondNumber : husky_RscEdit 
		{
			idc = 21456;
			x = safeZoneX + safeZoneW * 0.66;
			y = safeZoneY + safeZoneH * 0.26777778;
			w = safeZoneW * 0.0375;
			h = safeZoneH * 0.02777778;
			text = "100";
			colorBackground[] = {0.2,0.2,0.2,1};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorSelection[] = {1,0,0,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class Edit_Zone_color : husky_RscCombo 
		{
			idc = 21457;
			x = safeZoneX + safeZoneW * 0.61625;
			y = safeZoneY + safeZoneH * 0.3;
			w = safeZoneW * 0.08125;
			h = safeZoneH * 0.02777778;
			text = "";
			colorBackground[] = {0.2,0.2,0.2,1};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorSelection[] = {1,0,0,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class Edit_Zone_Type : husky_RscCombo 
		{
			idc = 21458;
			x = safeZoneX + safeZoneW * 0.61625;
			y = safeZoneY + safeZoneH * 0.33222223;
			w = safeZoneW * 0.08125;
			h = safeZoneH * 0.02777778;
			text = "Types Zone";
			autocomplete = "";
			colorBackground[] = {0.2,0.2,0.2,1};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorSelection[] = {1,0,0,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class Edit_Zone_Shape : husky_RscCombo 
		{
			idc = 21459;
			x = safeZoneX + safeZoneW * 0.371875;
			y = safeZoneY + safeZoneH * 0.33222223;
			w = safeZoneW * 0.149375;
			h = safeZoneH * 0.02777778;
			text = "Zonen Shape";
			autocomplete = "";
			colorBackground[] = {0.2,0.2,0.2,1};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorSelection[] = {1,0,0,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class Button_Close : husky_RscButtonMenu 
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.29625;
			y = safeZoneY + safeZoneH * 0.55444445;
			w = safeZoneW * 0.073125;
			h = safeZoneH * 0.02222223;
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
		class Button_Zone_Setzten : husky_RscButtonMenu 
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.62625;
			y = safeZoneY + safeZoneH * 0.55444445;
			w = safeZoneW * 0.0775;
			h = safeZoneH * 0.02222223;
			style = 0;
			text = "Zone Erstellen";
			onButtonClick = "[]spawn husky_fnc_SperrMap;";
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
		class Button_Zone_List : husky_RscButtonMenu 
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.53625;
			y = safeZoneY + safeZoneH * 0.55444445;
			w = safeZoneW * 0.0875;
			h = safeZoneH * 0.02222223;
			style = 0;
			text = "Sperrzonen Liste";
			onButtonClick = "[]spawn husky_fnc_SperrDeleteinit;";
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
		
	};
	
};
