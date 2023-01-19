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

    disableSerialization;

    createDialog "InfoMenu";

    private _Dialog = findDisplay 26501; //Dialog IDD
    private _SelectionList = _Dialog displayCtrl 26505; //Selection IDC
    private _InfoTextBox = _Dialog displayCtrl 26504; //TextBox IDC
    private _MainTitle = _Dialog displayCtrl 26503; //Main Title IDC
    private _MainTitleText = getText (missionConfigFile >> "InfoMenu_Master" >> "InfoMenu_Main_Title");
    private _Categories = ("true" configClasses (missionConfigFile >> "InfoMenu_Master" >> "Categories"));

    tvClear _SelectionList;

    {
        private _CathName = getText(_x >> "displayname");
        private _CathText = getText(_x >> "Cath_text");
        private _CathTitle = getText(_x >> "Cath_title");
        private _Cathpic = getText(_x >> "Cath_picture");
        
        private _CategoryID = _SelectionList tvAdd [[], _CathName];
        private _TempArrayOne = [_CathName,_CathTitle,_CathText];
        _SelectionList tvSetData [[_CategoryID],str(_TempArrayOne)];

        if (!(_Cathpic isEqualTo "")) then {
                _SelectionList tvSetPicture [[_CategoryID],_Cathpic];
            };
        
        {
            private _Name = _x select 0;
            private _Title = _x select 1;
            private _Text = _x select 2;
            private _Pic = _x select 3;

            private _TempArray = [_Name,_Title,_Text];

            private _EntryID = _SelectionList tvAdd [[_CategoryID],_Name];
            _SelectionList tvSetData [[_CategoryID,_EntryID],str(_TempArray)];

            private _PathToEntry = [_CategoryID] + [_EntryID];
            if (!(_Pic isEqualTo "")) then {
                _SelectionList tvSetPicture [_PathToEntry,_Pic];
            };

        } forEach getArray (_x >> "entries");
    } forEach _Categories;

_SelectionList tvSetCurSel [0];

if (!(_MainTitleText isEqualTo "")) then { //I have to do this because someone will try
_MainTitle ctrlSetText format ["%1",_MainTitleText]; //Set the MainTitle
} else {
    _MainTitle ctrlSetText "Info Menu" //Set the MainTitle to "Info Menu"
};

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////