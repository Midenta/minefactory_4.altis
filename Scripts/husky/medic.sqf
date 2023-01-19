// Kurz warten...
sleep 1;

// Intro-Text definieren
_role1 = "Feuerwehr!"; // Überschrift...
_role1names = ["Die Feuerwehr ist auf dem Weg zu dir, drücke auf Request um die Chance zu erhöhen wiederbelebt zu werden!"];


_role2 = "Bitte nicht einfach Respawnen!";
_role2names = ["Da ein Mediziner auf dem Weg zu dir ist bitten wir dich nicht auf Respawn zu drücken!"];


_role3 = "Feuerwehr!"; // Überschrift...
_role3names = ["Die Feuerwehr ist auf dem Weg zu dir, drücke auf Request um die Chance zu erhöhen wiederbelebt zu werden!"];


_role4 = "Bitte nicht einfach Respawnen!";
_role4names = ["Da ein Mediziner auf dem Weg zu dir ist bitten wir dich nicht auf Respawn zu drücken!"];


_role5 = "Feuerwehr!"; // Überschrift...
_role5names = ["Die Feuerwehr ist auf dem Weg zu dir, drücke auf Request um die Chance zu erhöhen wiederbelebt zu werden!"];


_role6 = "Bitte nicht einfach Respawnen!";
_role6names = ["Da ein Mediziner auf dem Weg zu dir ist bitten wir dich nicht auf Respawn zu drücken!"];

// Intro Text abspielen
{
    sleep 2;

    _memberFunction = _x select 0;
    _memberNames = _x select 1;
    _finalText = format ["<t size='0.70' color='#D61536' align='right'>%1<br /></t>", _memberFunction]; //Changes colours
    _finalText = _finalText + "<t size='0.60' color='#FFFFFF' align='right'>";
    {
        _finalText = _finalText + format ["%1<br/>", _x]
    } forEach _memberNames;
    _finalText = _finalText + "</t>";

    [
        _finalText,
        [safezoneX + safezoneW - 0.8, 0.50], //DEFAULT: 0.5, 0.35
        [safezoneY + safezoneH - 0.8, 0.7], //DEFAULT: 0.8, 0.7
        5,1
    ] spawn BIS_fnc_dynamicText;
    // Der Text wird 5 Sekunden angezeigt, solange warten wir...
    sleep 8;

} forEach [
    [_role1, _role1names],
    [_role2, _role2names],
    [_role3, _role3names],
    [_role4, _role4names],
    [_role5, _role5names],
    [_role6, _role6names]
];