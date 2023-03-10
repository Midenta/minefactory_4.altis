/*
 *
 *	@File:		aapps_gang.hpp
 *	@Author: 	AllianceApps
 *	@Date:		11.05.2018
 *
 *	You are not allowed to use this script or remove the credits of the script without written permission of the author.
 *  You are not allowed to use this script without a valid license. License terms apply.
 *
 *  Du darfst dieses Script nicht nutzen oder diesen Copyright-Hinweis nicht entfernen, wenn du keine schriftliche Bestätigung des Autors hast.
 *  Du darfst dieses Script nicht ohne gültige Lizenz nutzen. Die Lizenzbestimmungen für Scripts sind zu beachten.
 *
 */
class gang_garage_setup_menu {
	idd = -1;
	duration = 1e+1000;
	movingEnable = 0;
	fadein = 0.5;
	fadeout = 0.5;
	name = "gang_garage_setup_menu";
	onLoad = "uiNamespace setVariable ['gang_garage_setup_menu',_this select 0]";
	class controls {
		class RscPicture_1200: husky_RscPicture
		{
			idc = 4153150;
			text = "\a3\3den\data\attributes\taskstates\failed_ca.paa";
			x = 0.515471 * safezoneW + safezoneX;
			y = 0.5528 * safezoneH + safezoneY;
			w = 0.0216563 * safezoneW;
			h = 0.0352 * safezoneH;
			/*
			x = 0.525781 * safezoneW + safezoneX;
			y = 0.5528 * safezoneH + safezoneY;
			w = 0.0216563 * safezoneW;
			h = 0.0352 * safezoneH;
			*/
		};
		class RscPicture_1201: husky_RscPicture
		{
			idc = 4153151;
			text = "\a3\3den\data\attributes\taskstates\succeeded_ca.paa";
			x = 0.515471 * safezoneW + safezoneX;
			y = 0.5198 * safezoneH + safezoneY;
			w = 0.0216563 * safezoneW;
			h = 0.0352 * safezoneH;
			/*
			x = 0.525781 * safezoneW + safezoneX;
			y = 0.5198 * safezoneH + safezoneY;
			w = 0.0216563 * safezoneW;
			h = 0.0352 * safezoneH;
			*/
		};
		class RscStructuredText_1100: husky_RscStructuredText
		{
			idc = 4153152;
			text = "$STR_aapps_gang_garage_done";
			x = 0.538158 * safezoneW + safezoneX;
			y = 0.5242 * safezoneH + safezoneY;
			w = 0.086625 * safezoneW;
			h = 0.0264 * safezoneH;
			colorBackground[] = {0.14902,0.196078,0.219608,0.9};
			/*
			x = 0.548468 * safezoneW + safezoneX;
			y = 0.5242 * safezoneH + safezoneY;
			w = 0.086625 * safezoneW;
			h = 0.0264 * safezoneH;
			*/
		};
		class RscStructuredText_1101: husky_RscStructuredText
		{
			idc = 4153153;
			text = "$STR_aapps_gang_garage_cancel";
			x = 0.538158 * safezoneW + safezoneX;
			y = 0.5572 * safezoneH + safezoneY;
			w = 0.086625 * safezoneW;
			h = 0.0264 * safezoneH;
			colorBackground[] = {0.14902,0.196078,0.219608,0.9};
			/*
			x = 0.548468 * safezoneW + safezoneX;
			y = 0.5572 * safezoneH + safezoneY;
			w = 0.086625 * safezoneW;
			h = 0.0264 * safezoneH;
			*/
		};
	};
};
