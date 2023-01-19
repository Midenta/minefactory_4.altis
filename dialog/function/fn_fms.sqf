/*
Author: Max
Script : Funkmeldesystem (FMS)

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
#define IDCStreifen 90011
#define IDCUnits 90012
#define IDCBeschreibung 90013
private["_streifen","_case","_anzahl"];
if (!(playerside isEqualTo WEST)) exitWith { ["Du musst ein Polizei Beamter/in sein um das Funkmeldesystem zu nutzen.", "Fehler", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;};
_streifen = [
[0,"Nicht zugeteilt","/",100],
[1,"Leitstelle","HQ",2],
[2,"Streife Alpha", "Marktplatz Kavala",3],
[3,"Streife Bravo", "Kavala",3],
[4,"Streife Charlie", "Nordwest-Streife",3],
[5,"Streife Delta", "Nordost-Streife",3],
[6,"Streife Echo", "Südost-Streife",3],
[7,"Streife Foxtrott", "Südwest-Streife",3],
[8,"Streife Golf ", "Helikopterstreife",3],
[9,"Streife Hotel", "Helikopterstreife",3],
[10,"Streife India", "Autobahnstreife",3],
[11,"Streife Juliet", "Bootstreife",50],
[12,"Streife Kilo", "SONDEREINSATZ",100],
[13,"Streife Lima", "SONDEREINSATZ",100],
[14,"Streife Mike", "Polizeipräsident",50],
[15,"Ausbildung", "AUS",100],
[16,"Training", "TRA",100]
];
_case = [_this,0,0] call BIS_fnc_param;

switch (_case) do {
        case 0:{
            //Dialog aufbauen
                    //closeDialog 0;
                    createDialog "fms";
                    waituntil {!isNull (findDisplay 90010)};
                    lbClear 90011;
                    lbClear 90012;

                    {
                        _anzahl = 0;
                        _y = _x;
                        {
                            if ((side _x) isEqualTo WEST) then {
                               _hasFMS = _x getVariable ["fms",0];
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
                _curCase = lbCurSel 90011;
                if (_curCase isEqualTo -1) then {
                    closeDialog 0;
                    ["Error", "Fehler", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
                } else {
                    disableSerialization;
                    _control = ((findDisplay 90010) displayCtrl IDCBeschreibung);
                    switch (_curCase) do {
                        case 0: {_control ctrlSetStructuredText parseText "Nicht zugeteilt <br/><br/> Lass dich von der Leitstelle einteilen!"};
                        case 1: {_control ctrlSetStructuredText parseText "Leitstelle <br/><br/> Mindestbesetzung:<br/> 1x Polizeimeister"};
                        case 2: {_control ctrlSetStructuredText parseText "Streife Alpha [Marktplatz Kavala]<br/> Streife auf dem Marktplatz Kavala<br/><br/>Mindestbesetzung:<br/> 1x Polizeimeisteranwärter"};
                        case 3: {_control ctrlSetStructuredText parseText "Streife Bravo [Kavala]<br/> Streife in Kavala und naher Umgebung<br/><br/>Mindestbesetzung:<br/> 1x Polizeimeister und 1x Polizist jeder Art"};
                        case 4: {_control ctrlSetStructuredText parseText "Streife Charlie [Nordwest-Streife]<br/> Streife im Nordwestlichen Teil des Einsatzgebietes<br/><br/>Mindestbesetzung:<br/> 1x Polizeimeister und 1x Polizist jeder Art"};
                        case 5: {_control ctrlSetStructuredText parseText "Streife Delta [Nordost-Streife]<br/> Streife im Nordöstlichen Teil des Einsatzgebietes<br/><br/>Mindestbesetzung:<br/> 1x Polizeimeister und 1x Polizist jeder Art"};
                        case 6: {_control ctrlSetStructuredText parseText "Streife Echo [Südost-Streife]<br/> Streife im Südöstlichen Teil des Einsatzgebietes<br/><br/>Mindestbesetzung:<br/> 1x Polizeimeister und 1x Polizist jeder Art"};
                        case 7: {_control ctrlSetStructuredText parseText "Streife Foxtrott [Südwest-Streife]<br/> Streife im Südwestlichen Teil des Einsatzgebietes<br/><br/>Mindestbesetzung:<br/> 1x Polizeimeister und 1x Polizist jeder Art"};
                        case 8: {_control ctrlSetStructuredText parseText "Streife Golf [Helikopterstreife]<br/> Flugstreife im kompletten Einsatzgebiet<br/><br/>Mindestbesetzung:<br/> 1x Polizist jeglicher Art und ein Polizist mit Flugschein"};
                        case 9: {_control ctrlSetStructuredText parseText "Streife Hotel [Helikopterstreife]<br/> Flugstreife im kompletten Einsatzgebiet<br/><br/>Mindestbesetzung:<br/> 1x Polizist jeglicher Art und ein Polizist mit Flugschein"};
                        case 10: {_control ctrlSetStructuredText parseText "Streife India [Autobahnstreife]<br/> Autobahnstreife auf den Hauptstraßen/Autobahnen im ganzen Einsatzgebiet<br/><br/>Mindestbesetzung:<br/> 1x Polizeimeister und 1x Polizist jeglicher Art"};
                        case 11: {_control ctrlSetStructuredText parseText "Streife Juliet [Bootstreife]<br/> Bottstreife in ganz Altis<br/><br/>Mindestbesetzung:<br/> 1x Polizist mit Bottslizenz und 1x Polizist jeder Art"};
                        case 12: {_control ctrlSetStructuredText parseText "Streife Kilo [SONDEREINSATZ]<br/> Streife für einen Großeinsatz<br/><br/>Mindestbesetzung:<br/>  Einsatzleitung durch höchstrangigen"};
                        case 13: {_control ctrlSetStructuredText parseText "Streife Lima [SONDEREINSATZ]<br/> Streife für einen Großeinsatz<br/><br/>Mindestbesetzung:<br/>  Einsatzleitung durch höchstrangigen"};
                        case 14: {_control ctrlSetStructuredText parseText "Streife Mike [Polizeipräsident]<br/> Streife für den Polizeipräsidenten und seine Angelegenheiten<br/><br/>Mindestbesetzung:<br/> 1x Polizeipräsident und 1x Polizist jeglicher Art"};
						case 15: {_control ctrlSetStructuredText parseText "Ausbildung [AUS]<br/> Ausbildung und Ausbildungsstreifen<br/><br/>Mindestbesetzung:<br/> 1x Ausbilder"};
                        case 16: {_control ctrlSetStructuredText parseText "Training [TRA]<br/> Trainigngstreife für Kollegen<br/><br/>Mindestbesetzung:<br/> 1x Ausbilder"};
                    };
                };
        };

        case 2: {
           _curCase = lbValue[90011,lbCurSel 90011];
           if (_curCase isEqualTo -1) then {
              closeDialog 0;
              ["Error", "Fehler", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
           } else {
               lbClear IDCUnits;
             {
                 if ((side _x) isEqualTo WEST) then {
                       _hasFMS = _x getVariable ["fms",0];
                       if (_hasFMS isEqualTo _curCase) then {
                           _rank = call husky_coplevel;
                           _ranktext = switch (_rank) do {
                               case 0: {"Error"};
							   case 1: {"Polizeimeisteranwärter"};
                               case 2: {"Polizeimeister"};
                               case 3: {"Polizeiobermeister"};
                               case 4: {"Polizeihauptmeister"};
                               case 5: {"Polizeikommissarsanwärter"};
                               case 6: {"Polizeikommissar"};
                               case 7: {"Polizeioberkommissar"};
                               case 8: {"Polizeihauptkommissar"};
                               case 9: {"Erster Polizeihauptkommissar Anwärter"};
                               case 10: {"Erster Polizeihauptkommissar"};
                               case 11: {"Polizeirat"};
                               case 12: {"Polizei Ausbilder Anwärter"};
                               case 13: {"Polizei Ausbilder"};
                               case 14: {"Stv. Polizeidirektor"};
							   case 15: {"Leitender Polizeidirektor"};
							   case 16: {"Polizeikommissar"};
							   case 17: {"Leitender Polizeidirektor"};
							   case 18: {"Stv. Polizeipräsident"};
							   case 19: {"Polizeipräsident"};
							   case 20: {"Polizeikommissar A12"};
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
            _curCase = lbValue[90011,lbCurSel 90011];
            _hasFMS = _x getVariable ["fms",0];
            if (_curCase isEqualTo _hasFMS) exitWith { hintSilent "Du befindest dich bereits in der Streife.";};
            if (_curCase isEqualTo -1) then {
                closeDialog 0;
                hint "Error";
            } else {
              player setVariable ["fms", _curCase, true];
              hint format ["Du hast dich erfolgreich der Streife: %1 angeschlossen.", ((_streifen select _curCase) select 1)];
              closeDialog 0;
            };
        };

        case 4: {
            //Streife verlassen
            _curStreife = player getVariable ["fms",0];
            if (_curStreife isEqualTo 0) exitWith {closeDialog 0;["Du musst dich erst einer Streife anschliessen um sie zu verlassen du Larry.", "Fehler", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;};
            player setVariable ["fms", 0, true];
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
