////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Yasar-S, v1.063, #Norogi)
////////////////////////////////////////////////////////
class GamblingDia {
    idd = 1350;
	name="GamblingDia";
    movingEnable = 1;
    enableSimulation = 1;
	onLoad="[] spawn husky_fnc_loadGamblingDia; [] spawn husky_fnc_gamblingTimer;";
	
	class controlsBackground
	{
		class BackgroundPicture: husky_RscPicture
		{
			idc = -1;
			text = "#(argb,8,8,3)color(0.1,0.1,0.1,1)";
            x = 0.29375 * safezoneW + safezoneX;
            y = 0.313 * safezoneH + safezoneY;
            w = 0.4125 * safezoneW;
            h = 0.341 * safezoneH;
		};
		class husky_Title: husky_RscStructuredText
		{
			idc = -1;
			text = "<t size='0.8' shadow='0'>Gambling</t>"; //--- ToDo: Localize;
			x = 0.29375 * safezoneW + safezoneX;
            y = 0.313 * safezoneH + safezoneY;
            w = 0.4125 * safezoneW;
            h = 0.022 * safezoneH;
			colorBackground[] = {0,0,0,0};
			class Attributes {
				font = "PuristaSemiBold";
				color = "#ffffff";
				align = "left";
				shadow = 1;
			};
		};
	};
	
	class controls 
	{
        class lisCurrentBetList: husky_RscListbox
        {
            idc = 1351;
            sizeEx = 0.035;
            x = 0.463906 * safezoneW + safezoneX;
            y = 0.346 * safezoneH + safezoneY;
            w = 0.237187 * safezoneW;
            h = 0.121 * safezoneH;
        };
        class lisWinnerList: husky_RscListbox
        {
            idc = 1352;
            sizeEx = 0.035;
            x = 0.463906 * safezoneW + safezoneX;
            y = 0.555 * safezoneH + safezoneY;
            w = 0.237187 * safezoneW;
            h = 0.055 * safezoneH;
        };
        class title_1: husky_RscStructuredText
        {
            idc = -1;
            text = "Letzten Gewinner"; //--- ToDo: Localize;
            x = 0.463906 * safezoneW + safezoneX;
            y = 0.522 * safezoneH + safezoneY;
            w = 0.237187 * safezoneW;
            h = 0.022 * safezoneH;
			class Attributes {
				font = "PuristaSemiBold";
				color = "#ffffff";
				align = "center";
				shadow = 0;
			};
        };
        class editMoney: husky_RscEdit
        {
            idc = 1353;
            text="";
            x = 0.298906 * safezoneW + safezoneX;
            y = 0.544 * safezoneH + safezoneY;
            w = 0.159844 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class btnBet: husky_RscButtonMenu
        {
            idc = 1354;
            text = "Setzen"; //--- ToDo: Localize;
            onButtonClick = "[] spawn husky_fnc_setGamblingMoney;";
            x = 0.298906 * safezoneW + safezoneX;
            y = 0.577 * safezoneH + safezoneY;
            w = 0.159844 * safezoneW;
            h = 0.033 * safezoneH;
        };
        class title_3: husky_RscStructuredText
        {
            idc = -1;
            text = "Gib deinen Betrag ein :"; //--- ToDo: Localize;
            x = 0.298906 * safezoneW + safezoneX;
            y = 0.5 * safezoneH + safezoneY;
            w = 0.159844 * safezoneW;
            h = 0.033 * safezoneH;
            colorBackground[] = {0,0,0,0};
        };
        class title_2: title_1
        {
            idc = -1;
            text = "Informationen"; //--- ToDo: Localize;
            x = 0.298906 * safezoneW + safezoneX;
            y = 0.346 * safezoneH + safezoneY;
            w = 0.159844 * safezoneW;
            h = 0.033 * safezoneH;
            colorBackground[] = {0,0,0,0};
        };
        class nextRouletteProgess: husky_RscProgress
        {
            idc = 1355;
            x = 0.298906 * safezoneW + safezoneX;
            y = 0.621 * safezoneH + safezoneY;
            w = 0.402187 * safezoneW;
            h = 0.022 * safezoneH;
            colorBar[] = { 0.96862745098039215686274509803922, 0.63529411764705882352941176470588,0,1 };
        };
        class nextRoulette: husky_RscStructuredText
        {
            idc = 1359;
            text = "---"; //--- ToDo: Localize;
            x = 0.298906 * safezoneW + safezoneX;
            y = 0.621 * safezoneH + safezoneY;
            w = 0.402187 * safezoneW;
            h = 0.022 * safezoneH;
            colorBackground[] = {0,0,0,0};
            class Attributes {
				font = "PuristaSemiBold";
				color = "#ffffff";
				align = "center";
				shadow = 0;
			};
        };
        class input: nextRoulette
        {
            idc = 1356;
            text = "---"; //--- ToDo: Localize;
            x = 0.298906 * safezoneW + safezoneX;
            y = 0.39 * safezoneH + safezoneY;
            w = 0.159844 * safezoneW;
            h = 0.033 * safezoneH;
            colorBackground[] = {0,0,0,0};
        };
        class chance: nextRoulette
        {
            idc = 1357;
            text = "---"; //--- ToDo: Localize;
            x = 0.298906 * safezoneW + safezoneX;
            y = 0.434 * safezoneH + safezoneY;
            w = 0.159844 * safezoneW;
            h = 0.033 * safezoneH;
            colorBackground[] = {0,0,0,0};
        };
        class moneyToWin: husky_RscStructuredText
        {
            idc = 1358;
            text = "---"; //--- ToDo: Localize;
            x = 0.463906 * safezoneW + safezoneX;
            y = 0.478 * safezoneH + safezoneY;
            w = 0.237187 * safezoneW;
            h = 0.033 * safezoneH;
            colorBackground[] = {0,0,0,0};
            class Attributes {
				font = "PuristaSemiBold";
				color = "#ffffff";
				align = "right";
				shadow = 0;
			};
        };
        
