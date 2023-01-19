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

//InfoMenu
#define MrFrost_IDD_InfoMenu 26501
//Main Background
#define MrFrost_IDC_InfoMenu_MainBackground -1
#define MrFrost_IDC_InfoMenu_Bar_Bottom -1
#define MrFrost_IDC_InfoMenu_Bar_Top -1
//Background InfoText
#define MrFrost_IDC_InfoMenu_Background_InfoText -1
#define MrFrost_IDC_InfoMenu_Bar_InfoText -1
//Background Selection
#define MrFrost_IDC_InfoMenu_Background_Selection -1
#define MrFrost_IDC_InfoMenu_Bar_Selection -1
//Pictures
#define MrFrost_IDC_InfoMenu_Picture_Logo -1
#define MrFrost_IDC_InfoMenu_Picture_Close -1
//Groups
#define MrFrost_IDC_InfoMenu_Group_InfoText -1
//Text and Titles
#define MrFrost_IDC_InfoMenu_Title_InfoText 26502
#define MrFrost_IDC_InfoMenu_Title_Main 26503
#define MrFrost_IDC_InfoMenu_Text_InfoText 26504
//Selection
#define MrFrost_IDC_InfoMenu_List_Selection 26505
//Buttons
#define MrFrost_IDC_InfoMenu_Button_Close -1

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

class InfoMenu {
	idd = MrFrost_IDD_InfoMenu;
	name = "InfoMenu";
    movingEnable = false;
    enableSimulation = false;

	class Controls {

		//////////////////////////////////////////////////////////////////////////////////////////////////////////////    
		////////////////////////////////////////////// Main Background ///////////////////////////////////////////////
		//////////////////////////////////////////////////////////////////////////////////////////////////////////////

		class InfoMenu_MainBackground : MrFrost_RscText {
			idc = MrFrost_IDC_InfoMenu_MainBackground;
			MrFrost_POSITION(460,249,1000,582)
			colorBackground[] = {0.09412,0.09412,0.09412,1};
		};

		class InfoMenu_Bar_Bottom : MrFrost_RscText {
			idc = MrFrost_IDC_InfoMenu_Bar_Bottom;
			MrFrost_POSITION(460,831,1000,7)
			colorBackground[] = {0.8549,0.29412,0,1};
		};

		class InfoMenu_Bar_Top : MrFrost_RscText {
			idc = MrFrost_IDC_InfoMenu_Bar_Top;
			MrFrost_POSITION(460,242,1000,7)
			colorBackground[] = {0.8549,0.29412,0,1};
		};

		//////////////////////////////////////////////////////////////////////////////////////////////////////////////
		////////////////////////////////////////////////// Pictures //////////////////////////////////////////////////
		//////////////////////////////////////////////////////////////////////////////////////////////////////////////

/*
		class InfoMenu_Picture_Logo : MrFrost_RscPictureKeepAspect {
			idc = MrFrost_IDC_InfoMenu_Picture_Logo;
			MrFrost_POSITION(857,304,512,512)
			text = "textures\WatermarkHG.paa";
		};*/
		
		class InfoMenu_Picture_Close : MrFrost_RscPictureKeepAspect {
			idc = MrFrost_IDC_InfoMenu_Picture_Close;
			MrFrost_POSITION(465,254,18,18)
            text= "\A3\ui_f\data\GUI\Rsc\RscDisplayArcadeMap\icon_exit_cross_ca.paa";
		};

		//////////////////////////////////////////////////////////////////////////////////////////////////////////////
		//////////////////////////////////////////// Background InfoText /////////////////////////////////////////////
		//////////////////////////////////////////////////////////////////////////////////////////////////////////////

		class InfoMenu_Background_InfoText : MrFrost_RscText {
			idc = MrFrost_IDC_InfoMenu_Background_InfoText;
			MrFrost_POSITION(780,308,665,508)
			colorBackground[] = {0,0,0,0.31};
		};

		class InfoMenu_Bar_InfoText : MrFrost_RscText {
			idc = MrFrost_IDC_InfoMenu_Bar_InfoText;
			MrFrost_POSITION(780,302,665,6)
			colorBackground[] = {0.8549,0.29412,0,1};
		};

