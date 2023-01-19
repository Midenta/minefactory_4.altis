/*
    File: config.cpp
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description: Master config for perm system.
*/
#include "perm.hpp"
class Cation_Perm {

    DebugMode = 0; //Debug mode (0 = off | 1 = on)

    HeadlessSupport = 1; //Enable/Disable Headless client support. Default: 1 (1 = Enabled / 0 = Disabled)
    
    version = 5; // version 3.x - 4.3 -> 3 | version 4.4+ -> 4 | version 5.x -> 5

    // Min player level to change ranks
    mincoplevel = 16;		//confi auf ausbilder lizenz		fn_initperm)
    minmediclevel = 9;		//confi auf ausbilder lizenz		fn_initperm)

    // Max player level
    maxcoplevel = 15;
    maxmediclevel = 8;

    key = 35; //Key for opening the menu (https://community.bistudio.com/wiki/DIK_KeyCodes#German_keyboard)
    shift = 0; // 1 = true | 0 = false
    ctrl = 1; // 1 = true | 0 = false
    alt = 0; // 1 = true | 0 = false

    //Text
    messageSenderDeg = "Du hast %2 degradiert. Seine neue Dienststufe ist %1.";
    messageReceiverDeg = "Du wurdest degradiert. Deine neue Dienststufe ist %1. Dein Ausweiß für deine neue Position wird nach erneutem Aufwachen fertig sein.";
    messageSenderPro = "Du hast %2 befördert. Seine neue Dienststufe ist %1.";
    messageReceiverPro = "Du wurdest befördert. Deine neue Dienststufe ist %1. Dein Ausweiß für deine neue Position wird nach erneutem Aufwachen fertig sein.";
    messageSenderFired = "Du hast %1 gefeuert.";
    messageReceiverFired = "Du wurdest gefeuert. Deine Ausweiß wird dir spätestens bis zum erneuten Aufwachen abgenommen.";
    save = "speichern";
    close = "schließen";
    playername = "Spielername:";
    rank = "Aktueller Rang:";
    administration = "Verwaltung";
    fire = "feuern";
};