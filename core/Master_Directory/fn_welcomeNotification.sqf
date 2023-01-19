/*
    File: fn_welcomeNotification.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Called upon first spawn selection and welcomes our player.
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

_onScreenTime = 5; //Bestimmt wie lange ein Text dargestellt wird
sleep 2; //Bestimmt wann der Text nach dem Spawnen erscheint

_role1 = "Willkommen auf MineFactory!";
_role1names = ["developed by THIEVES|HUSKY"];
_role2 = "Projektleitung";
_role2names = ["J.White"];
_role3 = "Support";
_role3names = ["Stivo","WenzI"];
_role4 = "Operator";
_role4names = [ "Hackschnitzel"];
_role5 = "Homepage";
_role5names = ["minefactory.eu"];
_role6 = "TeamSpeak";
_role6names = ["minefactory"];
_role7 = "Discord";
_role7names = ["dc.minefactory.eu"];
_role8 = "Restart Zeiten";
_role8names = ["Unsere Server Restarts sind um 02:00Uhr, 06:00Uhr, 12:00Uhr, 18:00Uhr"];
_role9 = "Baby Yoda";
_role9names = ["Etwas aus dem Wasser du solltest sammeln es dir helfen werden!"];

{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.95' color='#0da622' align='right'>%1<br /></t>", _memberFunction]; //ändert die Farbe und Größe der Überschrift
_finalText = _finalText + "<t size='0.75' color='#FFFFFF' align='right'>"; //ändert die Farbe und Größe des Textes
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.5);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50],
[safezoneY + safezoneH - 0.8,0.7],
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [

[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names],
[_role5, _role5names],
[_role6, _role6names],
[_role7, _role7names],
[_role8, _role8names],
[_role9, _role9names]

];

/*
_onScreenTime = 5; //Bestimmt wie lange ein Text dargestellt wird
sleep 160; //Bestimmt wann der Text nach dem Spawnen erscheint

_role1 = "Wilkommen auf MineFactory!";
_role1names = ["developed by THIEVES|HUSKY"]; //Optional auch: ["Blabla","Blabla2"];
_role2 = "Homepage";
_role2names = ["minefactory.eu"];
_role3 = "TeamSpeak";
_role3names = ["minefactory"];
/*_role3 = "Wichtiger Hinweis";
_role3names = ["In deinem Spielerprofil (Lokal) werden Daten von uns Gespeichert", "solltest du diese L�schen, verlierst du Fortschritte auf unserem Server!"];*/
/*
_role4 = "Baby Yoda";
_role4names = ["Etwas aus dem Wasser du solltest sammeln es dir helfen werden"];

{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.70' color='#f2cb0b' align='right'>%1<br /></t>", _memberFunction]; //ändert die Farbe und Größe der �berschrift
_finalText = _finalText + "<t size='0.50' color='#FFFFFF' align='right'>"; //ändert die Farbe und Größe des Textes
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.5);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50],
[safezoneY + safezoneH - 0.8,0.7],
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [

[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names]

];
*/
/*disableSerialization;
[
        "",
        0,
        0.2,
        10,
        0,
        0,
        8
] spawn BIS_fnc_dynamicText;

createDialog "RscDisplayWelcome";

_display = findDisplay 999999;
_text1 = _display displayCtrl 1100;
_buttonSpoiler = _display displayCtrl 2400;
_textSpoiler = _display displayCtrl 1101;
_text2 = _display displayCtrl 1102;

_message = "";
_message = _message + "<t align='center' size='8' shadow='0'><img image='textures\armahusky.jpg' /></t><br /><br />";
_message = _message + "Useful links (click on the links to open your browser)<br /><br />";
_message = _message + " <a href='https://github.com/AsYetUntitled/Framework' color='#56BDD6'>AsYetUntitled</a> -- The official repository for the project.<br /><br />";
_message = _message + "TeamSpeak 3 address: ADDRESS HERE  <br /><br />";
_message = _message + "Discord invite: <a href='https://discord.gg/EaB7Jgw' color='#56BDD6'>ArmA RPG husky</a>  <br /><br />";

//Fill only the first text
_text1 ctrlSetStructuredText (parseText _message);

//Resize StructuredText component to display the scrollbar if needed
_positionText1 = ctrlPosition _text1;
_yText1 = _positionText1 select 1;
_hText1 = ctrlTextHeight _text1;
_text1 ctrlSetPosition [_positionText1 select 0, _yText1, _positionText1 select 2, _hText1];
_text1 ctrlCommit 0;
//Hide second text, spoiler text and button
_buttonSpoiler ctrlSetFade 1;
_buttonSpoiler ctrlCommit 0;
_buttonSpoiler ctrlEnable false;
_textSpoiler ctrlSetFade 1;
_textSpoiler ctrlCommit 0;
_text2 ctrlSetFade 1;
_text2 ctrlCommit 0;
*/