		//////////////////////////////////////////////////////////////////////////////////////////////////////////////
		//////////////////////////////////////////// Background Selection ////////////////////////////////////////////
		//////////////////////////////////////////////////////////////////////////////////////////////////////////////

		class InfoMenu_Background_Selection : MrFrost_RscText {
			idc = MrFrost_IDC_InfoMenu_Background_Selection;
			MrFrost_POSITION(475,308,290,508)
			colorBackground[] = {0,0,0,0.31};
		};

		class InfoMenu_Bar_Selection : MrFrost_RscText {
			idc = MrFrost_IDC_InfoMenu_Bar_Selection;
			MrFrost_POSITION(475,302,290,6)
			colorBackground[] = {0.8549,0.29412,0,1};
		};

		//////////////////////////////////////////////////////////////////////////////////////////////////////////////
		////////////////////////////////////////////// Titles and Text ///////////////////////////////////////////////
		//////////////////////////////////////////////////////////////////////////////////////////////////////////////

		class InfoMenu_Title_InfoText : MrFrost_RscText {
			idc = MrFrost_IDC_InfoMenu_Title_InfoText;
			MrFrost_POSITION(780,264,665,40)
			colorBackground[] = {0,0,0,0};
            colortext[] = {1,1,1,1};
            colorShadow[] = {0,0,0,0};
            style = 0x02;
            sizeex = 0.08;
            font = PuristaSemiBold;
			text = "";
		};

		class InfoMenu_Title_Main : MrFrost_RscText {
			idc = MrFrost_IDC_InfoMenu_Title_Main;
			MrFrost_POSITION(475,264,290,40)
			colorBackground[] = {0,0,0,0};
            colortext[] = {1,1,1,1};
            colorShadow[] = {0,0,0,0};
            style = 0x02;
            sizeex = 0.08;
            font = PuristaSemiBold;
            text = "Info Menu";
		};


		class InfoMenu_Group_InfoText : MrFrost_RscControlsGroup {
			idc = MrFrost_IDC_InfoMenu_Group_InfoText;
			MrFrost_POSITION(780,308,665,508)

			class HScrollbar : HScrollbar
           {
               height = 0;
           };

            class Controls {
				
                class InfoMenu_Text_InfoText: MrFrost_RscStructuredText {
                    idc = MrFrost_IDC_InfoMenu_Text_InfoText;
                    sizeEx = 0.020;
                    text = "";
                    colorBackground[] = {0,0,0,0};
                    shadow = 0;
                    x = 0;
                    y = 0;
                    w = 0.814;
					h = 0;
                    //h = 0.853;
                };
            };
		};

		/*class InfoMenu_Text_InfoText : MrFrost_RscStructuredText {
			idc = MrFrost_IDC_InfoMenu_Text_InfoText;
			MrFrost_POSITION(780,308,665,508)
            colorBackground[] = {0,0,0,0};
            colorShadow[] = {0,0,0,0};
            text = "";
		};*/

		//////////////////////////////////////////////////////////////////////////////////////////////////////////////
		///////////////////////////////////////////////// Selection //////////////////////////////////////////////////
		//////////////////////////////////////////////////////////////////////////////////////////////////////////////

		class InfoMenu_List_Selection : MrFrost_RscTree {
			idc = MrFrost_IDC_InfoMenu_List_Selection;
			MrFrost_POSITION(475,312,290,501)
			colorBackground[] = {0,0,0,0};
            colortext[] = {1,1,1,1};
            colorShadow[] = {0,0,0,0};
            sizeEx = 0.035;
			onTreeSelChanged = "[]spawn MrFrost_fnc_InfoMenuSelectionClick;";
		};

		//////////////////////////////////////////////////////////////////////////////////////////////////////////////
		////////////////////////////////////////////////// Buttons ///////////////////////////////////////////////////
		//////////////////////////////////////////////////////////////////////////////////////////////////////////////

		class InfoMenu_Button_Close : MrFrost_RscButton {
			idc = MrFrost_IDC_InfoMenu_Button_Close;
			MrFrost_POSITION(465,254,18,18)
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

		//////////////////////////////////////////////////////////////////////////////////////////////////////////////
		//////////////////////////////////////////////////////////////////////////////////////////////////////////////
		//////////////////////////////////////////////////////////////////////////////////////////////////////////////
	};
};
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////