/*
	File: Config_SperrZone.hpp
	Auhtor: Deathman Dev.Team Minefactory/HuskyGaming

	Description:
	Hier kannst du alles für das Sperrzonen System Einstellen
*/
class Sperrzonen_Master {
	/* Sperrzonen Level Einstellung */
	////Polizei////
	cop_level_open = 3; //Polizei Level zum Öffnen der Sperrzone
	cop_level_del = 2; //Polizei Level zum Löschen der Sperrzone
	cop_level_delall = 5; //Polizei Level zum Löschen aller Sperrzone

	////Feuerwehr////
	med_level_open = 3; //Feuerwehr Level zum Öffnen der Sperrzone
	med_level_del = 2; //Feuerwehr Level zum Löschen der Sperrzone
	med_level_delall = 5; //Feuerwehr Level zum Löschen aller Sperrzone
	
	/* Sperrzonen Titel Text */
	zonen_titel = "Zonen Titel"; //Zonen Titel im edit 
	zonen_ort = "Zonen Ort"; //Zonen Ort im edit 
	zonen_message_player = "Nachricht an die Spieler"; //Zonen Message im edit 

	/* Sperrzonen Eintretten & Verlassen Nachricht */
	////Polizei////
	cop_zone_enter = "Hier ist eine Sperrzone der Polizei es könnte auf sie geschossen werden bitte Entfernen sie sich!"; //Text wenn der Spieler in die Zone Geht
	cop_zone_leave = "Danke das du die Sperrzone Verlassen hast"; //Text wenn der Spieler die Zone verlässt 

	////Feuerwehr////
	med_zone_enter = "Hier ist eine Sperrzone der Feuerwehr es könnte sein das du verletzt oder verstahlt wirst!"; //Text wenn der Spieler in die Zone Geht
	med_zone_leave = "Danke das du die Sperrzone Verlassen hast"; //Text wenn der Spieler die Zone verlässt 

	/* Sperrzone Farben */
	zonecolor[] = {
		{"Schwarz","ColorBlack",{0,0,0,1}},
		{"Grau","ColorGrey",{0.5,0.5,0.5,1}},
		{"Rot","ColorRed",{0.9,0,0,1}},
		{"Braun","ColorBrown",{0.5,0.25,0,1}},
		{"Orange","ColorOrange",{0.85,0.4,0,1}},
		{"Gelb","ColorYellow",{0.85,0.85,0,1}},
		{"Khaki","ColorKhaki",{0.5,0.6,0.4,1}},
		{"Grün","ColorGreen",{0,0.8,0,1}},
		{"Blau","ColorBlue",{0,0,1,1}},
		{"Pink","ColorPink",{1,0.3,0.4,1}},
		{"Weiß","ColorWhite",{1,1,1,1}},
		{"Hellblau","colorBLUFOR",{0,0.3,0.6,1}},
		{"Hellrot","colorOPFOR",{0.5,0,0,1}},
		{"Hellgrün","colorIndependent",{0,0.5,0,1}},
		{"Hellpink","colorCivilian",{0.4,0,0.5,1}}
	};

	/* Sperrzone Shape */
	zoneshape[] = {
		{"Rechteck","RECTANGLE","\A3\3den\data\attributes\shape\rectangle_ca.paa"},
		{"Kreis","ELLIPSE","\A3\3den\data\attributes\shape\ellipse_ca.paa"}
	};

	/* Sperrzone Type */
	zonetypes[] = {
		{"Horizontal","Horizontal","\A3\ui_f\data\map\markerbrushes\horizontal_ca.paa"},
		{"Vertikal","Vertical","\A3\ui_f\data\map\markerbrushes\vertical_ca.paa"},
		{"Planquadrat","Grid","\A3\ui_f\data\map\markerbrushes\grid_ca.paa"},
		{"Vorwärts diagonal","FDiagonal","\A3\ui_f\data\map\markerbrushes\fdiagonal_ca.paa"},
		{"Rückwärts diagonal","BDiagonal","\A3\ui_f\data\map\markerbrushes\bdiagonal_ca.paa"},
		{"Planquadrat diagonal","DiagGrid","\A3\ui_f\data\map\markerbrushes\diaggrid_ca.paa"},
		{"Kantenlinie","Border","#(argb,8,8,3)color(0,0,0,0)"},
		{"Durchgezogene Kante","SolidBorder","#(argb,8,8,3)color(0,0,0,0)"}
	};
};