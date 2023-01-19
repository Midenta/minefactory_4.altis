/*
    Author: Deathman
    File: Config_TankstellenRob.hpp

    Description: Hier kannst du alles n�tige Einstellen

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
#define false 0
#define true 1
class TankeRob_Master {
    DE100_Notifiactionssytsem = false; //Nur auf True Schalten wenn ihr das DE100_Notifiactionssytsem habt

    Max_Money_Rob = 15000; //Wie viel der Spieler Kriegen soll
    Max_Money_Rob_Random = 20000; //Wie viel der Spieler zusätzlich kriegen soll (RANDOM!!)

    FailText_1 = "Bei Dir hackts wohl, Du kannst doch nix überfallen! Oder seit wann arbeitest Du nicht beim Staat!"; //Text wenn du als Cop oder Medic Spielst
    FailText_2 = "Jo man es war gerade Weltuntergang und es ist noch kein Geld in der Kasse!"; //Text wenn der Server Gerade neugestartet ist
    FailText_3 = "Es wurde gerade schon eine Tankstelle überfallen, komm in %1 Minuten wieder vorbei!"; //Text wann der Spieler zum �berfall wieder kommen soll
    FailText_4 = "Du kannst hier niemanden überfallen!"; //Text wenn du das Gerade nicht Ausrauben darfst
    FailText_5 = "Steig aus deinem Fahrzeug!"; //Text wenn du Noch im Fahrzeug sitzt
    FailText_6 = "HaHa, willst du mich verarschen? Verzieh dich du Idiot!"; //Text wenn du keine Waffe bei dir hast
    FailText_7 = "Es ist kein Geld in der Kasse!"; //Text wenn nicht im Gold Depo ist
    FailText_8 = "Der Kassierer hat den stillen Alarm ausgelöst!"; //Kassierer L�st Alarm aus
    FailText_9 = "Hier nen Snickers, du wirst immer zur Diva, wenn du hungrig bist!"; //Text wenn du keine Waffe bei dir hast

    Max_Distance = 5; //Wie Hoch die Distanz sein soll zum überfallenen
    Max_Distance_Text = "Du musst 5m von dem Kassierer entfernt sein, um ihn auszurauben!"; //Text für die Maximale Distanz

    Max_Distance_Shop = 10.5; //Wie Hoch die Distanz sein soll wenn der �berfall im follen gange ist
    Max_Distance_Shop_Text = "Du musst in 10m Nähe bleiben um zu überfallen! - Die Kasse ist nun verschlossen."; //Text wenn du dich zuweit weg bewegst

    Max_Police = 2; //Wie viele Polizisten im Dienst sein m�ssen
    Message_To_Police = "ALARM! - Tankstelle: %1 wird ausgeraubt!"; //Text an die Polizei
    PoliceText_Fail = "Es sind nicht genügend Polizeikräfte im Dienst!"; //Text wenn nicht genugend Polizeikr�fte da sind

    ProgressBarText = "Überfall im Gange, halte dich in der Nähe auf (10m) (1%1)..."; //Was in der ProgressBar Stehen soll wenn der Raub Startet (ACHTUNG NICHT DAS HIER ENTFERNEN (1%1)
    Stay_DistanceText = "Überfall im Gange, halte dich in der Nähe auf (10m) (%1%2)...";  //Was in der ProgressBar Stehen soll wenn der Raub in Gange ist (ACHTUNG NICHT DAS HIER ENTFERNEN (%1%2)

    CreatMarkerName = "Marker200"; //Markername der Erstellt wird
    MarkerColor = "ColorRed"; //Welche Farbe er haben soll
    MarkerText = "!Achtung! Überfall !Achtung!"; //Wie der Marker Text sein soll
    MarkerType = "mil_warning"; //Wie der Type des Markers sein soll

    Rob_Finish = "Du hast %1€ gestohlen, flüchte bevor die Polizei eintrifft!"; //Text wenn der Raub Erfolgreich War

    ATMuse = 300; //Wie viel Sekunden er warten soll bis er ein ATM Nutzen darf
    RoberDelay = 900; //Wie der Sekunden Abstand ist zwischen den �berf�llen 15 min = 900 Sec.
};
