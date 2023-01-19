//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

/*
 * Dialog by 	: MrFrost (https://steamcommunity.com/id/mrfrostlp)
 * Defines by 	: Heyoxe (https://steamcommunity.com/id/Heyoxe/)
 *
 * Edited by 	: [YourName]
 *
 * ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
 * Support via
 * Discord:         MrFrost#1897
 * Native-Network:  https://native-network.net/user/5883-mrfrost/
 * ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
 *
 * Hereby I forbid the publication under a different name, as original or modified, without my explicit permission.
 * This script was developed explicitly for the Native-Network community.
 * It is not allowed to use, publish or sell it on other platforms without my explicit permission.
 * It is not allowed to remove or edit this header (except for the line "Edited by :").
 */

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////// IDD/IDCs Macros ///////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Bugtracker
#define MrFrost_IDD_Bugtracker 31000
//Backgrounds
#define MrFrost_IDC_Bugtracker_MainBackground -1
#define MrFrost_IDC_Bugtracker_Background_ReportTitle -1
#define MrFrost_IDC_Bugtracker_Background_ReportText -1
#define MrFrost_IDC_Bugtracker_Background_Buttons -1
//Bars
#define MrFrost_IDC_Bugtracker_Bar_Bottom -1
#define MrFrost_IDC_Bugtracker_Bar_Top -1
#define MrFrost_IDC_Bugtracker_Bar_ReportText -1
#define MrFrost_IDC_Bugtracker_Bar_ReportTitle -1
#define MrFrost_IDC_Bugtracker_Bar_Buttons -1
//Pictures
#define MrFrost_IDC_Bugtracker_Picture_Logo -1
#define MrFrost_IDC_Bugtracker_Picture_Close -1
//Titles and Text
#define MrFrost_IDC_Bugtracker_Title_Main 31005
#define MrFrost_IDC_Bugtracker_Title_PlayerName 31001
#define MrFrost_IDC_Bugtracker_Title_UID 31002
#define MrFrost_IDC_Bugtracker_Text_Information 31006
//Edits
#define MrFrost_IDC_Bugtracker_Edit_ReportTitle 31003
#define MrFrost_IDC_Bugtracker_Edit_BugReport 31004
//Buttons
#define MrFrost_IDC_Bugtracker_Button_Send -1
#define MrFrost_IDC_Bugtracker_Button_Close -1

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////// Positions Macros //////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

