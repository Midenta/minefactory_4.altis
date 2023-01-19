/*
Author: Max
Script : Funkmeldesystem (FMS)
*/
#define IDCStreifen 890011
#define IDCUnits 890012
#define IDCBeschreibung 890013
private["_streifen","_case","_anzahl"];
if (!(playerside isEqualTo independent)) exitWith { ["Du musst ein Feuerwehr Beamter/in sein um das Funkmeldesystem zu nutzen.", "Fehler", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;};
_streifen = [
[0,"Nicht zugeteilt","/",100],
[1,"Leitstelle","HQ",2],
[2,"Marktplatz", "MKT",3],
[3,"Ausbildung", "AUS",100],
[4,"Training", "TRA",100]
/*[3,"City Patrol Kavala", "CPK-01",4],
[4,"City Patrol", "CP-02",4],
[5,"Highway Patrol", "HWP-01",4],
[6,"Highway Patrol", "HWP-02",4],
[7,"Flight Patrol", "FP-01",4],
//[8,"Autobahnpolizei 4", "AP4",4],
//[9,"Falke - Luft", "FALKE",4],
[8,"Coast Guard", "CG-01",4],
[9,"Undercover Patrol", "UCP-01",4],
//[12,"SEK-Streife", "SEK",5],
[10,"Correctional Institution", "CCI-01",50],
[11,"Sondereinsatz", "X",100],
[12,"Ausbildung", "AUS",100],
[13,"Training", "TRA",100]*/
];
_case = [_this,0,0] call BIS_fnc_param;

switch (_case) do {
        case 0:{
            //Dialog aufbauen
                    //closeDialog 0;
                    createDialog "fms_med";
                    waituntil {!isNull (findDisplay 890010)};
                    lbClear 890011;
                    lbClear 890012;

                    {
                        _anzahl = 0;
                        _y = _x;
                        {
                            if ((side _x) isEqualTo independent) then {
                               _hasFMS = _x getVariable ["fms_med",0];
                               if (_hasFMS isEqualTo (_y select 0)) then {
                                _anzahl = _anzahl +1;
                               };
                            };
                        } forEach playableUnits;

                    lbAdd[IDCStreifen,format["%1 [%2] | %3/%4",(_x select 1),(_x select 2),_anzahl,(_x select 3)]];
                    lbSetValue[IDCStreifen,(lbSize IDCStreifen)-1,(_x select 0)];
                } forEach _streifen;
        };

        case 1: {
            //Beschreibung aufbauen
                _curCase = lbCurSel 890011;
                if (_curCase isEqualTo -1) then {
                    closeDialog 0;
                    ["Error", "Fehler", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
                } else {
                    disableSerialization;
                    _control = ((findDisplay 890010) displayCtrl IDCBeschreibung);
                    switch (_curCase) do {
                        case 0: {_control ctrlSetStructuredText parseText "Nicht zugeteilt <br/><br/> Lass dich von der Leitstelle einteilen!"};
                        case 1: {_control ctrlSetStructuredText parseText "Leitstelle <br/><br/> Mindestbesetzung:<br/> 1 x Feuerwehrmann/-frau"};
                        case 2: {_control ctrlSetStructuredText parseText "Marktplatz <br/> In der näheren Umgebung des Marktplatzes <br/><br/>Mindestbesetzung:<br/> 1x Feuerwehrmann/-frau"};
						case 3: {_control ctrlSetStructuredText parseText "Ausbildung<br/> Ausbildungstreife für Trainings ingame <br/><br/>Mindestbesetzung:<br/> ein Ausbilder <br/> ein Feuerwehrmann/-frau jeglichen Ranges"};
                        case 4: {_control ctrlSetStructuredText parseText "Training<br/> Trainingsstreife <br/><br/>Mindestbesetzung:<br/> ein vollwertiger Feuerwehrmann/-frau"};
                        /*case 3: {_control ctrlSetStructuredText parseText "City Patrol Kavala <br/> Motorisierte Streife der näheren Umgebung von Kavala <br/><br/>Mindestbesetzung:<br/> 1x Officer + 2. Polizist"};
                        case 4: {_control ctrlSetStructuredText parseText "City Patrol <br/> Motorisierte Streife in großen Städten<br/><br/>Mindestbesetzung:<br/> 1x Officer + 2. Polizist "};
                        case 5: {_control ctrlSetStructuredText parseText "Highway Patrol <br/> Motorisierte Streife auf dem Highway von Kavala zum Flughafen <br/><br/>Mindestbesetzung:<br/> 1x Officer + 2. Polizist"};
                        case 6: {_control ctrlSetStructuredText parseText "Highway Patrol <br/> Motorisierte Streife auf dem Highway von Flughafen bis Salzwüste <br/><br/>Mindestbesetzung:<br/> 1x Officer + 2. Polizist"};
                        case 7: {_control ctrlSetStructuredText parseText "Flight Patrol <br/> Streife im Luftraum über Altis <br/><br/>Mindestbesetzung:<br/> 1x Polizist mit Flugausbildung + 2 Polizisten"};
                        case 8: {_control ctrlSetStructuredText parseText "Coast Guard <br/> Decken die Schildkrötenschutzgebiete und Froschverarbeitung ab <br/><br/>Mindestbesetzung:<br/> 1x Officer + 2 Polizisten"};
                        case 9: {_control ctrlSetStructuredText parseText "Undercover Patrol <br/> Zivile Streife der CIA <br/><br/>Mindestbesetzung:<br/> Beamte der CIA"};
                        //case 10: {_control ctrlSetStructuredText parseText "Correctional Institution <br/> motorisierte Streife in den Hoheitsgewässern rund um die Insel Altis <br/><br/>Mindestbesetzung:<br/> 1x Officer + 2. Polizist"};
                        //case 11: {_control ctrlSetStructuredText parseText "Zivilstreife<br/> zivile Streife des BKA <br/><br/>Mindestbesetzung:<br/> ausschliesslich Beamte des BKA"};
                        //case 12: {_control ctrlSetStructuredText parseText "SEK-Streife<br/> Einsatzstreife des SEK <br/><br/>Mindestbesetzung:<br/> ausschliesslich Beamte des SEK"};
                        case 10: {_control ctrlSetStructuredText parseText "Correctional Institution<br/> Beamte dienen als Justisbeamte und verteidigen das Gefängnis vor Ausbrüchen!<br/><br/>Mindestbesetzung:<br/> 1x Officer + 2. Polizist"};
                        case 11: {_control ctrlSetStructuredText parseText "Sondereinsatz<br/> Betreuung der Einsätze von Zentralbanken,Geiselnahmen etc. <br/><br/>Mindestbesetzung:<br/> jeder verfügbare Beamte"};
                        case 12: {_control ctrlSetStructuredText parseText "Ausbildung<br/> Ausbildungstreife für Trainings ingame <br/><br/>Mindestbesetzung:<br/> ein Ausbilder <br/> ein Polizist jeglichen Ranges"};
                        case 13: {_control ctrlSetStructuredText parseText "Training<br/> Trainingsstreife <br/><br/>Mindestbesetzung:<br/> ein vollwertiger Polizist"};*/
                    };
                };
        };

        case 2: {
           _curCase = lbValue[890011,lbCurSel 890011];
           if (_curCase isEqualTo -1) then {
              closeDialog 0;
              ["Error", "Fehler", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
           } else {
               lbClear IDCUnits;
             {
                 if ((side _x) isEqualTo independent) then {
                       _hasFMS = _x getVariable ["fms_med",0];
                       if (_hasFMS isEqualTo _curCase) then {
                           _rank = call husky_mediclevel;
                           _ranktext = switch (_rank) do {
                               case 0: {"Error"};
                               case 1: {"Praktikant"};
                               case 2: {"Feuerwehrmannanwärter"};
                               case 3: {"Feuerwehrmann"};
                               case 4: {"Oberfeuerwehrmann"};
                               case 5: {"Hauptfeuerwehrmann"};
                               case 6: {"Löschmeister"};
                               case 7: {"Oberlöschmeister"};
                               case 8: {"Hauptlöschmeister"};
                               case 9: {"Brandmeister"};
                               case 10: {"Oberbrandmeister"};
                               case 11: {"Hauptbrandmeister"};
                               case 12: {"Brandrat"};
                               case 13: {"Feuerwehr Ausbilder"};
							   case 14: {"Co. Branddirektor"};
							   case 15: {"Branddirektor"};
							   case 16: {"Oberlöschmeister"};
                               default {"Error"};
                           };
                           //lbAdd[IDCUnits, format ["[%1] %2",_ranktext,name _x]];
                           lbAdd[IDCUnits, format ["%1",name _x]];
                           lbSetData[IDCUnits,(lbSize IDCUnits)-1,(name _x)];
                           lbSort IDCUnits;
                       };
                 };
             } forEach playableUnits;
           };
        };

        case 3: {
            //Streife beitreten
            _curCase = lbValue[890011,lbCurSel 890011];
            _hasFMS = _x getVariable ["fms_med",0];
            if (_curCase isEqualTo _hasFMS) exitWith { hintSilent "Du befindest dich bereits in der Streife.";};
            if (_curCase isEqualTo -1) then {
                closeDialog 0;
                hint "Error";
            } else {
              player setVariable ["fms_med", _curCase, true];
              hint format ["Du hast dich erfolgreich der Streife: %1 angeschlossen.", ((_streifen select _curCase) select 1)];
              closeDialog 0;
            };
        };

        case 4: {
            //Streife verlassen
            _curStreife = player getVariable ["fms_med",0];
            if (_curStreife isEqualTo 0) exitWith {closeDialog 0;["Du musst dich erst einer Streife anschliessen um sie zu verlassen du Larry.", "Fehler", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;};
            player setVariable ["fms_med", 0, true];
            hint format ["Du hast deine Streife verlassen! <br/> Deine neue Einheit wird erneut von der Leitstelle bestimmt!"];
            closeDialog 0;
        };
};


/*
{
    if (side _x isEqualTo WEST && !(_X getVariable["streife", -1]) isEqualTo ) then {
        lbAdd[IDCUnits,format["%1",profileNamespace _x]]
        lbSetData[IDCUnits,(lbSize IDCUnits)-1,(_x select 0)];
    };
} forEach _streifen;
*/
