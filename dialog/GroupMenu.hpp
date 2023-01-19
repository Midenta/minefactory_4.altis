class groupMenu {
	idd = 7800;
    name= "groupMenu";
    movingEnable = 0;
    enableSimulation = 1;
    onLoad = "[] spawn husky_fnc_groupLoadDatas;";

	class controlsBackground {
		class BackgroundMain: husky_RscPicture
		{
			idc = -1;
			text = "#(argb,8,8,3)color(0.05,0.05,0.1,1)";
			x = 0.4175 * safezoneW + safezoneX;
			y = 0.313 * safezoneH + safezoneY;
			w = 0.165 * safezoneW;
			h = 0.374 * safezoneH;
		};
		class Title: husky_RscStructuredText
		{
			idc = -1;
			text = "<t align='center'><t size='1.8'>Gruppen System</t><br/><t size='1.4'>German-Gaming</t></t>"; //--- ToDo: Localize;
			x = 0.422656 * safezoneW + safezoneX;
			y = 0.346 * safezoneH + safezoneY;
			w = 0.154687 * safezoneW;
			h = 0.121 * safezoneH;
			colorBackground[] = {0,0,0,0};
		};
		class titleWindow: husky_RscStructuredText
		{
			idc = -1;
			text = "Gruppen System"; //--- ToDo: Localize;
			x = 0.4175 * safezoneW + safezoneX;
			y = 0.313 * safezoneH + safezoneY;
			w = 0.165 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {0.1,0.1,0.1,1};
			size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
		};
	};
	class controls {
		class GangInfoText: husky_RscControlsGroup
		{
			idc = -1;
			x = 0.422656 * safezoneW + safezoneX;
			y = 0.478 * safezoneH + safezoneY;
			w = 0.154687 * safezoneW;
			h = 0.165 * safezoneH;
			class Controls
			{
				class infoText: husky_RscStructuredText
				{
					idc = 7801;
					text = ""; //--- ToDo: Localize;
					x = 0;
					y = 0;
					w = 0.154687 * safezoneW;
					h = 0;
					colorBackground[] = {0,0,0,0};
					size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
				};
			};
		};
		class btnGroupNameChange: husky_RscButton
		{
			idc = 7835;
			text = "Gruppen Name aendern"; //--- ToDo: Localize;
            onButtonClick = "createDialog ""groupNameChange"";";
			x = 0.422656 * safezoneW + safezoneX;
			y = 0.654 * safezoneH + safezoneY;
			w = 0.154687 * safezoneW;
			h = 0.022 * safezoneH;
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
		};
		class memberArea: husky_RscControlsGroup
		{
			idc = 7802;
			x = 0.273125 * safezoneW + safezoneX;
			y = 0.313 * safezoneH + safezoneY;
			w = 0.145375 * safezoneW;
			h = 0.374 * safezoneH;
			class Controls
			{
				class memberBackground: husky_RscPicture
				{
					idc = -1;
					text = "#(argb,8,8,3)color(0.05,0.08,0.1,1)";
					x = 0 * safezoneW;
					y = 0 * safezoneH;
					w = 0.145375 * safezoneW;
					h = 0.374 * safezoneH;
				};
				class lisMemberList: husky_RscListbox
				{
					idc = 7804;
					x = 0.0051528 * safezoneW;
					y = 0.011 * safezoneH;
					w = 0.134062 * safezoneW;
					h = 0.154 * safezoneH;
					sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
				};
				class btnKickPlayer: husky_RscButton
				{
					idc = 7805;
            		onButtonClick = "[] spawn husky_fnc_groupKickPlayer";
					text = "Person Kicken"; //--- ToDo: Localize;
					x = 0.00515623 * safezoneW;
					y = 0.308 * safezoneH;
					w = 0.134062 * safezoneW;
					h = 0.022 * safezoneH;
					sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
				};
				class btnNewLeader: husky_RscButton
				{
					idc = 7806;
            		onButtonClick = "[] spawn husky_fnc_groupNewLeader";
					text = "Neuer Fuehrer"; //--- ToDo: Localize;
					x = 0.00515623 * safezoneW;
					y = 0.341 * safezoneH;
					w = 0.134062 * safezoneW;
					h = 0.022 * safezoneH;
					sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
				};
				class btnLeaveGroup: husky_RscButton
				{
					idc = 7807;
            		onButtonClick = "[] spawn husky_fnc_groupLeave";
					text = "Gruppe Verlassen"; //--- ToDo: Localize;
					x = 0.00515623 * safezoneW;
					y = 0.275 * safezoneH;
					w = 0.134062 * safezoneW;
					h = 0.022 * safezoneH;
					sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
				};
				class btnDisbandGroup: husky_RscButton
				{
					idc = 7803;
            		onButtonClick = "[] spawn husky_fnc_groupDisband";
					text = "Gruppe Aufloesen"; //--- ToDo: Localize;
					x = 0.00515623 * safezoneW;
					y = 0.242 * safezoneH;
					w = 0.134062 * safezoneW;
					h = 0.022 * safezoneH;
					sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
				};
				class btnUpgrade: husky_RscButton
				{
					idc = 7830;
            		onButtonClick = "[] spawn husky_fnc_groupUpgrade";
					text = "Gruppe Upgraden"; //--- ToDo: Localize;
					x = 0.00515623 * safezoneW;
					y = 0.209 * safezoneH;
					w = 0.134062 * safezoneW;
					h = 0.022 * safezoneH;
					sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
				};
				class btnGroupLogs: husky_RscButton
				{
					idc = 7837;
            		onButtonClick = "[] spawn husky_fnc_groupGetLogs";
					text = "Logs"; //--- ToDo: Localize;
					x = 0.00515596 * safezoneW;
					y = 0.176 * safezoneH;
					w = 0.134062 * safezoneW;
					h = 0.022 * safezoneH;
					sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
				};
			};
		};
		class playerArea: husky_RscControlsGroup
		{
			idc = 7808;
			x = 0.5825 * safezoneW + safezoneX;
			y = 0.313 * safezoneH + safezoneY;
			w = 0.144375 * safezoneW;
			h = 0.374 * safezoneH;
			class Controls
			{
				class backgroundPlayerInvite: husky_RscPicture
				{
					idc = -1;
					text = "#(argb,8,8,3)color(0.05,0.08,0.1,1)";
					x = 0 * safezoneW;
					y = 0 * safezoneH;
					w = 0.144375 * safezoneW;
					h = 0.374 * safezoneH;
				};
				class editSearchPlayer: husky_RscEdit
				{
					idc = 7809;
					text = "";
					onKeyUp = "[] call husky_fnc_groupLoadPlayers";
					x = 0.00515602 * safezoneW;
					y = 0.011 * safezoneH;
					w = 0.134062 * safezoneW;
					h = 0.022 * safezoneH;
					tooltip = "Person Suchen"; //--- ToDo: Localize;
					sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
				};
				class lisAllPlayer: husky_RscListbox
				{
					idc = 7810;
					x = 0.00515526 * safezoneW;
					y = 0.033 * safezoneH;
					w = 0.134062 * safezoneW;
					h = 0.297 * safezoneH;
					sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
				};
				class btnInvitePlayer: husky_RscButton
				{
					idc = 7811;
            		onButtonClick = "[] spawn husky_fnc_groupInvitePlayer";
					text = "Person Einladen"; //--- ToDo: Localize;
					x = 0.00515625 * safezoneW;
					y = 0.341 * safezoneH;
					w = 0.134062 * safezoneW;
					h = 0.022 * safezoneH;
					sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
				};
			};
		};
		class rightManagmentArea: husky_RscControlsGroup
		{
			idc = 7812;
			x = 0.273125 * safezoneW + safezoneX;
			y = 0.126 * safezoneH + safezoneY;
			w = 0.45375 * safezoneW;
			h = 0.187 * safezoneH;
			class Controls
			{
				class backgroundRightManagement: husky_RscPicture
				{
					idc = -1;
					text = "#(argb,8,8,3)color(0.08,0.05,0.1,1)";
					x = 0 * safezoneW;
					y = 0 * safezoneH;
					w = 0.45375 * safezoneW;
					h = 0.187 * safezoneH;
				};
				class lisRights: husky_RscListbox
				{
					idc = 7814;
            		onLBSelChanged = "[] spawn husky_fnc_groupRightSel";
					x = 0.0051565 * safezoneW;
					y = 0.044 * safezoneH;
					w = 0.20625 * safezoneW;
					h = 0.066 * safezoneH;
					sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
				};
				class btnSaveRightSettings: husky_RscButton
				{
					idc = 7827;
            		onButtonClick = "[] spawn husky_fnc_groupRightEdit";
					text = "Ausgewaehlte Gruppe speichern"; //--- ToDo: Localize;
					x = 0.216562 * safezoneW;
					y = 0.121 * safezoneH;
					w = 0.232031 * safezoneW;
					h = 0.022 * safezoneH;
					sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
				};
				class btnCreateNewGroup: husky_RscButton
				{
					idc = 7828;
            		onButtonClick = "[] spawn husky_fnc_groupRightNewEdit";
					text = "Neue Gruppen Rechte hinzufuegen"; //--- ToDo: Localize;
					x = 0.00515623 * safezoneW;
					y = 0.121 * safezoneH;
					w = 0.20625 * safezoneW;
					h = 0.022 * safezoneH;
					sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
				};
				class btnGivePlayerRights: husky_RscButton
				{
					idc = 7813;
            		onButtonClick = "[] spawn husky_fnc_groupRightSetPlayer";
					text = "Gruppen Rechte Spieler zuweisen"; //--- ToDo: Localize;
					x = 0.216562 * safezoneW;
					y = 0.154 * safezoneH;
					w = 0.232031 * safezoneW;
					h = 0.022 * safezoneH;
					sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
				};
				class btnDelGroup: husky_RscButton
				{
					idc = -1;
            		onButtonClick = "[] spawn husky_fnc_groupRightDel";
					text = "Gruppen Rechte Loeschen"; //--- ToDo: Localize;
					x = 0.00515623 * safezoneW;
					y = 0.154 * safezoneH;
					w = 0.20625 * safezoneW;
					h = 0.022 * safezoneH;
					sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
				};
				class editRightName: husky_RscEdit
				{
					idc = 7836;
					text = "";
					x = 0.00515623 * safezoneW;
					y = 0.011 * safezoneH;
					w = 0.20625 * safezoneW;
					h = 0.022 * safezoneH;
					tooltip = "Gruppen Rechte Name aendern"; //--- ToDo: Localize;
					sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
				};
			};
		};
		class descriptionArea: husky_RscControlsGroup
		{
			idc = 7829;
			x = 0.273125 * safezoneW + safezoneX;
			y = 0.687 * safezoneH + safezoneY;
			w = 0.45375 * safezoneW;
			h = 0.187 * safezoneH;
			class Controls
			{
				class backgroundDescription: husky_RscPicture
				{
					idc = -1;
					text = "#(argb,8,8,3)color(0.08,0.05,0.1,1)";
					x = 0 * safezoneW;
					y = 0 * safezoneH;
					w = 0.45375 * safezoneW;
					h = 0.187 * safezoneH;
				};
				class editGroupeDescription: husky_RscEdit
				{
					idc = 7831;
					text = "";
					style=16;
					onKeyUp = "[] spawn husky_fnc_groupLoadDescriptionLive";
					x = 0.232032 * safezoneW;
					y = 0.011 * safezoneH;
					w = 0.216563 * safezoneW;
					h = 0.132 * safezoneH;
					sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
					tooltip = "Hier kommt die Gruppen Beschreibung rein !"; //--- ToDo: Localize;
				};
				class btnChangeDescription: husky_RscButton
				{
					idc = 7832;
            		onButtonClick = "[] spawn husky_fnc_groupDescriptionChange";
					text = "Gruppen Beschreibung aendern"; //--- ToDo: Localize;
					x = 0.00515623 * safezoneW;
					y = 0.154 * safezoneH;
					w = 0.216563 * safezoneW;
					h = 0.022 * safezoneH;
					sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
				};
				class btnChangeCroupDescription: husky_RscButton
				{
					idc = 7833;
            		onButtonClick = "[] spawn husky_fnc_groupDescriptionBackup";
					text = "Gruppen Beschreibung wiederherstellen"; //--- ToDo: Localize;
					x = 0.232031 * safezoneW;
					y = 0.154 * safezoneH;
					w = 0.216563 * safezoneW;
					h = 0.022 * safezoneH;
					sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
				};
				class titleDescription: husky_RscStructuredText
				{
					idc = -1;
					text = "Live Vorschau"; //--- ToDo: Localize;
					x = 0.00515623 * safezoneW;
					y = 0.011 * safezoneH;
					w = 0.216563 * safezoneW;
					h = 0.022 * safezoneH;
					colorBackground[] = {0,0,0,0};
				};
				class showDescription: husky_RscControlsGroup
				{
					idc = -1;
					x = (0.278281 * safezoneW + safezoneX) - (0.273125 * safezoneW + safezoneX);
					y = (0.72 * safezoneH + safezoneY) - (0.687 * safezoneH + safezoneY);
					w = 0.216563 * safezoneW;
					h = 0.11 * safezoneH;
					class Controls
					{
						class titleDescription: husky_RscStructuredText
						{
							idc = 7834;
							text = ""; //--- ToDo: Localize;
							x = 0;
							y = 0;
							w = 0.215563 * safezoneW;
							h = 0;
							colorBackground[] = {0.1,0.1,0.1,1};
							tooltip = "Vorschau"; //--- ToDo: Localize;
							size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
						};
					};
				};
			};
		};
	};
};
