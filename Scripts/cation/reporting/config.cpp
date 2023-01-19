/*
    File: config.cpp
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description: Master config for reporting system. 
*/
#include "phone.hpp"
#include "tablet.hpp"
class Cation_Reporting {

    DebugMode = 0; //Debug mode (0 = off | 1 = on)

    version = 5; // version 3.x - 4.3 -> 3 | version 4.4+ -> 4 | version 5.x -> 5

    // Erster Status beim Joinen
    statusAtJoinIndepent = "2";
    statusAtJoinWest = "2";

    controlCenterMinLevelIndependent = 2; //Min Level für Zugriff auf Leitstelle Medic
    controlCenterMinLevelWest = 2; //Min Level für Zugriff auf Leitstelle Polizei

    //Text
    newStatus = "Neuer Status";
    newStatusFromCenter = "Statusänderung durch Leitstelle";
    titlePhone = "FMS";
    titleTablet = "FMS Leitstelle";
    changeStatusTo = "Status ändern zu:";
    centerStatus = "Leitstellenstatus:";
    ownStatus = "Eigener Status:";
    help = "Hilfe";
    changeTo = "Status der Einheit übermitteln:";
    statusPlayer = "Einheitenstatus:";
    playerHeader = "Verfügbare Einheiten:";
    statusMobile = "Statuscodes der Einheiten:";
    statusCenter = "Statuscodes der Leitstelle:";
    noStatusSelected = "Kein Status eingegeben. Bitte versuche es erneut.";
    statusChangedTo = "Status geändert zu";
    ok = "OK";
    nothingSelected = "Kein Spieler oder Status ausgewählt";
    backTo = "zurück";
    saveStatus = "speichern";
    deleteNumber = "löschen";

    statusIndependentVehicle[] = { //Status unit - control center (RESCUE)
        {
            "0", //Status
            "Notruf" //Text
        }, //Komma
        {
            "1", //Status
            "Einsatzbereit über Funk" //Text
        },
        {
            "2", //Status
            "Einsatzbereit auf Wache" //Text
        },
        {
            "3", //Status
            "Einsatz übernommen" //Text
        },
        {
            "4", //Status
            "Ankunft am Einsatzort" //Text
        },
        {
            "5", //Status
            "Sprechwunsch" //Text
        },
        {
            "6", //Status
            "Außer Dienst" //Text
        },
        {
            "7", //Status
            "Transport" //Text
        },
        {
            "8", //Status
            "am Zielort" //Text
        },
        {
            "9", //Status
            "Anmeldung im Krankenhaus" //Text
        } //Kein Komma bei letzten
    };

    statusWestVehicle[] = { //Status unit - control center (POLICE)
        {
            "0", //Status
            "Notruf" //Text
        }, //Komma
        {
            "1", //Status
            "Einsatzbereit über Funk (auch Einbuchen)" //Text
        },
        {
            "2", //Status
            "Einsatzbereit auf Wache" //Text
        },
        {
            "3", //Status
            "Einsatz übernommen" //Text
        },
        {
            "4", //Status
            "Ankunft am Einsatzort" //Text
        },
        {
            "5", //Status
            "Sprechwunsch" //Text
        },
        {
            "6", //Status
            "Temporär abmelden" //Text
        },
        {
            "7", //Status
            "EMA (Datenabfrage)" //Text
        },
        {
            "8", //Status
            "Transport eines Gefangenene" //Text
        },
        {
            "9", //Status
            "Nicht Einsatzbereit" //Text
        } //Kein Komma bei letzten
    };

    statusIndependentCenter[] = { //Status control center - unit (RESCUE)
        {
            "A", //Status
            "Sammelruf" //Text
        }, //Komma
        {
            "E", //Status
            "Einrücken / Abbrechen / Einsatzauftrag aufgehoben" //Text
        },
        {
            "C", //Status
            "Melden Sie sich für Einsatzübernahme" //Text
        },
        {
            "F", //Status
            "Kommen Sie über Draht" //Text
        },
        {
            "H", //Status
            "Fahren Sie Wache an" //Text
        },
        {
            "J", //Status
            "Sprechaufforderung (nach Status 5)" //Text
        },
        {
            "L", //Status
            "Geben Sie Lagemeldung" //Text
        },
        {
            "P", //Status
            "Einsatz mit POL." //Text
        },
        {
            "U", //Status
            "Unerlaubte Statusfolge" //Text
        },
        {
            "c", //Status
            "Status korrigieren" //Text
        },
        {
            "d", //Status
            "Transportziel durchgeben" //Text
        },
        {
            "h", //Status
            "Zielklinik verständigt" //Text
        },
        {
            "o", //Status
            "Warten, alle Abfrageplätze belegt" //Text
        },
        {
            "u", //Status
            "Negativ" //Text
        } //Kein Komma bei letzten
    };

    statusWestCenter[] = { //Status control center - unit (POLICE)
        {
            "A", //Status
            "Sammelruf" //Text
        }, //Komma
        {
            "E", //Status
            "Eigensicherung" //Text
        },
        {
            "C", //Status
            "Fremdhörer ausschalten" //Text
        },
        {
            "F", //Status
            "Kommen Sie über Draht" //Text
        },
        {
            "H", //Status
            "Haftbefehl" //Text
        },
        {
            "J", //Status
            "Sprechaufforderung (nach Status 5)" //Text
        },
        {
            "L", //Status
            "Geben Sie Lagemeldung" //Text
        } //Kein Komma bei letzten
    };
};