////////////////////////////////////////////////////////////////////////////
//////           This HPP was created by Shinji`s GUI tool            //////
//////           Minefactory.eu 							      //////
//////           Thieves										      //////
////////////////////////////////////////////////////////////////////////////
/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

class bugtracker {
    idd = 50800;
    name= "bugtracker";
    movingEnable = 0;
    enableSimulation = 1;
	class controlsBackground {
		class TitelText: husky_RscText
		{
			idc = 50803;
			text = "Minefactory.eu Bugtracker"; //--- ToDo: Localize;
	    	x = 0.298906 * safezoneW + safezoneX;
	    	y = 0.27516 * safezoneH + safezoneY;
	    	w = 0.170156 * safezoneW;
	    	h = 0.022 * safezoneH;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",0.5};
		};
		class husky_RscTitleBackground : husky_RscPicture
       {
           text = "textures\Menus\TrunkPic.paa";
           x = 0.157291666666667 * safezoneW + safezoneX;
           y = 0.169347209082308 * safezoneH + safezoneY;
           w = 0.686979166666667 * safezoneW;
           h = 0.663197729422895 * safezoneH;
           idc = 1002;
       };
		class background: husky_RscText
		{
			idc = 50804;
			text = "";
			x = 0.298906 * safezoneW + safezoneX;
			y = 0.2976 * safezoneH + safezoneY;
			w = 0.402187 * safezoneW;
			h = 0.407 * safezoneH;
			colorBackground[] = {0,0,0,0.5};
		};
	};
	class controls{
		class senderName: husky_RscStructuredText
		{
			idc = 50805;
	        text = "Name des Spielers hier ganz gross und in full HD"; //--- ToDo: Localize;
	        x = 0.304062 * safezoneW + safezoneX;
	        y = 0.313 * safezoneH + safezoneY;
	        w = 0.175313 * safezoneW;
	        h = 0.022 * safezoneH;
		};
		class spielerID: husky_RscStructuredText
		{
			idc = 50806;
	        text = "ID des Spielers hier ganz gross und in full HD"; //--- ToDo: Localize;
	        x = 0.520625 * safezoneW + safezoneX;
	        y = 0.313 * safezoneH + safezoneY;
	        w = 0.175313 * safezoneW;
	        h = 0.022 * safezoneH;
		};
		class bugText: husky_RscEdit
		{
			idc = 50807;
			text = "Bitte hier euren Bug eintragen bzw. genaues Problem."; //--- ToDo: Localize;
			x = 0.304062 * safezoneW + safezoneX;
			y = 0.401 * safezoneH + safezoneY;
			w = 0.391875 * safezoneW;
			h = 0.22 * safezoneH;
		};
		class bugTitel: husky_RscEdit
		{
	        idc = 50809;

	        text = "Bug Titel bzw. eine kurze Beschreibung des Fehlers."; //--- ToDo: Localize;
	        x = 0.304062 * safezoneW + safezoneX;
	        y = 0.368 * safezoneH + safezoneY;
	        w = 0.391875 * safezoneW;
	        h = 0.022 * safezoneH;
		};
        class titelSendButton: husky_RscText
        {
        	idc = -1;
        	text = "Bug an den Server schicken"; //--- ToDo: Localize;
        	x = 0.597969 * safezoneW + safezoneX;
        	y = 0.621 * safezoneH + safezoneY;
        	w = 0.0979687 * safezoneW;
        	h = 0.022 * safezoneH;
        };
        class sendBug: husky_RscButtonMenu
        {
        	idc = -1;
        	onButtonClick = "call husky_fnc_bugSend; closeDialog 0;";

        	text = "Bug Uebermitteln"; //--- ToDo: Localize;
        	x = 0.613437 * safezoneW + safezoneX;
        	y = 0.643 * safezoneH + safezoneY;
        	w = 0.0825 * safezoneW;
        	h = 0.022 * safezoneH;
        };
        class closeButton: husky_RscButtonMenu
        {
        	idc = -1;
        	onButtonClick = "closeDialog 0;";
        	text = "Schliessen"; //--- ToDo: Localize;
        	x = 0.637155 * safezoneW + safezoneX;
        	y = 0.709 * safezoneH + safezoneY;
        	w = 0.0644531 * safezoneW;
        	h = 0.022 * safezoneH;
        };
	};
};
