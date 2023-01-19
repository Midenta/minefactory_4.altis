waitUntil {!(copsperr getVariable "CopSperre" isEqualTo [])}; 
_zones = [];
{_zones pushBack (_x select 0)}forEach (copsperr getVariable "CopSperre");

waituntil {_zones findIf{player inArea _x} > -1};
hint parseText format["<t font='PuristaBold' color='#0979e9' size = '1.5' align='center'>Polizei Sperrzone</t><br/><br/><t color='#fc1c03' font='PuristaBold' size = '1' align='left'>Nachricht: </t><t font='PuristaBold' size = '1' align='left'>%1</t>",(getText(missionConfigFile >> "Sperrzonen_Master" >> "cop_zone_enter"))];

waituntil {!(_zones findIf{player inArea _x} > -1)};
hint parseText format["<t font='PuristaBold' color='#0979e9' size = '1.5' align='center'>Polizei Sperrzone</t><br/><br/><t color='#fc1c03' font='PuristaBold' size = '1' align='left'>Nachricht: </t><t font='PuristaBold' size = '1' align='left'>%1</t>",(getText(missionConfigFile >> "Sperrzonen_Master" >> "cop_zone_leave"))];

[]spawn husky_fnc_SperrZoneActivation;