/*
#define MrFrost_POSITION(X,Y,W,H) \
	x = #((((X * (getResolution select 0)) / 1920) * safeZoneW) / (getResolution select 0) + safeZoneX); \
	y = #((((Y * (getResolution select 1)) / 1080) * safeZoneH) / (getResolution select 1) + safeZoneY); \
	w = #((((W * (getResolution select 0)) / 1920) * safeZoneW) / (getResolution select 0)); \
	h = #((((H * (getResolution select 1)) / 1080) * safeZoneH) / (getResolution select 1));

#define MrFrost_POSITION_CT(X,Y,W,H) \
	x = #((((X * (getResolution select 0)) / 1920) * safeZoneW) / (getResolution select 0)); \
	y = #((((Y * (getResolution select 1)) / 1080) * safeZoneH) / (getResolution select 1)); \
	w = #((((W * (getResolution select 0)) / 1920) * safeZoneW) / (getResolution select 0)); \
	h = #((((H * (getResolution select 1)) / 1080) * safeZoneH) / (getResolution select 1));
*/

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////// Dialog ///////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class Bugtracker {
	idd = MrFrost_IDD_Bugtracker;
	name = "Bugtracker";
	movingEnable = false;
	enableSimulation = false;
	onload = "[0] spawn husky_fnc_Bugtracker;";

	class Controls {

		class Bugtracker_MainBackground : MrFrost_RscText {
			idc = MrFrost_IDC_Bugtracker_MainBackground;
			MrFrost_POSITION(613,249,695,582)
			colorBackground[] = {0.09412,0.09412,0.09412,1};
		};


		class Bugtracker_Background_ReportTitle : MrFrost_RscText {
			idc = MrFrost_IDC_Bugtracker_Background_ReportTitle;
			MrFrost_POSITION(628,308,665,68)
			colorBackground[] = {0,0,0,0.31};
		};

		class Bugtracker_Background_ReportText : MrFrost_RscText {
			idc = MrFrost_IDC_Bugtracker_Background_ReportText;
			MrFrost_POSITION(628,397,665,340)
			colorBackground[] = {0,0,0,0.31};
		};

		class Bugtracker_Background_Buttons : MrFrost_RscText {
			idc = MrFrost_IDC_Bugtracker_Background_Buttons;
			MrFrost_POSITION(628,758,665,58)
			colorBackground[] = {0,0,0,0.31};
		};

		//////////////////////////////////////////////////////////////////////////////////////////////////////////////

		class Bugtracker_Bar_Bottom : MrFrost_RscText {
			idc = MrFrost_IDC_Bugtracker_Bar_Bottom;
			MrFrost_POSITION(613,831,695,7)
			colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
		};
		class Bugtracker_Bar_Top : MrFrost_RscText {
			idc = MrFrost_IDC_Bugtracker_Bar_Top;
			MrFrost_POSITION(613,242,695,7)
			colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
		};
		class Bugtracker_Bar_ReportText : MrFrost_RscText {
			idc = MrFrost_IDC_Bugtracker_Bar_ReportText;
			MrFrost_POSITION(628,391,665,6)
			colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
		};
		class Bugtracker_Bar_ReportTitle : MrFrost_RscText {
			idc = MrFrost_IDC_Bugtracker_Bar_ReportTitle;
			MrFrost_POSITION(628,302,665,6)
			colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
		};
		class Bugtracker_Bar_Buttons : MrFrost_RscText {
			idc = MrFrost_IDC_Bugtracker_Bar_Buttons;
			MrFrost_POSITION(628,752,665,6)
			colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
        };

		//////////////////////////////////////////////////////////////////////////////////////////////////////////////

/*
		class Bugtracker_Picture_Logo : MrFrost_RscPictureKeepAspect {
			idc = MrFrost_IDC_Bugtracker_Picture_Logo;
			MrFrost_POSITION(705,292,512,512)
			text = "textures\WatermarkHG.paa";
		};*/

		class Bugtracker_Picture_Close : MrFrost_RscPictureKeepAspect {
			idc = MrFrost_IDC_Bugtracker_Picture_Close;
			MrFrost_POSITION(618,254,18,18)
            text= "\A3\ui_f\data\GUI\Rsc\RscDisplayArcadeMap\icon_exit_cross_ca.paa";
		};

		//////////////////////////////////////////////////////////////////////////////////////////////////////////////

		class Bugtracker_Title_Main : MrFrost_RscText {
			idc = MrFrost_IDC_Bugtracker_Title_Main;
			MrFrost_POSITION(832,265,257,40)
			colorBackground[] = {0,0,0,0};
            colortext[] = {1,1,1,1};
            colorShadow[] = {0,0,0,0};
            style = 0x02;
            sizeex = 0.08;
            font = PuristaSemiBold;
			text = "";
		};

		class Bugtracker_Title_PlayerName : MrFrost_RscText {
			idc = MrFrost_IDC_Bugtracker_Title_PlayerName;
			MrFrost_POSITION(628,273,204,40)
			colorBackground[] = {0,0,0,0};
            colortext[] = {1,1,1,1};
            colorShadow[] = {0,0,0,0};
            style = 0x02;
            sizeex = 0.04;
            font = PuristaSemiBold;
			text = "";
		};

		class Bugtracker_Title_UID : MrFrost_RscText {
			idc = MrFrost_IDC_Bugtracker_Title_UID;
			MrFrost_POSITION(1089,273,204,40)
			colorBackground[] = {0,0,0,0};
            colortext[] = {1,1,1,1};
            colorShadow[] = {0,0,0,0};
            style = 0x02;
            sizeex = 0.04;
            font = PuristaSemiBold;
			text = "";
		};

		
		class Bugtracker_Text_Information : MrFrost_RscText {
			idc = MrFrost_IDC_Bugtracker_Text_Information;
			MrFrost_POSITION(908,773,370,28)
			colorBackground[] = {0,0,0,0};
            colortext[] = {1,1,1,1};
            colorShadow[] = {0,0,0,0};
            style = 0x02;
            sizeex = 0.03;
            font = PuristaSemiBold;
			text = "";
		};

		//////////////////////////////////////////////////////////////////////////////////////////////////////////////

		class Bugtracker_Edit_ReportTitle : MrFrost_RscEdit {
			idc = MrFrost_IDC_Bugtracker_Edit_ReportTitle;
			MrFrost_POSITION(628,308,665,68)
			colorBackground[] = {0,0,0,0};
            colortext[] = {1,1,1,1};
            colorShadow[] = {0,0,0,0};
			maxChars = 70;
            style = 512;
            sizeex = 0.048;
            text= "";
		};
		class Bugtracker_Edit_BugReport : MrFrost_RscEdit {
			idc = MrFrost_IDC_Bugtracker_Edit_BugReport;
			MrFrost_POSITION(628,397,665,340)
			colorBackground[] = {0,0,0,0};
            colortext[] = {1,1,1,1};
            colorShadow[] = {0,0,0,0};
			maxChars = 750;
            style = 16 + 512;
			lineSpacing = 1;
            sizeex = 0.048;
            text= "";
		};

		//////////////////////////////////////////////////////////////////////////////////////////////////////////////

		class Bugtracker_Button_Send : MrFrost_RscButton {
			idc = MrFrost_IDC_Bugtracker_Button_Send;
			MrFrost_POSITION(643,773,250,28)
			colorBackground[] = {0.098,0.098,0.098,1};
            colortext[] = {1,1,1,1};
			colorBackgroundActive[] = {0.8549,0.29412,0,1};
			colorFocused[] = {0.098,0.098,0.098,1};
            colorShadow[] = {0,0,0,0};
            soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1};
            soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1};
            soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1};
            soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1};
            font = PuristaSemiBold;
            sizeEx = 0.035;
            text= "$STR_Bug_Send";
            onButtonClick = "[1] spawn husky_fnc_Bugtracker;";
		};
		
		class Bugtracker_Button_Close : MrFrost_RscButton {
			idc = MrFrost_IDC_Bugtracker_Button_Close;
			MrFrost_POSITION(618,254,18,18)
			colorBackground[] = {0,0,0,0};
            colortext[] = {1,1,1,0};
			colorBackgroundActive[] = {0,0,0,0};
			colorFocused[] = {0,0,0,0};
            colorShadow[] = {0,0,0,0};
            soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1};
            soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1};
            soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1};
            soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1};
            font = PuristaSemiBold;
            sizeEx = 0.035;
            text= "";
            onButtonClick = "closeDialog 0;";
		};
	};
};
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////