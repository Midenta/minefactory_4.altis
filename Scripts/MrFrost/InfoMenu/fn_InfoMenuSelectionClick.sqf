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

private _Dialog = findDisplay 26501; //Dialog IDC
private _InfoTextBox = _Dialog displayCtrl 26504; //TextBox IDC
private _InfoTitle = _Dialog displayCtrl 26502; //Title IDC
private _EntryData = tvdata[26505,(tvCurSel 26505)]; //Entry Data from InfoMenuCreate
private _EntryData = call compile format ["%1",_EntryData]; //Make the array great again

private _Name = (_EntryData select 0);

private _Text = _EntryData select 2;
_InfoTextBox ctrlSetStructuredText parseText format ["%1",_Text];
_InfoTextBox ctrlSetPosition [0,0,0.814,ctrlTextHeight _InfoTextBox]; //Sets the Height of the InfoTextBox must be edited when the GUI is changed
_InfoTextBox ctrlCommit 0;

private _Title = _EntryData select 1;
_InfoTitle ctrlSetText format ["%1",_Title];

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////