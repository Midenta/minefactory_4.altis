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
class husky_admineventzwei {
    idd = 133565;
    name = "husky_admineventzwei";
    movingEnable = false;
    enableSimulation = false;

    class controlsBackground {
        class husky_RscTitleBackground_hintergrund: husky_RscPicture
        {
            idc = -1;
            text = "textures\Menus\TrunkPic.paa";
            x = 0.027940 * safezoneW + safezoneX;
            y = -0.08439 * safezoneH + safezoneY;
            w = 0.951584 * safezoneW;
            h = 0.668303 * safezoneH;
        };
    };
    class controls {
        
        class airdropevent: husky_RscButtonMenu
        {
            idc = 133567;
            x = 0.217309 * safezoneW + safezoneX;
            y = 0.091082 * safezoneH + safezoneY;
            w = 0.095589 * safezoneW;
            h = 0.039216 * safezoneH;
            ColorBackground[] = {1,0.647058,0,1};
			text = "Airdrop";
			//onbuttonclick = "[]spawn TON_fnc_Airdrop;";
			tooltip = "Startet das Airdrop Event! *Noch nicht Verf�gbar*";
        };
        class tsunami: husky_RscButtonMenu
        {
            idc = 133568;
            x = 0.216313 * safezoneW + safezoneX;
            y = 0.144114 * safezoneH + safezoneY;
            w = 0.095589 * safezoneW;
            h = 0.039216 * safezoneH;
            ColorBackground[] = {1,0.647058,0,1};
			text = "Tsunami";
			//onbuttonclick = "null = [100,920,true,true,true,true,true,1] execvm ""dialog\AL_monsoon\al_monsoon.sqf""";
			tooltip = "Startet das Tsunami! *Noch nicht Verf�gbar*";
        };
        class Meteoriteneinschlag: husky_RscButtonMenu
        {
            idc = 133569;
            x = 0.216834 * safezoneW + safezoneX;
            y = 0.249161 * safezoneH + safezoneY;
            w = 0.095589 * safezoneW;
            h = 0.039216 * safezoneH;
            ColorBackground[] = {1,0.647058,0,1};
			text = "Meteoriteneinschlag";
			//onbuttonclick = "closeDialog 0;";
			tooltip = "Startet ein Meteoriteneinschlag! *Noch nicht Verf�gbar*";
        };
        class Erdbeben: husky_RscButtonMenu
        {
            idc = 133570;
            x = 0.216834 * safezoneW + safezoneX;
            y = 0.198057 * safezoneH + safezoneY;
            w = 0.095589 * safezoneW;
            h = 0.039216 * safezoneH;
            ColorBackground[] = {1,0.647058,0,1};
			text = "Erdbeben";
			//onbuttonclick = "null= [] execVM ""Scripts\husky\events\GF_Earthquakes.sqf"";";
			tooltip = "Startet ein Erdbeben! *Noch nicht Verf�gbar*";
        };
        class Flut: husky_RscButtonMenu
        {
            idc = 2970;
            x = 0.216834 * safezoneW + safezoneX;
            y = 0.35894 * safezoneH + safezoneY;
            w = 0.095589 * safezoneW;
            h = 0.039216 * safezoneH;
            ColorBackground[] = {1,0.647058,0,1};
			text = "Flut";
			//onbuttonclick = "[] execVM  ""Scripts\husky\events\tide_system_flut.sqf"";";
			tooltip = "Startet die Flut! *Noch nicht Verf�gbar*";
        };
        class Ebbe: husky_RscButtonMenu
        {
            idc = 133572;
            x = 0.216313 * safezoneW + safezoneX;
            y = 0.301212 * safezoneH + safezoneY;
            w = 0.095589 * safezoneW;
            h = 0.039216 * safezoneH;
            ColorBackground[] = {1,0.647058,0,1};
			text = "Ebbe";
			//onbuttonclick = "[] execVM  ""Scripts\husky\events\tide_system_ebbe.sqf"";";
			tooltip = "Startet die Ebbe! *Noch nicht Verf�gbar*";
        };
        class config_reload: husky_RscButtonMenu
        {
            idc = 133573;
            x = 0.216834 * safezoneW + safezoneX;
            y = 0.412883 * safezoneH + safezoneY;
            w = 0.095589 * safezoneW;
            h = 0.039216 * safezoneH;
            ColorBackground[] = {1,0.647058,0,1};
			text = "Config Reload";
			//onbuttonclick = "[] spawn {closeDialog 0; sleep 2; [] call cc_p_openpanel;};";
			tooltip = "Config Reload Men� *Nicht mehr In Betrieb CC)";
        };
        class bus_menu: husky_RscButtonMenu
        {
            idc = 133574;
            x = 0.487194 * safezoneW + safezoneX;
            y = 0.258625 * safezoneH + safezoneY;
            w = 0.095589 * safezoneW;
            h = 0.039216 * safezoneH;
            ColorBackground[] = {1,0.647058,0,1};
			text = "Bus-Menu";
			//onbuttonclick = "[] call husky_fnc_busMenu;";
			tooltip = "Startet das kack Bus-Menu *Keine Haltestellen*";
        };
        class Event: husky_RscButtonMenu
        {
            idc = 133575;
            x = 0.486152 * safezoneW + safezoneX;
            y = 0.092063 * safezoneH + safezoneY;
            w = 0.095589 * safezoneW;
            h = 0.039216 * safezoneH;
            colorbackground[] = {0,0.501960,0,1};
			text = "Event";
			onbuttonclick = "[1] remoteExec [""mav_ServerRestartEvent_fnc_ServerRestartEvent""];";
			tooltip = "Startet das Event";
        };
        class Restart: husky_RscButtonMenu
        {
            idc = 133576;
            x = 0.487194 * safezoneW + safezoneX;
            y = 0.14506 * safezoneH + safezoneY;
            w = 0.095589 * safezoneW;
            h = 0.039216 * safezoneH;
            colorbackground[] = {0,0.501960,0,1};
			text = "Restart";
			onbuttonclick = "[0] remoteExec [""mav_ServerRestartEvent_fnc_ServerRestartEvent""];";
			tooltip = "Startet das Restart Event";
        };
		class adminmenu: husky_RscButtonMenu
        {
            x = 0.315940 * safezoneW + safezoneX;
            y = 0.090378 * safezoneH + safezoneY;
            w = 0.166435 * safezoneW;
            h = 0.360094 * safezoneH;
            idc = 1000;
			colorbackground[] = {0,0.501960,0,1};
			text = "$STR_PM_AdminMenu";
			onbuttonclick = "abcdefghijklmnopqrstuvwxy = true;";
			tooltip = "�ffnet das Adminmen�";
        };
        class platzhalter_2: husky_RscButtonMenu
        {
            idc = 133577;
            x = 0.486282 * safezoneW + safezoneX;
            y = 0.312775 * safezoneH + safezoneY;
            w = 0.097412 * safezoneW;
            h = 0.038801 * safezoneH;
            colorbackground[] = {0,0.501960,0,1};
			text = "Geldautomat";
			onbuttonclick = "createDialog ""husky_atm_management"";";
			tooltip = "Geldautomat f�r Faule";
        };
        class platzhalter_3: husky_RscButtonMenu
        {
            idc = 133578;
            x = 0.487063 * safezoneW + safezoneX;
            y = 0.364353 * safezoneH + safezoneY;
            w = 0.096891 * safezoneW;
            h = 0.037854 * safezoneH;
            colorbackground[] = {0,0.501960,0,1};
			text = "Halterabfrage";
			onbuttonclick = "closeDialog 0; sleep 2; [husky_vInact_curTarget] spawn husky_fnc_searchVehAction;";
			tooltip = "Halter Abfrage";
        };
        class platzhalter_4: husky_RscButtonMenu
        {
            idc = 133579;
            x = 0.486673 * safezoneW + safezoneX;
            y = 0.414038 * safezoneH + safezoneY;
            w = 0.096631 * safezoneW;
            h = 0.035015 * safezoneH;
            colorbackground[] = {0,0.501960,0,1};
			text = "Crafting ALLES";
			onbuttonclick = "[] spawn {closeDialog 0; sleep 1; closeDialog 0; sleep 1;  [""alles_1""] spawn cat_crafting_fnc_craft;};";
			tooltip = "Crafting Menue mit allen Punkten, Fahrzeuge spawnen am Stadion (CraftingZone)";
        };
        class platzhalter_5: husky_RscButtonMenu
        {
            idc = 133580;
            x = 0.585258 * safezoneW + safezoneX;
            y = 0.090378 * safezoneH + safezoneY;
            w = 0.097412 * safezoneW;
            h = 0.038801 * safezoneH;
            colorbackground[] = {1,0.647058823529412,0,1};
			text = "START Admin Mode";
			//Onbuttonclick = "[] spawn husky_fnc_admindienst;";
			tooltip = " *Deaktiviert* Godmode, Adminkleidung, (altes Gear gespeichert)";
        };
        class platzhalter_6: husky_RscButtonMenu
        {
            idc = 133581;
            x = 0.587602 * safezoneW + safezoneX;
            y = 0.143848 * safezoneH + safezoneY;
            w = 0.096891 * safezoneW;
            h = 0.037854 * safezoneH;
            colorbackground[] = {1,0.647058823529412,0,1};
			text = "ENDE Admin Mode";
			//Onbuttonclick = "[] spawn husky_fnc_admindienstende;";
			tooltip = " *Deaktiviert* Godmode aus, altes Gera zur�ck";
        };
        class platzhalter_7: husky_RscButtonMenu
        {
            idc = 133582;
            x = 0.587211 * safezoneW + safezoneX;
            y = 0.199211 * safezoneH + safezoneY;
            w = 0.096631 * safezoneW;
            h = 0.035015 * safezoneH;
            colorbackground[] = {0,0.501960,0,1};
			text = "Im Dienst";
			Onbuttonclick = "[] spawn husky_fnc_admindienst;";	//Nach erfolgreichem Test diesen Code nutzen;
			//onbuttonclick = "[""PROJEKTLEITER""] spawn husky_fnc_admin;";	//Ausklammern nach Test
			tooltip = "Godmode, Adminkleidung, (altes Gear gespeichert)";
        };
        class platzhalter_8: husky_RscButtonMenu
        {
            idc = 133583;
            x = 0.587341 * safezoneW + safezoneX;
            y = 0.256940 * safezoneH + safezoneY;
            w = 0.097412 * safezoneW;
            h = 0.038801 * safezoneH;
            colorbackground[] = {1,0.647058823529412,0,1};
			text = "Gold Konvoi";
			//onbuttonclick = "[GoldBarTransport] spawn mav_convoy_fnc_startConvoy; ";
			tooltip = "Startet Gold Konvoi";
        };
        class platzhalter_9: husky_RscButtonMenu
        {
            idc = 133584;
            x = 0.588123 * safezoneW + safezoneX;
            y = 0.311356 * safezoneH + safezoneY;
            w = 0.096891 * safezoneW;
            h = 0.037854 * safezoneH;
            colorbackground[] = {1,0.647058823529412,0,1};
			text = "Waffen Konvoi";
			//onbuttonclick = "[WeaponTransport] spawn mav_convoy_fnc_startConvoy; ";
			tooltip = "Startet Waffen Konvoi";
        };
        class platzhalter_10: husky_RscButtonMenu
        {
            idc = 133585;
            x = 0.591378 * safezoneW + safezoneX;
            y = 0.363880 * safezoneH + safezoneY;
            w = 0.096631 * safezoneW;
            h = 0.035015 * safezoneH;
            colorbackground[] = {1,0.647058823529412,0,1};
			text = "EMP";
			onbuttonclick = "[] call husky_fnc_openEmpMenu; [_this] call husky_fnc_isEmpOperator;";
			tooltip = "Offnet das EMP Menu";
        };
        class platzhalter_11: husky_RscButtonMenu
        {
            idc = 133586;
            x = 0.589425 * safezoneW + safezoneX;
            y = 0.410252 * safezoneH + safezoneY;
            w = 0.097412 * safezoneW;
            h = 0.038801 * safezoneH;
            colorbackground[] = {1,0.647058823529412,0,1};
			text = "Platzhalter 10";
			//onbuttonclick = " ";
			tooltip = "Platz f�r weiter Ideen";
        };
        class platzhalter_12: husky_RscButtonMenu
        {
            idc = 133587;
            x = 0.686056 * safezoneW + safezoneX;
            y = 0.088959 * safezoneH + safezoneY;
            w = 0.096891 * safezoneW;
            h = 0.037854 * safezoneH;
            colorbackground[] = {1,0.647058823529412,0,1};
			text = "Platzhalter 11";
			//onbuttonclick = " ";
			tooltip = "Platz f�r weiter Ideen";
        };
        class platzhalter_13: husky_RscButtonMenu
        {
            idc = 133588;
            x = 0.686186 * safezoneW + safezoneX;
            y = 0.144322 * safezoneH + safezoneY;
            w = 0.096631 * safezoneW;
            h = 0.035015 * safezoneH;
            colorbackground[] = {1,0.647058823529412,0,1};
			text = "Platzhalter 12";
			//onbuttonclick = " ";
			tooltip = "Platz f�r weiter Ideen";
        };
        class platzhalter_14: husky_RscButtonMenu
        {
            idc = 133589;
            x = 0.687228 * safezoneW + safezoneX;
            y = 0.197318 * safezoneH + safezoneY;
            w = 0.096631 * safezoneW;
            h = 0.035015 * safezoneH;
            colorbackground[] = {1,0.647058823529412,0,1};
			text = "Platzhalter 13";
			//onbuttonclick = " ";
			tooltip = "Platz f�r weiter Ideen";
        };
        class platzhalter_15: husky_RscButtonMenu
        {
            idc = 133590;
            x = 0.687359 * safezoneW + safezoneX;
            y = 0.255993 * safezoneH + safezoneY;
            w = 0.097412 * safezoneW;
            h = 0.038801 * safezoneH;
            colorbackground[] = {1,0.647058823529412,0,1};
			text = "Platzhalter 14";
			//onbuttonclick = " ";
			tooltip = "Platz f�r weiter Ideen";
        };
        class platzhalter_16: husky_RscButtonMenu
        {
            idc = 133591;
            x = 0.688661 * safezoneW + safezoneX;
            y = 0.309464 * safezoneH + safezoneY;
            w = 0.096891 * safezoneW;
            h = 0.037854 * safezoneH;
            colorbackground[] = {1,0.647058823529412,0,1};
			text = "Platzhalter 15";
			//onbuttonclick = " ";
			tooltip = "Platz f�r weiter Ideen";
        };
		
    };
	
};
////////////////////////////////////////////////////////////////////////////
