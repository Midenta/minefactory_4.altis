/*
 *
 *	@File:		idcard.hpp
 *	@Author: 	AllianceApps
 *	@Date:		01.10.2017
 *
 *	You are not allowed to use this script or remove the credits of the script without written permission of the author.
 *  You are not allowed to use this script without a valid license. License terms apply.
 *
 *  Du darfst dieses Script nicht nutzen oder diesen Copyright-Hinweis nicht entfernen, wenn du keine schriftliche Bestätigung des Autors hast.
 *  Du darfst dieses Script nicht ohne gültige Lizenz nutzen. Die Lizenzbestimmungen für Scripts sind zu beachten.
 *  
 */
class aapps_idcard_config {
	cfgBloodtypes[] = {"AB-","AB+","A-","A+","B-","B+","0-","0+","Nutella"};
	cfgNameBlacklist[] = {"hitler","heil","hitelar","hiteler","stalin","geht sie das an","name","lystic","tonic","austriannoob","'","""","<",">","?","!"};
	cfgIslands[] = {"Altis","Stratis","Tanoa","Malden","Kerama","Livonia"};
	cfgPrimaryLanguage = "German"; //Language which is used if player has an invalid language
	COP_price_new = 0;
	COP_price_change = 5000;
	CIV_price_new = 0;
	CIV_price_change = 25000;
	MED_price_new = 0;
	MED_price_change = 5000;
	class rank_names_west {
		rank_0 = "Error";
		rank_1 = "Praktikant";
		rank_2 = "Polizeimeisteranwärter";
		rank_3 = "Polizeimeister";
		rank_4 = "Polizeiobermeister";
		rank_5 = "Polizeihauptmeister";
		rank_6 = "Polizeihauptmeister mZ";
		rank_7 = "Polizeikommissarsanwärter";
		rank_8 = "Polizeikommissar";
		rank_9 = "Polizeioberkommissar";
		rank_10 = "Polizeihauptkommissar";
		rank_11 = "Polizeihauptkommissar-A12";
		rank_12 = "Erster Polizeihauptkommissar";
		rank_13 = "Polizeiratsanwärter";
		rank_14 = "Polizeirat";
		rank_15 = "Polizeioberrat";
		rank_16 = "Polizeidirektor";
		rank_17 = "Leitender Polizeidirektor";
		rank_18 = "Stv. Polizeipräsident";
		rank_19 = "Polizeipräsident";
		rank_20 = "Polizeihauptkommissar-A12";	//Admin
	};
	class rank_names_guer {
		rank_0 = "Error";
		rank_1 = "Praktikant";
		rank_2 = "Feuerwehr-Anwärter";
		rank_3 = "Feuerwehrmann";
		rank_4 = "Oberfeuerwehrmann";
		rank_5 = "Hauptfeuerwehrmann";
		rank_6 = "Löschmeister";
		rank_7 = "Oberlöschmeister";
		rank_8 = "Brandmeister";
		rank_9 = "Oberbrandmeister";
		rank_10 = "Hauptbrandmeister";
		rank_11 = "Oberfeuerwehrmann";		//Admin
	};
};






class aapps_idcard {
	idd = 4689200;
    name = "aapps_idcard";
	onLoad = "[0] spawn husky_fnc_idcard";
	
	class controlsBackground {
		class RscText_1001: husky_RscText
		{
			idc = -1;
			x = 0.34525 * safezoneW + safezoneX;
			y = 0.28 * safezoneH + safezoneY;
			w = 0.309634 * safezoneW;
			h = 0.4906 * safezoneH;
			colorBackground[] = {0,0,0,0.8};
		};
		class RscText_1000: husky_RscText
		{
			idc = -1;
			text = "$STR_capps_card_register"; 
			x = 0.345252 * safezoneW + safezoneX;
			y = 0.2492 * safezoneH + safezoneY;
			w = 0.30933 * safezoneW;
			h = 0.0308 * safezoneH;
			colorBackground[] = {0.827,0.329,0,1};
			style = 2;
		};
		class RscText_1002: husky_RscText
		{
			idc = -1;
			text = "Name:"; 
			x = 0.352112 * safezoneW + safezoneX;
			y = 0.299489 * safezoneH + safezoneY;
			w = 0.04125 * safezoneW;
			h = 0.0242 * safezoneH;
		};
		class RscText_1003: husky_RscText
		{
			idc = -1;
			text = "$STR_capps_birthdate"; 
			x = 0.352135 * safezoneW + safezoneX;
			y = 0.346741 * safezoneH + safezoneY;
			w = 0.07425 * safezoneW;
			h = 0.0374 * safezoneH;
		};
		class RscText_1004: husky_RscText
		{
			idc = -1;
			text = "."; 
			x = 0.561462 * safezoneW + safezoneX;
			y = 0.350215 * safezoneH + safezoneY;
			w = 0.04125 * safezoneW;
			h = 0.055 * safezoneH;
			font = "PuristaBold";
		};
		class RscText_1005: husky_RscText
		{
			idc = -1;
			text = "."; 
			x = 0.474511 * safezoneW + safezoneX;
			y = 0.349415 * safezoneH + safezoneY;
			w = 0.04125 * safezoneW;
			h = 0.055 * safezoneH;
			font = "PuristaBold";
		};
		class RscText_1006: husky_RscText
		{
			idc = -1;
			text = "$STR_capps_birthplace"; 
			x = 0.352291 * safezoneW + safezoneX;
			y = 0.390822 * safezoneH + safezoneY;
			w = 0.04125 * safezoneW;
			h = 0.055 * safezoneH;
		};
		class RscText_1007: husky_RscText
		{
			idc = -1;
			text = "$STR_capps_birthcountry"; 
			x = 0.351712 * safezoneW + safezoneX;
			y = 0.441311 * safezoneH + safezoneY;
			w = 0.0546561 * safezoneW;
			h = 0.055 * safezoneH;
		};
		class RscText_1008: husky_RscText
		{
			idc = -1;
			text = "$STR_capps_gender"; 
			x = 0.35219 * safezoneW + safezoneX;
			y = 0.495607 * safezoneH + safezoneY;
			w = 0.0546561 * safezoneW;
			h = 0.055 * safezoneH;
		};
		class RscText_1009: husky_RscText
		{
			idc = -1;
			text = "$STR_capps_address"; 
			x = 0.352796 * safezoneW + safezoneX;
			y = 0.556593 * safezoneH + safezoneY;
			w = 0.0546561 * safezoneW;
			h = 0.055 * safezoneH;
		};
		class RscText_1010: husky_RscText
		{
			idc = -1;
			text = "$STR_capps_city"; 
			x = 0.352721 * safezoneW + safezoneX;
			y = 0.609941 * safezoneH + safezoneY;
			w = 0.0546561 * safezoneW;
			h = 0.055 * safezoneH;
		};
		class RscText_1011: husky_RscText
		{
			idc = -1;
			text = "$STR_capps_bloodtype"; 
			x = 0.352828 * safezoneW + safezoneX;
			y = 0.668511 * safezoneH + safezoneY;
			w = 0.0546561 * safezoneW;
			h = 0.055 * safezoneH;
		};
		class RscText_1012: husky_RscText
		{
			idc = -1;
			text = "$STR_capps_norealdata"; 
			x = 0.502062 * safezoneW + safezoneX;
			y = 0.6738 * safezoneH + safezoneY;
			w = 0.144364 * safezoneW;
			h = 0.0528 * safezoneH;
			sizeEx = 0.032;
			style = 2;
		};
		/*class logo: husky_RscPicture
		{
			idc = -1;
			text = "core\idcard\allianceapps_logo.paa";
			x = 0.778437 * safezoneW + safezoneX;
			y = 0.8762 * safezoneH + safezoneY;
			w = 0.154687 * safezoneW;
			h = 0.132 * safezoneH;
		};*/
	};
	class controls {
		class RscButton_1600: husky_RscButton
		{
			idc = 4689212;
			text = "$STR_capps_sign"; 
			x = 0.505156 * safezoneW + safezoneX;
			y = 0.731 * safezoneH + safezoneY;
			w = 0.146428 * safezoneW;
			h = 0.033 * safezoneH;
			colorBackground[] = {0,0,0,1};
			colorText[] = {255,255,255,1};
			colorActive[] = {0,0,0,1};
			colorBackgroundActive[] = {0.902,0.494,0.133,1};
			colorFocused[] = {0.902,0.494,0.133,1};
			action = "[1] spawn husky_fnc_idcard";
			type = 1;access = 0;
			colorShadow[] = {0,0,0,0};
		};
		class RscButton_1601: husky_RscButton
		{
			idc = 4689213;
			text = "$STR_capps_abort"; 
			x = 0.350442 * safezoneW + safezoneX;
			y = 0.72946 * safezoneH + safezoneY;
			w = 0.146428 * safezoneW;
			h = 0.033 * safezoneH;
			colorBackground[] = {0,0,0,1};
			colorText[] = {255,255,255,1};
			colorActive[] = {0,0,0,1};
			colorBackgroundActive[] = {0.902,0.494,0.133,1};
			colorFocused[] = {0.902,0.494,0.133,1};
			action = "closeDialog 0";
			type = 1;access = 0;
			colorShadow[] = {0,0,0,0};
		};
		class RscEdit_1400: husky_RscEdit
		{ //NAME
			idc = 4689201;
			text = "";
			x = 0.418522 * safezoneW + safezoneX;
			y = 0.2954 * safezoneH + safezoneY;
			w = 0.226844 * safezoneW;
			h = 0.033 * safezoneH;
		};
		class birth1: husky_RscCombo
		{
			idc = 4689202;
			x = 0.417681 * safezoneW + safezoneX;
			y = 0.349756 * safezoneH + safezoneY;
			w = 0.053625 * safezoneW;
			h = 0.0352 * safezoneH;
		};
		class birth2: husky_RscCombo
		{
			idc = 4689203;
			x = 0.485715 * safezoneW + safezoneX;
			y = 0.349993 * safezoneH + safezoneY;
			w = 0.0721873 * safezoneW;
			h = 0.0352 * safezoneH;
		};
		class birth3: husky_RscCombo
		{
			idc = 4689204;
			x = 0.573205 * safezoneW + safezoneX;
			y = 0.349644 * safezoneH + safezoneY;
			w = 0.0721873 * safezoneW;
			h = 0.0352 * safezoneH;
		};
		class RscEdit_1401: husky_RscEdit
		{ //birthplace
			idc = 4689205;
			text = "";
			x = 0.41875 * safezoneW + safezoneX;
			y = 0.404859 * safezoneH + safezoneY;
			w = 0.226844 * safezoneW;
			h = 0.033 * safezoneH;
		};
		class birtcountry: husky_RscCombo
		{
			idc = 4689206;
			x = 0.417762 * safezoneW + safezoneX;
			y = 0.454622 * safezoneH + safezoneY;
			w = 0.226844 * safezoneW;
			h = 0.0352 * safezoneH;
		};
		class gender: husky_RscCombo
		{
			idc = 4689207;
			x = 0.417847 * safezoneW + safezoneX;
			y = 0.50683 * safezoneH + safezoneY;
			w = 0.226844 * safezoneW;
			h = 0.0352 * safezoneH;
		};
		class RscEdit_1402: husky_RscEdit
		{//address
			idc = 4689208;
			text = "";
			x = 0.418304 * safezoneW + safezoneX;
			y = 0.569104 * safezoneH + safezoneY;
			w = 0.226844 * safezoneW;
			h = 0.033 * safezoneH;
		};
		class RscEdit_1403: husky_RscEdit
		{//zip
			idc = 4689209;
			text = "";
			x = 0.418261 * safezoneW + safezoneX;
			y = 0.621545 * safezoneH + safezoneY;
			w = 0.0670308 * safezoneW;
			h = 0.033 * safezoneH;
		};
		class RscEdit_1404: husky_RscEdit
		{//place
			idc = 4689210;
			text = "";
			x = 0.504167 * safezoneW + safezoneX;
			y = 0.621637 * safezoneH + safezoneY;
			w = 0.141271 * safezoneW;
			h = 0.033 * safezoneH;
		};
		class bloodtype: husky_RscCombo
		{
			idc = 4689211;
			x = 0.417262 * safezoneW + safezoneX;
			y = 0.681015 * safezoneH + safezoneY;
			w = 0.0680621 * safezoneW;
			h = 0.0352 * safezoneH;
		};
	};
};
