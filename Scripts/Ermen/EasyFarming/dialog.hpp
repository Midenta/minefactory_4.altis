class Ermen_EasyFarmingDialog {
    idd = -1;
    name = "Ermen_EasyFarmingDialog";
    movingEnable = 0;
    enableSimulation = 1;
    onLoad = "uiNamespace setVariable ['Ermen_EasyFarmingDialog',_this select 0]; call Ermen_fnc_EasyFarmingInit";

	class controlsBackground {
		class Background: husky_RscText {
			idc = -1;
			x = 0.247341 * safezoneW + safezoneX;
			y = 0.247 * safezoneH + safezoneY;
			w = 0.505313 * safezoneW;
			h = 0.517 * safezoneH;
			colorBackground[] = {0.1,0.1,0.1,1};
		};
		class Title: husky_RscStructuredText {
			idc = 10008;
			x = 0.247344 * safezoneW + safezoneX;
			y = 0.225 * safezoneH + safezoneY;
			w = 0.505313 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {"(profileNamespace getVariable 'GUI_BCG_RGB_R')","(profileNamespace getVariable 'GUI_BCG_RGB_G')","(profileNamespace getVariable 'GUI_BCG_RGB_B')",1};
		};
		class ItemMap: husky_RscMapControl {
			idc = 10004;
			x = 0.2525 * safezoneW + safezoneX;
			y = 0.258 * safezoneH + safezoneY;
			w = 0.165 * safezoneW;
			h = 0.242 * safezoneH;
		};
		class VehicleMap: husky_RscMapControl {
			idc = 10006;
			x = 0.2525 * safezoneW + safezoneX;
			y = 0.511 * safezoneH + safezoneY;
			w = 0.165 * safezoneW;
			h = 0.242 * safezoneH;
		};
	};

	class controls {
		class ItemList: husky_RscListbox {
			idc = 10000;
			x = 0.4175 * safezoneW + safezoneX;
			y = 0.258 * safezoneH + safezoneY;
			w = 0.165 * safezoneW;
			h = 0.242 * safezoneH;
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
			onLBSelChanged = "call Ermen_fnc_EasyFarmingInit";
		};
		class VehicleList: husky_RscListbox {
			idc = 10001;
			x = 0.4175 * safezoneW + safezoneX;
			y = 0.511 * safezoneH + safezoneY;
			w = 0.165 * safezoneW;
			h = 0.242 * safezoneH;
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
			onLBSelChanged = "call Ermen_fnc_EasyFarmingInit";
		};
		class ItemText: husky_RscStructuredText {
			idc = 10002;
			x = 0.5825 * safezoneW + safezoneX;
			y = 0.258 * safezoneH + safezoneY;
			w = 0.165 * safezoneW;
			h = 0.242 * safezoneH;
			colorBackground[] = {0.2,0.2,0.2,1};
		};
		class VehicleText: husky_RscStructuredText {
			idc = 10003;
			x = 0.5825 * safezoneW + safezoneX;
			y = 0.511 * safezoneH + safezoneY;
			w = 0.165 * safezoneW;
			h = 0.242 * safezoneH;
			colorBackground[] = {0.2,0.2,0.2,1};
		};
		class ItemMapList: husky_RscCombo {
			idc = 10005;
			x = 0.2525 * safezoneW + safezoneX;
			y = 0.478 * safezoneH + safezoneY;
			w = 0.165 * safezoneW;
			h = 0.022 * safezoneH;
			onLBSelChanged = "call Ermen_fnc_EasyFarmingMap";
		};
		class VehicleMapList: husky_RscCombo {
			idc = 10007;
			x = 0.2525 * safezoneW + safezoneX;
			y = 0.731 * safezoneH + safezoneY;
			w = 0.165 * safezoneW;
			h = 0.022 * safezoneH;
			onLBSelChanged = "call Ermen_fnc_EasyFarmingMap";
		};
	};
};