        /*class timeText: husky_RscStructuredText
        {
            idc = 2432;
			style = 1;
            text = "";
			x = 0.572187 * safezoneW + safezoneX;
            y = 0.313 * safezoneH + safezoneY;
            w = 0.12375 * safezoneW;
            h = 0.022 * safezoneH;
            colorBackground[] = {0,0,0,0};
            class Attributes {
				font = "PuristaSemiBold";
				color = "#ffffff";
				align = "right";
				shadow = 0;
			};
        };*/
        
        class btnClose: husky_RscButtonMenu
        {
            idc = -1;
            text = "x";
            onButtonClick = "closeDialog 0;";
            offsetPressedX = 0;
            offsetPressedY = 0;
    		colorBackground[] = {0,0,0,0};
    		colorBackgroundActive[] = {0,0,0,0};
    		colorBackgroundDisabled[] = {0,0,0,0};
    		colorFocused[] = {0,0,0,0};
            x = 0.690781 * safezoneW + safezoneX;
            y = 0.313 * safezoneH + safezoneY;
            w = 0.0154688 * safezoneW;
            h = 0.022 * safezoneH;
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
            tooltip = "Schliessen"; //--- ToDo: Localize;
        };
	};
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
/* #Kabiby
$[
	1.063,
	["gamblingMenu",[[0,0,1,1],0.025,0.04,"GUI_GRID"],0,0,0],
	[1200,"BackgroundPicture",[1,"#(argb,8,8,3)color(0.05,0.05,0.1,0.1)",["0.29375 * safezoneW + safezoneX","0.313 * safezoneH + safezoneY","0.4125 * safezoneW","0.341 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1100,"Title",[1,"",["0.29375 * safezoneW + safezoneX","0.313 * safezoneH + safezoneY","0.4125 * safezoneW","0.022 * safezoneH"],[-1,-1,-1,-1],[0,0,0,0],[-1,-1,-1,-1],"","-1"],[]],
	[1101,"timeHeadLine",[1,"",["0.572187 * safezoneW + safezoneX","0.313 * safezoneH + safezoneY","0.12375 * safezoneW","0.022 * safezoneH"],[-1,-1,-1,-1],[0,0,0,0],[-1,-1,-1,-1],"","-1"],[]],
	[1500,"lisCurrentBet",[1,"",["0.463906 * safezoneW + safezoneX","0.346 * safezoneH + safezoneY","0.237187 * safezoneW","0.121 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1501,"lisLastWinner",[1,"",["0.463906 * safezoneW + safezoneX","0.555 * safezoneH + safezoneY","0.237187 * safezoneW","0.055 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1102,"MoneyToWin",[1,"",["0.463906 * safezoneW + safezoneX","0.478 * safezoneH + safezoneY","0.237187 * safezoneW","0.033 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"Zu Gewinnen","-1"],[]],
	[1103,"lastWinnerTitle",[1,"Letzten Gewinner",["0.463906 * safezoneW + safezoneX","0.522 * safezoneH + safezoneY","0.237187 * safezoneW","0.022 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"Zu Gewinnen","-1"],[]],
	[1400,"editMoney",[1,"",["0.298906 * safezoneW + safezoneX","0.544 * safezoneH + safezoneY","0.159844 * safezoneW","0.022 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[2400,"btnBet",[1,"",["0.298906 * safezoneW + safezoneX","0.577 * safezoneH + safezoneY","0.159844 * safezoneW","0.033 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1105,"titleEditMoney",[1,"Gib deinen Betrag ein :",["0.298906 * safezoneW + safezoneX","0.5 * safezoneH + safezoneY","0.159844 * safezoneW","0.033 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1106,"titleInfo",[1,"",["0.298906 * safezoneW + safezoneX","0.346 * safezoneH + safezoneY","0.159844 * safezoneW","0.033 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1107,"nextRoulette",[1,"---",["0.298906 * safezoneW + safezoneX","0.621 * safezoneH + safezoneY","0.402187 * safezoneW","0.022 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1108,"input",[1,"",["0.298906 * safezoneW + safezoneX","0.39 * safezoneH + safezoneY","0.159844 * safezoneW","0.033 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1109,"chance",[1,"",["0.298906 * safezoneW + safezoneX","0.434 * safezoneH + safezoneY","0.159844 * safezoneW","0.033 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[2401,"btnClose",[1,"x",["0.690781 * safezoneW + safezoneX","0.313 * safezoneH + safezoneY","0.0154688 * safezoneW","0.022 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"Schliessen","-1"],[]]
]
*/