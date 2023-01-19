class groupNameChange {
	idd = 7900;
    name= "groupNameChange";
    movingEnable = 0;
    enableSimulation = 1;

	class controlsBackground {
		class mainBackground: husky_RscPicture
		{
			idc = -1;
			text = "#(argb,8,8,3)color(0.05,0.05,0.1,0.5)";
			x = 0.412344 * safezoneW + safezoneX;
			y = 0.412 * safezoneH + safezoneY;
			w = 0.170156 * safezoneW;
			h = 0.143 * safezoneH;
		};
		class Title: husky_RscStructuredText
		{
			idc = -1;
			text = "<t align='center'>Gruppenname aendern</t>"; //--- ToDo: Localize;
			x = 0.412344 * safezoneW + safezoneX;
			y = 0.387333 * safezoneH + safezoneY;
			w = 0.170156 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {0.05,0.05,0.05,1};
			size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
		};
		class Info: husky_RscStructuredText
		{
			idc = -1;
			text = "Gib den neuen Gruppennamen hier ein:"; //--- ToDo: Localize;
			x = 0.4175 * safezoneW + safezoneX;
			y = 0.423 * safezoneH + safezoneY;
			w = 0.159844 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {0,0,0,0};
			size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
		};
	};
	class controls {
		class editGroupName: husky_RscEdit
		{
			idc = 7901;
			text = "";
			x = 0.4175 * safezoneW + safezoneX;
			y = 0.456 * safezoneH + safezoneY;
			w = 0.159844 * safezoneW;
			h = 0.022 * safezoneH;
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
			tooltip = "Neuer Gruppenname"; //--- ToDo: Localize;
		};
		class btnChangeGroupName: husky_RscButton
		{
			idc = -1;
			text = "Gruppen Name aendern"; //--- ToDo: Localize;
            onButtonClick = "[] spawn husky_fnc_groupNameChange";
			x = 0.4175 * safezoneW + safezoneX;
			y = 0.489 * safezoneH + safezoneY;
			w = 0.159844 * safezoneW;
			h = 0.022 * safezoneH;
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
		};
		class btnClose: husky_RscButton
		{
			idc = -1;
			text = "Abbrechen"; //--- ToDo: Localize;
            onButtonClick = "closeDialog 0;";
			x = 0.4175 * safezoneW + safezoneX;
			y = 0.522 * safezoneH + safezoneY;
			w = 0.159844 * safezoneW;
			h = 0.022 * safezoneH;
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
		};
	};
};
