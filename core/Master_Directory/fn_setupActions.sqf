/*
    File: fn_setupActions.sqf
    Author:

    Description:
    Master addAction file handler for all client-based actions.
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

husky_actions = [];

switch (playerSide) do {

    //Civilian
    case civilian: {
        //Drop fishing net
        husky_actions pushBack (player addAction[localize "STR_pAct_DropFishingNet",husky_fnc_dropFishingNet,"",0,false,false,"",'
        (surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && husky_carryWeight < husky_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !husky_net_dropped ']);

        //Rob person
        husky_actions pushBack (player addAction[localize "STR_pAct_RobPerson",husky_fnc_robAction,"",0,false,false,"",'!isNull cursorObject && player distance cursorObject < 3.5 && isPlayer cursorObject && animationState cursorObject == "Incapacitated" && !(cursorObject getVariable ["robbed",false]) ']);
    
		//husky_actions = husky_actions + [player addAction["<Navi</t>",gps_menu_fnc_loadGPSMenu,"Navi",1,false,true,"",'vehicle player != player']];		//Navi	#Husky #ausgeklammert lassen
	
		// open fed gates
        //husky_actions pushBack (player addAction["Schloss aufbrechen",husky_fnc_boltcutDoor,"",0,false,false,"",' !isNull cursorTarget && player distance cursorTarget < 2.5 && !dialog && typeOf cursorTarget == "Land_ConcreteWall_01_l_gate_F"']);
	
		//﻿Suicide alahsnackbar
		husky_actions = husky_actions + [player addAction["<t color='#FF0000'>Selbstmordweste aktivieren</t>",husky_fnc_suicideBomb,"",0,false,false,"",' vest player == "V_HarnessOGL_gry" && alive player && !husky_istazed && !(player getVariable "restrained") && !(player getVariable "Escorting") && !(player getVariable "transporting")']];
		
		//Holzbox
		husky_actions = husky_actions + [player addAction["<t color='#FF0000'>Holzbox aufheben</t>",husky_fnc_packupholzbox,"",0,false,false,"",' _holzbox = nearestObjects[getPos player,["Land_WoodenBox_F"],1] select 0; !isNil "_holzbox" && !isNil {(_holzbox getVariable "item")}']];
	
		//Sandsack (ecke)
		husky_actions = husky_actions + [player addAction["<t color='#FF0000'>Sandsack (Ecke) aufheben</t>",husky_fnc_packupsandsackecke,"",0,false,false,"",' _sandsackecke = nearestObjects[getPos player,["Land_BagFence_Corner_F"],1] select 0; !isNil "_sandsackecke" && !isNil {(_sandsackecke getVariable "item")}']];
	
		//Sandsack (ende)
		husky_actions = husky_actions + [player addAction["<t color='#FF0000'>Sandsack (Ende) aufheben</t>",husky_fnc_packupsandsackende,"",0,false,false,"",' _sandsackende = nearestObjects[getPos player,["Land_BagFence_End_F"],1] select 0; !isNil "_sandsackende" && !isNil {(_sandsackende getVariable "item")}']];
	
		//Sandsack (kurve)
		husky_actions = husky_actions + [player addAction["<t color='#FF0000'>Sandsack (Kurve) aufheben</t>",husky_fnc_packupsandsackkurve,"",0,false,false,"",' _sandsackkurve = nearestObjects[getPos player,["Land_BagFence_Round_F"],1] select 0; !isNil "_sandsackkurve" && !isNil {(_sandsackkurve getVariable "item")}']];
	
		//Sandsack (kurz)
		husky_actions = husky_actions + [player addAction["<t color='#FF0000'>Sandsack (Kurz) aufheben</t>",husky_fnc_packupsandsackkurz,"",0,false,false,"",' _sandsackkurz = nearestObjects[getPos player,["Land_BagFence_Short_F"],1] select 0; !isNil "_sandsackkurz" && !isNil {(_sandsackkurz getVariable "item")}']];
	
		//Sandsack (lang)
		husky_actions = husky_actions + [player addAction["<t color='#FF0000'>Sandsack (Lang) aufheben</t>",husky_fnc_packupsandsacklang,"",0,false,false,"",' _sandsacklang = nearestObjects[getPos player,["Land_BagFence_Long_F"],1] select 0; !isNil "_sandsacklang" && !isNil {(_sandsacklang getVariable "item")}']];
	
		//Anschnallgurt
		//husky_actions pushBack (player addAction["<t color = '#D660D6'>Anschnallen</t>",husky_fnc_seatbelt,"",8,false,false,"",' !husky_seatbelt && vehicle player != player ']);
		//husky_actions pushBack (player addAction["<t color = '#D660D6'>Abschnallen</t>",husky_fnc_seatbelt,"",8,false,false,"",' husky_seatbelt && vehicle player != player ']);
		
		//Anschnallgurt
		husky_actions pushBack (player addAction["<t color = '#009900'>Anschnallen</t>",husky_fnc_seatbelt,"",8,false,false,"",' !husky_seatbelt && vehicle player != player ']);
		husky_actions pushBack (player addAction["<t color = '#ff3300'>Abschnallen</t>",husky_fnc_seatbelt,"",8,false,false,"",' husky_seatbelt && vehicle player != player ']);
	
		// take them organs
		//husky_actions = husky_actions + [player addAction["Organe entnehmen",husky_fnc_takeOrgans,"",0,false,false,"",'!isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable ["missingOrgan",FALSE]) && !(player getVariable "Escorting") && !(player getVariable "hasOrgan") && !(player getVariable "transporting") && animationState cursorTarget == "Incapacitated"']];
	
		// open fed gates
        //husky_actions pushBack (player addAction["Tor aufbrechen",husky_fnc_boltcutgate,"",0,false,false,"",' !isNull cursorTarget && player distance cursorTarget < 2.5 && !dialog && typeOf cursorTarget == "Land_ConcreteWall_01_l_gate_F"']);
		
		//husky_actions pushBack (player addAction["Assavatenkammr aufbrechen1",husky_fnc_robKammer,"",0,false,false,"",' !isNull cursorTarget && player distance cursorTarget < 2.5 && !dialog && typeOf cursorTarget == "CargoNet_01_box_F"']);
		husky_actions pushBack (player addAction["Assavatenkammr aufbrechen","[cursorTarget] spawn husky_fnc_robKammer;","",0,false,false,"",' !isNull cursorTarget && player distance cursorTarget < 2.5 && !dialog && typeOf cursorTarget == "CargoNet_01_box_F" && (cursorTarget getVariable "husky_closed")']);
		//husky_actions pushBack (player addAction["Assavatenkammr aufbrechen3","[_target] spawn husky_fnc_robKammer;","",0,false,false,"",' !isNull cursorTarget && player distance cursorTarget < 2.5 && !dialog && typeOf cursorTarget == "CargoNet_01_box_F"']);
	
		//oturma
        husky_actions pushBack (player addAction["<t color='#0099FF'>Hinsetzen</t>",{[cursorObject,player] execVM "Scripts\Chair\sitdown.sqf"},true,1,true,true,"""",'player distance cursorObject < 3 && {([str cursorObject,"chair"] call KRON_StrInStr)} ']);
		//oturma
        husky_actions pushBack (player addAction["<t color='#0099FF'>Hinsetzen</t>",{[cursorObject,player] execVM "Scripts\Chair\sitdownbank.sqf"},true,1,true,true,"""",'player distance cursorObject < 3 && {([str cursorObject,"bench"] call KRON_StrInStr)} ']);
		
		//Gang
		husky_actions = husky_actions + [player addAction["<t color='#FF0000'>Capture Gang Location</t>",husky_fnc_areaCapture,"",0,false,false,"",' ((typeOf cursorTarget) == "Flag_Red_F") ']];

		//Lizenz zeigen
		husky_actions = husky_actions + [player addAction["Lizenzen zeigen","[cursorTarget]call husky_fnc_importentdocumentinteraction","",1,false,true,"",'!isNull cursorTarget && cursorTarget isKindOf "Man"']];
		
		husky_actions = husky_actions + [player addAction["<t color='#0099FF'>Paradrop</t>","[]call husky_fnc_Paradrop","",1,false,true,"",'((vehicle player) iskindof "Air") && (((position player) select 2) > 20)']];

		//husky_actions = husky_actions + [player addaction ["<t color='#0099FF'>Paradrop</t>","spawn husky_fnc_Paradrop", "", 7, false, false,"", '((vehicle player) iskindof "Air") && (((position player) select 2) > 20)']];
		//husky_actions = husky_actions + [player addaction [("<t color=""#ED2744"">") + ("Paradrop") + "</t>", "husky_fnc_Paradrop", "", 7, false, true,"", "((vehicle player) iskindof ""Air"") && (((position player) select 2) > 20) && (player != driver (vehicle player))"]];
	};
	
    //Cops
    case west: { 
		//Waffen Entfernen
		husky_actions = husky_actions + [player addAction["Objekte beschlagnahmen",husky_fnc_seizeWeapon,cursorTarget,0,false,false,"",'count(nearestObjects [player,["weaponholder"],3])>0']]; 
	
		//Auf und Abschiesen
		husky_actions = husky_actions + [player addAction["Als Fahrer Einsteigen",husky_fnc_copEnter,"driver",0,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car") || (cursorTarget isKindOf "Tank")) && ((driver (cursorTarget)) isEqualTo objnull) && (locked cursorTarget) != 0 && cursorTarget distance player < 5.5']];
		husky_actions = husky_actions + [player addAction["Als Beifahrer Einsteigen",husky_fnc_copEnter,"passenger",0,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car") || (cursorTarget isKindOf "Tank")) && (locked cursorTarget) != 0 && cursorTarget distance player < 5.5']]; 
		husky_actions = husky_actions + [player addAction["Aussteigen",husky_fnc_copEnter,"exit",100,false,false,"",'(vehicle player != player) && (speed vehicle player < 15) && (locked(vehicle player)==2)']]; 		
		husky_actions = husky_actions + [player addAction["Als Fahrer Einsteigen",husky_fnc_copEnter,"driver",0,false,false,"",'!isNull cursorTarget && cursorTarget isKindOf "Air" && ((driver (cursorTarget)) isEqualTo objnull) && (locked cursorTarget) != 0 && cursorTarget distance player < 5.5']];
		husky_actions = husky_actions + [player addAction["Als Beifahrer Einsteigen",husky_fnc_copEnter,"passenger",0,false,false,"",'!isNull cursorTarget && cursorTarget isKindOf "Air" && (locked cursorTarget) != 0 && cursorTarget distance player < 5.5']]; 
		//husky_actions = husky_actions + [player addaction [("<t color=""#ED2744"">") + ("Paradrop") + "</t>", "husky_fnc_Paradrop", "", 7, false, false,"", '((vehicle player) iskindof "Air") && (((position player) select 2) > 20)']];

		//Rob person
        husky_actions pushBack (player addAction[localize "STR_pAct_RobPerson",husky_fnc_robAction,"",0,false,false,"",'!isNull cursorObject && player distance cursorObject < 3.5 && isPlayer cursorObject && animationState cursorObject == "Incapacitated" && !(cursorObject getVariable ["robbed",false]) ']);
    
		// ﻿open fed gates
        //husky_ac﻿tions pushBack (player addAction["Schloss reparieren",husky_fnc_fixdoor,"",0,false,false,"",' !isNull cursorTarget && player distance cursorTarget < 2.5 && !dialog && typeOf cursorTarget == "Land_ConcreteWall_01_l_gate_F"']);
	
		//﻿Suicide alahsnackbar
		husky_actions = husky_actions + [player addAction["<t color='#FF0000'>Selbstmordweste aktivieren</t>",husky_fnc_suicideBomb,"",0,false,false,"",' vest player == "V_HarnessOGL_gry" && alive player && !husky_istazed && !(player getVariable "restrained") && !(player getVariable "Escorting") && !(player getVariable "transporting")']];
		
		//Holzbox
		husky_actions = husky_actions + [player addAction["<t color='#FF0000'>Holzbox aufheben</t>",husky_fnc_packupholzbox,"",0,false,false,"",' _holzbox = nearestObjects[getPos player,["Land_WoodenBox_F"],8] select 0; !isNil "_holzbox" && !isNil {(_holzbox getVariable "item")}']];
	
		//Sandsack (ecke)
		husky_actions = husky_actions + [player addAction["<t color='#FF0000'>Sandsack (Ecke) aufheben</t>",husky_fnc_packupsandsackecke,"",0,false,false,"",' _sandsackecke = nearestObjects[getPos player,["Land_BagFence_Corner_F"],8] select 0; !isNil "_sandsackecke" && !isNil {(_sandsackecke getVariable "item")}']];
	
		//Sandsack (ende)
		husky_actions = husky_actions + [player addAction["<t color='#FF0000'>Sandsack (Ende) aufheben</t>",husky_fnc_packupsandsackende,"",0,false,false,"",' _sandsackende = nearestObjects[getPos player,["Land_BagFence_End_F"],8] select 0; !isNil "_sandsackende" && !isNil {(_sandsackende getVariable "item")}']];
	
		//Sandsack (kurve)
		husky_actions = husky_actions + [player addAction["<t color='#FF0000'>Sandsack (Kurve) aufheben</t>",husky_fnc_packupsandsackkurve,"",0,false,false,"",' _sandsackkurve = nearestObjects[getPos player,["Land_BagFence_Round_F"],8] select 0; !isNil "_sandsackkurve" && !isNil {(_sandsackkurve getVariable "item")}']];
	
		//Sandsack (kurz)
		husky_actions = husky_actions + [player addAction["<t color='#FF0000'>Sandsack (Kurz) aufheben</t>",husky_fnc_packupsandsackkurz,"",0,false,false,"",' _sandsackkurz = nearestObjects[getPos player,["Land_BagFence_Short_F"],8] select 0; !isNil "_sandsackkurz" && !isNil {(_sandsackkurz getVariable "item")}']];
	
		//Sandsack (lang)
		husky_actions = husky_actions + [player addAction["<t color='#FF0000'>Sandsack (Lang) aufheben</t>",husky_fnc_packupsandsacklang,"",0,false,false,"",' _sandsacklang = nearestObjects[getPos player,["Land_BagFence_Long_F"],8] select 0; !isNil "_sandsacklang" && !isNil {(_sandsacklang getVariable "item")}']];
		
		//Anschnallgurt
		husky_actions pushBack (player addAction["<t color = '#009900'>Anschnallen</t>",husky_fnc_seatbelt,"",8,false,false,"",' !husky_seatbelt && vehicle player != player ']);
		husky_actions pushBack (player addAction["<t color = '#ff3300'>Abschnallen</t>",husky_fnc_seatbelt,"",8,false,false,"",' husky_seatbelt && vehicle player != player ']);
		
		//Cop Computer in Fahrzeugen
		husky_actions pushBack (player addAction["<t color = '#B91818'>Polizei Computer öffnen</t>",husky_fnc_opencopcomputer,"",7,false,false,"",'vehicle player != player ']);
	
		//Radarmessung in Fahrzeugen
		husky_actions pushBack (player addAction["<t color = '#00FF00'>Radarmessung</t>",husky_fnc_radar,"",7,false,false,"",'vehicle player != player ']);
		
		// take them organs
		//husky_actions = husky_actions + [player addAction["Organe entnehmen",husky_fnc_takeOrgans,"",0,false,false,"",'!isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable ["missingOrgan",FALSE]) && !(player getVariable "Escorting") && !(player getVariable "hasOrgan") && !(player getVariable "transporting") && animationState cursorTarget == "Incapacitated"']];
	
		// open fed gates
        //husky_actions pushBack (player addAction["Tor Repariern",husky_fnc_fixdoor,"",0,false,false,"",' !isNull cursorTarget && player distance cursorTarget < 2.5 && !dialog && typeOf cursorTarget == "Land_ConcreteWall_01_l_gate_F"']);
		
		husky_actions pushBack (player addAction["Assavatenkammr Repariern","[cursorTarget] spawn husky_fnc_repair_assavaten","",0,false,false,"",' !isNull cursorTarget && player distance cursorTarget < 2.5 && !dialog && typeOf cursorTarget == "CargoNet_01_box_F" && !(cursorTarget getVariable "husky_closed")']);
	
		//oturma
        husky_actions pushBack (player addAction["<t color='#0099FF'>Hinsetzen</t>",{[cursorObject,player] execVM "Scripts\Chair\sitdown.sqf"},true,1,true,true,"""",'player distance cursorObject < 3 && {([str cursorObject,"bench"] call KRON_StrInStr || [str cursorObject,"chair"] call KRON_StrInStr)} ']);
		
		//Gang
		husky_actions = husky_actions + [player addAction["<t color='#FF0000'>Capture Gang Location</t>",husky_fnc_areaCapture,"",0,false,false,"",' ((typeOf cursorTarget) == "Flag_Red_F") ']];

	};
    
    //EMS
    case independent: {
		//Auf und Abschiesen
		husky_actions = husky_actions + [player addAction["Als Fahrer Einsteigen",husky_fnc_medicEnter,"driver",0,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car") || (cursorTarget isKindOf "Tank")) && ((driver (cursorTarget)) isEqualTo objnull) && (locked cursorTarget) != 0 && cursorTarget distance player < 5.5']];
		husky_actions = husky_actions + [player addAction["Als Beifahrer Einsteigen",husky_fnc_medicEnter,"passenger",0,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car") || (cursorTarget isKindOf "Tank")) && (locked cursorTarget) != 0 && cursorTarget distance player < 5.5']]; 
		husky_actions = husky_actions + [player addAction["Aussteigen",husky_fnc_medicEnter,"exit",100,false,false,"",'(vehicle player != player) && (speed vehicle player < 15) && (locked(vehicle player)==2)']]; 		
		husky_actions = husky_actions + [player addAction["Als Fahrer Einsteigen",husky_fnc_medicEnter,"driver",0,false,false,"",'!isNull cursorTarget && cursorTarget isKindOf "Air" && ((driver (cursorTarget)) isEqualTo objnull) && (locked cursorTarget) != 0 && cursorTarget distance player < 5.5']];
		husky_actions = husky_actions + [player addAction["Als Beifahrer Einsteigen",husky_fnc_medicEnter,"passenger",0,false,false,"",'!isNull cursorTarget && cursorTarget isKindOf "Air" && (locked cursorTarget) != 0 && cursorTarget distance player < 5.5']]; 
		//husky_actions = husky_actions + [player addAction["Aufschliessen",husky_fnc_MedicEnter,"open",0,false,false,"",'!isNull cursorTarget && cursorTarget isKindOf "Air" && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']]; 
		//husky_actions = husky_actions + [player addAction["Aufschliessen",husky_fnc_MedicEnter,"open",0,false,false,"",'!isNull cursorTarget && cursorTarget isKindOf "Car" && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']];
		//husky_actions = husky_actions + [player addAction["Abschliessen",husky_fnc_MedicEnter,"lock",0,false,false,"",'!isNull cursorTarget && cursorTarget isKindOf "Air" && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']]; 
		//husky_actions = husky_actions + [player addAction["Abschliessen",husky_fnc_MedicEnter,"lock",0,false,false,"",'!isNull cursorTarget && cursorTarget isKindOf "Car" && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']]; 
		//husky_actions = husky_actions + [player addaction [("<t color=""#ED2744"">") + ("Paradrop") + "</t>", "husky_fnc_Paradrop", "", 7, false, false,"", '((vehicle player) iskindof "Air") && (((position player) select 2) > 20)']];

		//Rob person
        husky_actions pushBack (player addAction[localize "STR_pAct_RobPerson",husky_fnc_robAction,"",0,false,false,"",'!isNull cursorObject && player distance cursorObject < 3.5 && isPlayer cursorObject && animationState cursorObject == "Incapacitated" && !(cursorObject getVariable ["robbed",false]) ']);
    
		//﻿Suicide alahsnackbar
		husky_actions = husky_actions + [player addAction["<t color='#FF0000'>Selbstmordweste aktivieren</t>",husky_fnc_suicideBomb,"",0,false,false,"",' vest player == "V_HarnessOGL_gry" && alive player && !husky_istazed && !(player getVariable "restrained") && !(player getVariable "Escorting") && !(player getVariable "transporting")']];
		
		//Holzbox
		husky_actions = husky_actions + [player addAction["<t color='#FF0000'>Holzbox aufheben</t>",husky_fnc_packupholzbox,"",0,false,false,"",' _holzbox = nearestObjects[getPos player,["Land_WoodenBox_F"],8] select 0; !isNil "_holzbox" && !isNil {(_holzbox getVariable "item")}']];
	
		//Sandsack (ecke)
		husky_actions = husky_actions + [player addAction["<t color='#FF0000'>Sandsack (Ecke) aufheben</t>",husky_fnc_packupsandsackecke,"",0,false,false,"",' _sandsackecke = nearestObjects[getPos player,["Land_BagFence_Corner_F"],8] select 0; !isNil "_sandsackecke" && !isNil {(_sandsackecke getVariable "item")}']];
	
		//Sandsack (ende)
		husky_actions = husky_actions + [player addAction["<t color='#FF0000'>Sandsack (Ende) aufheben</t>",husky_fnc_packupsandsackende,"",0,false,false,"",' _sandsackende = nearestObjects[getPos player,["Land_BagFence_End_F"],8] select 0; !isNil "_sandsackende" && !isNil {(_sandsackende getVariable "item")}']];
	
		//Sandsack (kurve)
		husky_actions = husky_actions + [player addAction["<t color='#FF0000'>Sandsack (Kurve) aufheben</t>",husky_fnc_packupsandsackkurve,"",0,false,false,"",' _sandsackkurve = nearestObjects[getPos player,["Land_BagFence_Round_F"],8] select 0; !isNil "_sandsackkurve" && !isNil {(_sandsackkurve getVariable "item")}']];
	
		//Sandsack (kurz)
		husky_actions = husky_actions + [player addAction["<t color='#FF0000'>Sandsack (Kurz) aufheben</t>",husky_fnc_packupsandsackkurz,"",0,false,false,"",' _sandsackkurz = nearestObjects[getPos player,["Land_BagFence_Short_F"],8] select 0; !isNil "_sandsackkurz" && !isNil {(_sandsackkurz getVariable "item")}']];
	
		//Sandsack (lang)
		husky_actions = husky_actions + [player addAction["<t color='#FF0000'>Sandsack (Lang) aufheben</t>",husky_fnc_packupsandsacklang,"",0,false,false,"",' _sandsacklang = nearestObjects[getPos player,["Land_BagFence_Long_F"],8] select 0; !isNil "_sandsacklang" && !isNil {(_sandsacklang getVariable "item")}']];
	
		//Anschnallgurt
		husky_actions pushBack (player addAction["<t color = '#009900'>Anschnallen</t>",husky_fnc_seatbelt,"",8,false,false,"",' !husky_seatbelt && vehicle player != player ']);
		husky_actions pushBack (player addAction["<t color = '#ff3300'>Abschnallen</t>",husky_fnc_seatbelt,"",8,false,false,"",' husky_seatbelt && vehicle player != player ']);
	
		//Med Computer in Fahrzeugen
		husky_actions pushBack (player addAction["<t color = '#B91818'>Mediziner Computer öffnen</t>",husky_fnc_openmedcomputer,"",7,false,false,"",'vehicle player != player ']);
		
		// take them organs
		//husky_actions = husky_actions + [player addAction["Organe entnehmen",husky_fnc_takeOrgans,"",0,false,false,"",'!isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable ["missingOrgan",FALSE]) && !(player getVariable "Escorting") && !(player getVariable "hasOrgan") && !(player getVariable "transporting") && animationState cursorTarget == "Incapacitated"']];
		
		//oturma
        husky_actions pushBack (player addAction["<t color='#0099FF'>Hinsetzen</t>",{[cursorObject,player] execVM "Scripts\Chair\sitdown.sqf"},true,1,true,true,"""",'player distance cursorObject < 3 && {([str cursorObject,"bench"] call KRON_StrInStr || [str cursorObject,"chair"] call KRON_StrInStr)} ']);
	};
};
