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

class aapps_calls {
	cop_call_messages[] = {
		{"$STR_DC_MSG_cop_onmyway_title","$STR_DC_MSG_cop_onmyway"},
		{"$STR_DC_MSG_cop_wquestions_title","$STR_DC_MSG_cop_wquestions"},
		{"$STR_DC_MSG_cop_understaffed_title","$STR_DC_MSG_cop_understaffed"},
		{"$STR_DC_MSG_cop_terrorist_title","$STR_DC_MSG_cop_terrorist"}
	};
	med_call_messages[] = {
		{"$STR_DC_MSG_cop_onmyway_title","$STR_DC_MSG_cop_onmyway"},
		{"$STR_DC_MSG_cop_wquestions_title","$STR_DC_MSG_cop_wquestions"},
		{"$STR_DC_MSG_cop_understaffed_title","$STR_DC_MSG_cop_understaffed"},
		{"$STR_DC_MSG_cop_terrorist_title","$STR_DC_MSG_cop_terrorist"}
	};
};

class aapps_callmanagement {
   idd = 1011001;
   name = "aapps_callmanagement";
   movingenable = false;
   enablesimulation = true;
   onload = "";
   class controlsBackground
   {
       class husky_RscTitleBackground : husky_RscPicture
       {
           idc = -1;
           text = "textures\Menus\TrunkPic.paa";
           x = 0.136979166666667 * safezoneW + safezoneX;
           y = 0.169347209082308 * safezoneH + safezoneY;
           w = 0.7265625 * safezoneW;
           h = 0.646168401135289 * safezoneH;
           colorbackground[] = {1,1,1,0};
       };
       class background : husky_RscText
       {
           idc = -1;
           x = 0.293777 * safezoneW + safezoneX;
           y = 0.3108 * safezoneH + safezoneY;
           w = 0.412444 * safezoneW;
           h = 0.3982 * safezoneH;
           colorbackground[] = {0,0,0,0.5};
       };
       class husky_RscText_1001 : husky_RscText
       {
           idc = -1;
           text = "$STR_DC_dispatchcenter";
           x = 0.293777 * safezoneW + safezoneX;
           y = 0.2844 * safezoneH + safezoneY;
           w = 0.412444 * safezoneW;
           h = 0.0286 * safezoneH;
           colorbackground[] = {0.827,0.329,0,1};
           style = 2;
       };
       class husky_RscText_1002 : husky_RscText
       {
           idc = -1;
           text = "$STR_DC_availabledispatches";
           x = 0.296885 * safezoneW + safezoneX;
           y = 0.3196 * safezoneH + safezoneY;
           w = 0.103144 * safezoneW;
           h = 0.0242 * safezoneH;
           colorbackground[] = {0.827,0.329,0,1};
           style = 2;
       };
       class husky_RscText_1004 : husky_RscText
       {
           idc = -1;
           text = "$STR_DC_information";
           x = 0.403083 * safezoneW + safezoneX;
           y = 0.3196 * safezoneH + safezoneY;
           w = 0.301096 * safezoneW;
           h = 0.0242 * safezoneH;
           colorbackground[] = {0.827,0.329,0,1};
           style = 2;
       };
       class husky_RscText_1005 : husky_RscText
       {
           idc = -1;
           text = "$STR_DC_answer";
           x = 0.403081 * safezoneW + safezoneX;
           y = 0.5352 * safezoneH + safezoneY;
           w = 0.301096 * safezoneW;
           h = 0.0242 * safezoneH;
           colorbackground[] = {0.827,0.329,0,1};
           style = 2;
       };
       class husky_RscText_1003 : husky_RscText
       {
           idc = -1;
           text = "Name:";
           x = 0.39997 * safezoneW + safezoneX;
           y = 0.3482 * safezoneH + safezoneY;
           w = 0.04125 * safezoneW;
           h = 0.0264 * safezoneH;
           font = "RobotoCondensedBold";
       };
       class husky_RscText_1007 : husky_RscText
       {
           idc = -1;
           text = "Position:";
           x = 0.400117 * safezoneW + safezoneX;
           y = 0.375111 * safezoneH + safezoneY;
           w = 0.04125 * safezoneW;
           h = 0.0264 * safezoneH;
           font = "RobotoCondensedBold";
       };
       class husky_RscText_1009 : husky_RscText
       {
           idc = -1;
           text = "$STR_DC_assigned";
           x = 0.400606 * safezoneW + safezoneX;
           y = 0.415741 * safezoneH + safezoneY;
           w = 0.04125 * safezoneW;
           h = 0.0264 * safezoneH;
           font = "RobotoCondensedBold";
       };
       class husky_RscText_1011 : husky_RscText
       {
           idc = -1;
           text = "$STR_DC_distance";
           x = 0.400734 * safezoneW + safezoneX;
           y = 0.441311 * safezoneH + safezoneY;
           w = 0.04125 * safezoneW;
           h = 0.0264 * safezoneH;
           font = "RobotoCondensedBold";
       };
       class husky_RscText_1013 : husky_RscText
       {
           idc = -1;
           text = "$STR_DC_unfinished";
           x = 0.400638 * safezoneW + safezoneX;
           y = 0.468511 * safezoneH + safezoneY;
           w = 0.0639374 * safezoneW;
           h = 0.0264 * safezoneH;
           font = "RobotoCondensedBold";
       };
       class husky_RscButton_1600 : husky_RscButton
       {
           idc = -1;
           text = "$STR_DC_seedispatch";
           x = 0.402764 * safezoneW + safezoneX;
           y = 0.500111 * safezoneH + safezoneY;
           w = 0.152612 * safezoneW;
           h = 0.0264 * safezoneH;
           colorbackground[] = {0,0,0,1};
           colortext[] = {255,255,255,1};
           coloractive[] = {0,0,0,1};
           colorbackgroundactive[] = {0.902,0.494,0.133,1};
           colorfocused[] = {0.902,0.494,0.133,1};
           action = "0 spawn husky_call_showcall";
           type = 1;
           access = 0;
           colorshadow[] = {0,0,0,0};
       };
       class husky_RscText_1015 : husky_RscText
       {
           idc = -1;
           text = "$STR_DC_sendposition";
           x = 0.572189 * safezoneW + safezoneX;
           y = 0.5682 * safezoneH + safezoneY;
           w = 0.0928124 * safezoneW;
           h = 0.0198 * safezoneH;
       };
       class husky_RscButton_1603 : husky_RscButton
       {
           idc = -1;
           text = "$STR_DC_send";
           x = 0.403605 * safezoneW + safezoneX;
           y = 0.678007 * safezoneH + safezoneY;
           w = 0.152612 * safezoneW;
           h = 0.0264 * safezoneH;
           colorbackground[] = {0,0,0,1};
           colortext[] = {255,255,255,1};
           coloractive[] = {0,0,0,1};
           colorbackgroundactive[] = {0.902,0.494,0.133,1};
           colorfocused[] = {0.902,0.494,0.133,1};
           action = "0 call husky_call_sendmessage";
           type = 1;
           access = 0;
           colorshadow[] = {0,0,0,0};
       };
       class husky_RscButton_1604 : husky_RscButton
       {
           idc = -1;
           text = "$STR_Global_Close";
           x = 0.560937 * safezoneW + safezoneX;
           y = 0.677422 * safezoneH + safezoneY;
           w = 0.141271 * safezoneW;
           h = 0.0264 * safezoneH;
           colorbackground[] = {0,0,0,1};
           colortext[] = {255,255,255,1};
           coloractive[] = {0,0,0,1};
           colorbackgroundactive[] = {0.902,0.494,0.133,1};
           colorfocused[] = {0.902,0.494,0.133,1};
           action = "closeDialog 0;";
           type = 1;
           access = 0;
           colorshadow[] = {0,0,0,0};
       };
   };
   class controls
   {
       class eintraege : husky_RscListbox
       {
           idc = 1011002;
           x = 0.296862 * safezoneW + safezoneX;
           y = 0.3438 * safezoneH + safezoneY;
           w = 0.103124 * safezoneW;
           h = 0.297 * safezoneH;
           colorbackground[] = {0,0,0,0.5};
           onlbselchanged = "0 spawn husky_call_lbchange";
           sizeex = 0.04;
       };
       class mapcontrol : husky_RscMapControl
       {
           idc = 1011003;
           x = 0.559309 * safezoneW + safezoneX;
           y = 0.348741 * safezoneH + safezoneY;
           w = 0.144364 * safezoneW;
           h = 0.17666 * safezoneH;
           maxsatellitealpha = 0.75;
           alphafadestartscale = 1.15;
           alphafadeendscale = 1.29;
       };
       class husky_RscEdit_1400 : husky_RscEdit
       {
           idc = 1011004;
           text = "";
           x = 0.404366 * safezoneW + safezoneX;
           y = 0.598859 * safezoneH + safezoneY;
           w = 0.297983 * safezoneW;
           h = 0.0748 * safezoneH;
           linespacing = 1;
           style = 16;
       };
       class husky_RscCheckbox_2800 : husky_Checkbox
       {
           idc = 1011005;
           x = 0.557939 * safezoneW + safezoneX;
           y = 0.564963 * safezoneH + safezoneY;
           w = 0.0175315 * safezoneW;
           h = 0.0264 * safezoneH;
           sizeex = 0.04;
       };
       class husky_RscCombo_2100 : husky_RscCombo
       {
           idc = 1011006;
           x = 0.403062 * safezoneW + safezoneX;
           y = 0.566 * safezoneH + safezoneY;
           w = 0.152612 * safezoneW;
           h = 0.0264 * safezoneH;
           onlbselchanged = "0 call husky_call_msgchange";
       };
       class husky_RscText_1014 : husky_RscText
       {
           idc = 1011007;
           text = "";
           x = 0.460651 * safezoneW + safezoneX;
           y = 0.468282 * safezoneH + safezoneY;
           w = 0.0938435 * safezoneW;
           h = 0.0264 * safezoneH;
           style = 1;
       };
       class husky_RscText_1012 : husky_RscText
       {
           idc = 1011008;
           text = "";
           x = 0.445366 * safezoneW + safezoneX;
           y = 0.44143 * safezoneH + safezoneY;
           w = 0.108279 * safezoneW;
           h = 0.0264 * safezoneH;
           style = 1;
       };
       class husky_RscText_1010 : husky_RscText
       {
           idc = 1011009;
           text = "";
           x = 0.445398 * safezoneW + safezoneX;
           y = 0.415687 * safezoneH + safezoneY;
           w = 0.108279 * safezoneW;
           h = 0.0264 * safezoneH;
           style = 1;
       };
       class husky_RscText_1006 : husky_RscText
       {
           idc = 1011010;
           text = "";
           x = 0.436682 * safezoneW + safezoneX;
           y = 0.348259 * safezoneH + safezoneY;
           w = 0.117558 * safezoneW;
           h = 0.0264 * safezoneH;
           style = 1;
       };
       class husky_RscText_1008 : husky_RscText
       {
           idc = 1011011;
           text = "";
           x = 0.436578 * safezoneW + safezoneX;
           y = 0.37526 * safezoneH + safezoneY;
           w = 0.0969334 * safezoneW;
           h = 0.0264 * safezoneH;
           style = 1;
       };
       class Picture_Button : husky_RscButton
       {
           idc = 1011012;
           x = 0.539806 * safezoneW + safezoneX;
           y = 0.37746 * safezoneH + safezoneY;
           w = 0.012375 * safezoneW;
           h = 0.022 * safezoneH;
           action = "";
           type = 1;
           access = 0;
           colorshadow[] = {0,0,0,0};
           color[] = {1,1,1,1};
           coloractive[] = {1,1,1,1};
           colorbackground[] = {0,0,0,0};
           colorbackgroundfocused[] = {0,0,0,0};
           style = 48 + 0x800;
           text = "";
       };
       class husky_RscButton_1602 : husky_RscButton
       {
           idc = 1011013;
           text = "$STR_DC_accept";
           x = 0.297035 * safezoneW + safezoneX;
           y = 0.645615 * safezoneH + safezoneY;
           w = 0.103124 * safezoneW;
           h = 0.0264 * safezoneH;
           colorbackground[] = {0,0,0,1};
           colortext[] = {255,255,255,1};
           coloractive[] = {0,0,0,1};
           colorbackgroundactive[] = {0.902,0.494,0.133,1};
           colorfocused[] = {0.902,0.494,0.133,1};
           action = "0 spawn husky_call_accept";
           type = 1;
           access = 0;
           colorshadow[] = {0,0,0,0};
           colorbackgrounddisabled[] = {0,0,0,0.5};
           colordisabled[] = {1,1,1,0.5};
       };
       class husky_RscButton_1601 : husky_RscButton
       {
           idc = 1011014;
           text = "$STR_DC_delete";
           x = 0.297003 * safezoneW + safezoneX;
           y = 0.67777 * safezoneH + safezoneY;
           w = 0.103124 * safezoneW;
           h = 0.0264 * safezoneH;
           colorbackground[] = {0,0,0,1};
           colortext[] = {255,255,255,1};
           coloractive[] = {0,0,0,1};
           colorbackgroundactive[] = {0.902,0.494,0.133,1};
           colorfocused[] = {0.902,0.494,0.133,1};
           action = "0 spawn husky_call_delete";
           type = 1;
           access = 0;
           colorshadow[] = {0,0,0,0};
           colorbackgrounddisabled[] = {0,0,0,0.5};
           colordisabled[] = {1,1,1,0.5};
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
