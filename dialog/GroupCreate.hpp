class groupCreate {
	idd = 7700;
    name= "groupCreate";
    movingEnable = 0;
    enableSimulation = 1;
    onLoad = "[] spawn husky_fnc_groupLoadCreateDatas;";

	class controlsBackground {
		class background: husky_RscPicture
		{
			idc = -1;
			text = "#(argb,8,8,3)color(0.05,0.05,0.1,1)";
			x = 0.345312 * safezoneW + safezoneX;
			y = 0.346 * safezoneH + safezoneY;
			w = 0.309375 * safezoneW;
			h = 0.308 * safezoneH;
		};
		class titleGroupName: husky_RscText
		{
			idc = -1;
			text = "Gruppen Name:"; //--- ToDo: Localize;
			x = 0.510312 * safezoneW + safezoneX;
			y = 0.478 * safezoneH + safezoneY;
			w = 0.139219 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {0,0,0,0};
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
		};
		class titleGroupTyp: husky_RscText
		{
			idc = -1;
			text = "Gruppen Typ:"; //--- ToDo: Localize;
			x = 0.510312 * safezoneW + safezoneX;
			y = 0.544 * safezoneH + safezoneY;
			w = 0.139219 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {0,0,0,0};
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
		};
		class Title: husky_RscStructuredText
		{
			idc = -1;
			text = "Group System"; //--- ToDo: Localize;
			x = 0.345312 * safezoneW + safezoneX;
			y = 0.324 * safezoneH + safezoneY;
			w = 0.309375 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {0.1,0.1,0.1,1};
			size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
			class Attributes {
				font = "PuristaSemiBold";
				color = "#ffffff";
				align = "center";
				shadow = 0;
			};
		};
		class titleGroupCreate: husky_RscStructuredText
		{
			idc = -1;
			text = "<t align='center'><t size='1.8'>Gruppen System</t><br/><t size='1.4'>German-Gaming</t><br/><t size='1'>Erstellungskosten: 100,000$</t></t>"; //--- ToDo: Localize;
			x = 0.510312 * safezoneW + safezoneX;
			y = 0.357 * safezoneH + safezoneY;
			w = 0.139219 * safezoneW;
			h = 0.099 * safezoneH;
			colorBackground[] = {0,0,0,0};
		};
	};
	class controls {
		class lisGroups: husky_RscListbox
		{
			idc = 7701;
            onLBSelChanged = "[] spawn husky_fnc_groupLoadDescription";
			x = 0.350469 * safezoneW + safezoneX;
			y = 0.379 * safezoneH + safezoneY;
			w = 0.149531 * safezoneW;
			h = 0.154 * safezoneH;
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
		};
		class editSearchGroup: husky_RscEdit
		{
			idc = 7702;
			text = "";
			onKeyUp = "[] call husky_fnc_groupLoadGroups";
			x = 0.350469 * safezoneW + safezoneX;
			y = 0.357 * safezoneH + safezoneY;
			w = 0.149531 * safezoneW;
			h = 0.022 * safezoneH;
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
		};
		class btnRequestGroup: husky_RscButton
		{
			idc = -1;
			onButtonClick = "[] call husky_fnc_groupRequest";
			text = "Gruppe Anfragen"; //--- ToDo: Localize;
			x = 0.350469 * safezoneW + safezoneX;
			y = 0.621 * safezoneH + safezoneY;
			w = 0.149531 * safezoneW;
			h = 0.022 * safezoneH;
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
		};
		class editRequestGroup: husky_RscEdit
		{
			idc = 7703;
			text = "";
			style=16;
			x = 0.350469 * safezoneW + safezoneX;
			y = 0.544 * safezoneH + safezoneY;
			w = 0.149531 * safezoneW;
			h = 0.066 * safezoneH;
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
		};
		class btnCreateNewGroup: husky_RscButton
		{
			idc = -1;
			text = "Gruppe erstellen"; //--- ToDo: Localize;
			onButtonClick = "[] call husky_fnc_groupCreate";
			x = 0.510312 * safezoneW + safezoneX;
			y = 0.599 * safezoneH + safezoneY;
			w = 0.139219 * safezoneW;
			h = 0.044 * safezoneH;
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
		};
		class editGroupName: husky_RscEdit
		{
			idc = 7704;
			text = "";
			x = 0.510312 * safezoneW + safezoneX;
			y = 0.5 * safezoneH + safezoneY;
			w = 0.139219 * safezoneW;
			h = 0.022 * safezoneH;
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
		};
		class cbbGroupTyps: husky_RscCombo
		{
			idc = 7705;
			x = 0.510312 * safezoneW + safezoneX;
			y = 0.566 * safezoneH + safezoneY;
			w = 0.139219 * safezoneW;
			h = 0.022 * safezoneH;
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
		};
		class descriptionArea: husky_RscControlsGroup
		{
			idc = -1;
			x = 0.345312 * safezoneW + safezoneX;
			y = 0.654 * safezoneH + safezoneY;
			w = 0.309375 * safezoneW;
			h = 0.121 * safezoneH;
			class Controls
			{
				class titleGroupCreate: husky_RscStructuredText
				{
					idc = 7706;
					text = ""; //--- ToDo: Localize;
					x = 0;
					y = 0;
					w = 0.30937 * safezoneW;
					h = 0;
					colorBackground[] = {0.05,0.05,0.1,1};
				};
			};
		};
	};
};
