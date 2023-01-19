//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

/*
 * Script by 	: MrFrost (https://steamcommunity.com/id/mrfrostlp)
 *                Deathman (https://steamcommunity.com/id/deathman2002)
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

params [
    ["_mode", 0, [1]]
];
private _playername         = profileName;
private _uid                = getPlayerUID player;
private _bugtitel           = localize "STR_Bug_BugTitel";
private _bugtext            = localize "STR_Bug_BugText";
private _information        = localize "STR_Bug_Information";
private _maintitle          = localize "STR_Bug_Title";

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

private _display            =          findDisplay 31000;
private _playername_idc     = _display displayCtrl 31001;
private _playeruid_idc      = _display displayCtrl 31002;
private _bugtitel_idc       = _display displayCtrl 31003;
private _bugtext_idc        = _display displayCtrl 31004;
private _maintitle_idc      = _display displayCtrl 31005;
private _information_idc    = _display displayCtrl 31006;

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

switch (_mode) do {
    case 0: {
        
        _playername_idc     ctrlSetText ([_playername] joinString "");
        _playeruid_idc      ctrlSetText ([_uid] joinString "");
        _bugtitel_idc       ctrlSetText ([_bugtitel] joinString "");
        _bugtext_idc        ctrlSetText ([_bugtext] joinString "");
        _maintitle_idc      ctrlSetText ([_maintitle] joinString "");
        _information_idc    ctrlSetText ([_information] joinString "");
        _information_idc    ctrlSetTextColor  [1,1,1,1];

    };

    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    case 1: {
        
        if(((ctrlText _bugtitel_idc) isEqualTo "") || ((ctrlText _bugtext_idc) isEqualTo "") || ((ctrlText _bugtitel_idc) isEqualTo _bugtitel) || ((ctrlText _bugtext_idc) isEqualTo _bugtext)) then {
           
           _information_idc ctrlSetText localize "STR_Bug_Error_Empty";
           _information_idc ctrlSetTextColor [0.8549,0.29412,0,1];
        
        } else {
            
            diag_log (["BUGTRACKER: Bugreport by",_playername,"- (",_uid,") : Title(",ctrlText _bugtitel_idc,") , Text(",ctrlText _bugtext_idc,")"] joinString " ");
            [_uid,_playername,ctrlText _bugtitel_idc,ctrlText _bugtext_idc] remoteExec ["TON_fnc_BugReportInsert",2];
            hint localize "STR_Bug_ReportSend";
            closeDialog 0;
            
        };
        
    };
};
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////