/////////////////////////////////////////////////////////////////
/////////// This File was Edited by GUI D3V by Shinji ///////////
/////////////////////////////////////////////////////////////////
class ausweisezeigen
{
	idd = 85000;
	movingEnable = false;
	enableSimulation = true;
	
	class ControlsBackground
	{
		class background : husky_RscPicture 
		{
			idc = -1;
			x = safeZoneX + safeZoneW * 0.348125;
			y = safeZoneY + safeZoneH * 0.21666667;
			w = safeZoneW * 0.3125;
			h = safeZoneH * 0.55444445;
			text = "textures\Menus\importentdocuments\display_LicneceMenu.paa";
		};
		class titel_importent_documents : husky_RscStructuredText 
		{
			idc = 1004;
			x = safeZoneX + safeZoneW * 0.4175;
			y = safeZoneY + safeZoneH * 0.25444445;
			w = safeZoneW * 0.184375;
			h = safeZoneH * 0.02888889;
			text = "Wichtige Dokumente";
			colorText[] = {1,1,1,1};
			class Attributes
            {
                font = "PuristaMedium";
                align = "center";
            };
			
		};
		
	};
	class Controls
	{
		class Button_Document_1 : husky_RscPictureButton 
		{
			idc = 85001;
			x = safeZoneX + safeZoneW * 0.40125;
			y = safeZoneY + safeZoneH * 0.3;
			w = safeZoneW * 0.043125;
			h = safeZoneH * 0.07555556;
			text = "";
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class Button_Document_2 : husky_RscPictureButton 
		{
			idc = 85002;
			x = safeZoneX + safeZoneW * 0.45875;
			y = safeZoneY + safeZoneH * 0.3;
			w = safeZoneW * 0.043125;
			h = safeZoneH * 0.07555556;
			text = "";
			font = "PuristaMedium";
			
			
		};
		class Button_Document_3 : husky_RscPictureButton 
		{
			idc = 85003;
			x = safeZoneX + safeZoneW * 0.51625;
			y = safeZoneY + safeZoneH * 0.3;
			w = safeZoneW * 0.043125;
			h = safeZoneH * 0.07555556;
			text = "";
			font = "PuristaMedium";
			
			
		};
		class Button_Document_4 : husky_RscPictureButton 
		{
			idc = 85004;
			x = safeZoneX + safeZoneW * 0.5725;
			y = safeZoneY + safeZoneH * 0.29888889;
			w = safeZoneW * 0.043125;
			h = safeZoneH * 0.07555556;
			text = "";
			font = "PuristaMedium";
			
			
		};
		class Button_Document_5 : husky_RscPictureButton 
		{
			idc = 85005;
			x = safeZoneX + safeZoneW * 0.401875;
			y = safeZoneY + safeZoneH * 0.38777778;
			w = safeZoneW * 0.043125;
			h = safeZoneH * 0.07555556;
			text = "";
			font = "PuristaMedium";
			
			
		};
		class Button_Document_6 : husky_RscPictureButton 
		{
			idc = 85006;
			x = safeZoneX + safeZoneW * 0.45875;
			y = safeZoneY + safeZoneH * 0.38777778;
			w = safeZoneW * 0.043125;
			h = safeZoneH * 0.07555556;
			text = "";
			font = "PuristaMedium";
			
			
		};
		class Button_Document_7 : husky_RscPictureButton 
		{
			idc = 85007;
			x = safeZoneX + safeZoneW * 0.515625;
			y = safeZoneY + safeZoneH * 0.38888889;
			w = safeZoneW * 0.043125;
			h = safeZoneH * 0.07555556;
			text = "";
			font = "PuristaMedium";
			
			
		};
		class Button_Document_8 : husky_RscPictureButton 
		{
			idc = 85008;
			x = safeZoneX + safeZoneW * 0.5725;
			y = safeZoneY + safeZoneH * 0.38777778;
			w = safeZoneW * 0.043125;
			h = safeZoneH * 0.07555556;
			text = "";
			font = "PuristaMedium";
			
			
		};
		class Button_Document_10 : husky_RscPictureButton 
		{
			idc = 850010;
			x = safeZoneX + safeZoneW * 0.459375;
			y = safeZoneY + safeZoneH * 0.47666667;
			w = safeZoneW * 0.043125;
			h = safeZoneH * 0.07555556;
			text = "";
			font = "PuristaMedium";
			
			
		};
		class Button_Document_9 : husky_RscPictureButton 
		{
			idc = 85009;
			x = safeZoneX + safeZoneW * 0.401875;
			y = safeZoneY + safeZoneH * 0.47666667;
			w = safeZoneW * 0.043125;
			h = safeZoneH * 0.07555556;
			text = "";
			font = "PuristaMedium";
			
			
		};
		class Button_Close : husky_RscButtonMenu 
		{
			idc = -1;
			x = safeZoneX + safeZoneW * 0.396875;
			y = safeZoneY + safeZoneH * 0.72444445;
			w = safeZoneW * 0.214375;
			h = safeZoneH * 0.02333334;
			text = "Schließen";
            onbuttonclick = "closeDialog 0;";
			borderSize = 0;
			colorBackground[] = {0,0.698,1,1};
			colorBackgroundActive[] = {0.2452,0.5833,0.7295,1};
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