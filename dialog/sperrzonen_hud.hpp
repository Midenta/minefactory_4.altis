
class husky_sperrzonen_dialog
{
	idd = 5000;
	name="husky_sperrzonen_dialog";
	movingEnable = 0;
    enableSimulation = 1;
    onLoad = "[] spawn husky_fnc_sperrZoneConfigureSlider;";
	
	class controlsBackground
	{
		class BackgroundPicture: husky_RscPicture
		{
            idc = -1;
			text = "#(argb,8,8,3)color(0.1,0.1,0.1,1)";
			x = 0.29427 * safezoneW + safezoneX;
            y = 0.28 * safezoneH + safezoneY;
            w = 0.4125 * safezoneW;
            h = 0.44 * safezoneH;
        };
		class husky_Title: husky_RscStructuredText
		{
			idc = -1;
			text = "<t size='0.9' shadow='0'>Sperrzone</t>"; //--- ToDo: Localize;
			x = 0.29375 * safezoneW + safezoneX;
            y = 0.28 * safezoneH + safezoneY;
            w = 0.4125 * safezoneW;
            h = 0.022 * safezoneH;
			colorBackground[] = {0,0,0,0};
			class Attributes {
				font = "PuristaSemiBold";
				color = "#ffffff";
				align = "center";
				shadow = 0;
			};
		};
	};
	class controls
	{	
		class EditRadius: husky_RscXSliderH
		{
			idc = 5002;
            onSliderPosChanged = "[] spawn husky_fnc_sperrZoneSliderStatus;";
            tooltip="Sperrzonen Durchmesser angeben !";
			x = 0.298905 * safezoneW + safezoneX;
            y = 0.654 * safezoneH + safezoneY;
            w = 0.402187 * safezoneW;
            h = 0.022 * safezoneH;
		};
		class btnMarkerDel: husky_RscButtonMenu
		{
			idc = -1;
			text = "X"; //--- ToDo: Localize;
			tooltip = "Sperrzone entfernen.";
			onButtonClick = "0 spawn husky_fnc_sperrzoneDel";
			x = 0.298906 * safezoneW + safezoneX;
            y = 0.687 * safezoneH + safezoneY;
            w = 0.0154688 * safezoneW;
            h = 0.022 * safezoneH;
		};
        class MapControl: husky_RscMapControl
        {
            idc = 5003;
            x = 0.298906 * safezoneW + safezoneX;
            y = 0.313 * safezoneH + safezoneY;
            w = 0.402187 * safezoneW;
            h = 0.33 * safezoneH;
        };
		class btnEinrichten: husky_RscButtonMenu
		{
			idc = -1;
			text = "Einrichten"; //--- ToDo: Localize;
			onButtonClick = "[] spawn husky_fnc_checkSperrzone";
			x = 0.618594 * safezoneW + safezoneX;
            y = 0.687 * safezoneH + safezoneY;
            w = 0.0825 * safezoneW;
            h = 0.022 * safezoneH;
		};
        class AreaEdit: husky_RscEdit
        {
            idc = 5004;
            text="";
            tooltip = "Gibt den Namen des Gebiets an !";
            x = 0.45875 * safezoneW + safezoneX;
            y = 0.687 * safezoneH + safezoneY;
            w = 0.154687 * safezoneW;
            h = 0.022 * safezoneH;
        };
		class SperrzoneRadiusZahl: husky_RscStructuredText
		{
			idc = 5005;
			text = ""; //--- ToDo: Localize;
			x = 0.319532 * safezoneW + safezoneX;
            y = 0.687 * safezoneH + safezoneY;
            w = 0.134062 * safezoneW;
            h = 0.022 * safezoneH;
			colorBackground[] = {0,0,0,0};
		};
        class btnCloseText: husky_RscStructuredText
        {
            idc = -1;
            text = "x"; //--- ToDo: Localize;
            size = 0.035;
            x = 0.690781 * safezoneW + safezoneX;
            y = 0.28 * safezoneH + safezoneY;
            w = 0.0154688 * safezoneW;
            h = 0.022 * safezoneH;
        };
        
        class btnClose: husky_RscButtonMenu
        {
            idc = -1;
            onButtonClick = "closeDialog 0;";
            x = 0.690781 * safezoneW + safezoneX;
            y = 0.28 * safezoneH + safezoneY;
            w = 0.0154688 * safezoneW;
            h = 0.022 * safezoneH;
            animTextureNormal = "#(argb,8,8,3)color(0,0,0,0)";
			animTextureDisabled = "#(argb,8,8,3)color(0,0,0,0)";
			animTextureOver = "#(argb,8,8,3)color(0,0,0,0)";
			animTextureFocused = "#(argb,8,8,3)color(0,0,0,0)";
			animTexturePressed = "#(argb,8,8,3)color(0,0,0,0)";
			animTextureDefault = "#(argb,8,8,3)color(0,0,0,0)";
            colorBackground[] = { 0 , 0 , 0 , 0 };
            tooltip = "Schliessen"; //--- ToDo: Localize;
        };
	};
};
/* #Bahasi
$[
	1.063,
	["sperrzonenMenu",[[0,0,1,1],0.025,0.04,"GUI_GRID"],0,0,0],
	[1200,"BackgroundPicture",[1,"dialog\bp\menue_background_main.paa",["0.29427 * safezoneW + safezoneX","0.28 * safezoneH + safezoneY","0.4125 * safezoneW","0.44 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1100,"Title",[1,"",["0.29375 * safezoneW + safezoneX","0.28 * safezoneH + safezoneY","0.4125 * safezoneW","0.022 * safezoneH"],[-1,-1,-1,-1],[0,0,0,0],[-1,-1,-1,-1],"","-1"],[]],
	[1201,"infoPic",[1,"#(argb,8,8,3)color(0,0,0,0)",["0.757813 * safezoneW + safezoneX","0.357 * safezoneH + safezoneY","0.0154688 * safezoneW","0.022 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[2401,"createZone",[1,"",["0.618594 * safezoneW + safezoneX","0.687 * safezoneH + safezoneY","0.0825 * safezoneW","0.022 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[2402,"btnDeleteZone",[1,"",["0.298906 * safezoneW + safezoneX","0.687 * safezoneH + safezoneY","0.0154688 * safezoneW","0.022 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1900,"sliderSetSize",[1,"",["0.298905 * safezoneW + safezoneX","0.654 * safezoneH + safezoneY","0.402187 * safezoneW","0.022 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1800,"MapControl",[1,"",["0.298906 * safezoneW + safezoneX","0.313 * safezoneH + safezoneY","0.402187 * safezoneW","0.33 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1102,"sliderStat",[1,"",["0.319532 * safezoneW + safezoneX","0.687 * safezoneH + safezoneY","0.134062 * safezoneW","0.022 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1400,"AreaEdit",[1,"",["0.45875 * safezoneW + safezoneX","0.687 * safezoneH + safezoneY","0.154687 * safezoneW","0.022 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[2400,"",[1,"",["0.690781 * safezoneW + safezoneX","0.28 * safezoneH + safezoneY","0.0154688 * safezoneW","0.022 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]]
]

