/*
    File: config.cpp
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description: Master config for perm system.
*/
#include "perm.hpp"
class Cation_Perm {

    class language {
        #include "language.cpp"
    };

    DebugMode = 1; //Debug mode (0 = off | 1 = on)

    HeadlessSupport = 0; //Enable/Disable Headless client support. Default: 1 (1 = Enabled / 0 = Disabled)
    
    version = 5; // version 4.4+ -> 4 | version 5.x -> 5

    // Min player level to change things

    // cops
    mincoplevel = 18; // access tool	//ausbiukder lizenz
    mincoplevelmoney = 20; // add money
    mincopleveladdlicense = 18; // add license	//ausbiukder lizenz
    mincoplevelremovelicense = 18; // remove license	//ausbiukder lizenz
    mincoplevelpromote = 18; // promote	//ausbiukder lizenz
    mincoplevelhire = 18; // hire	//ausbiukder lizenz
    mincopleveldegrade = 18; // degrade	//ausbiukder lizenz
    mincoplevelfire = 18; // fire	//ausbiukder lizenz

    // medics
    minmediclevel = 8; // access tool
    minmediclevelmoney = 11; // add money
    minmedicleveladdlicense = 8; // add license
    minmediclevelremovelicense = 8; // remove license
    minmediclevelpromote = 8; // promote
    minmediclevelhire = 8; // hire
    minmedicleveldegrade = 8; //degrade
    minmediclevelfire = 8; // fire

    // Max player level
    maxcoplevel = 17;
    maxmediclevel = 7;

    // open menu
    key = 35; //Key for opening the menu (https://community.bistudio.com/wiki/DIK_KeyCodes#German_keyboard)
    shift = 0; // 1 = true | 0 = false
    ctrl = 0; // 1 = true | 0 = false
    alt = 0; // 1 = true | 0 = false

    // money
    ownmoney = 1; // 1 = withdraw money from own wallet of cop/medic | 0 = give money without withdrawing it from own wallet of cop/medic
};