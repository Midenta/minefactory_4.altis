 /*
    File: fn_speedBomb.sqf
    Author: Fuzz
   	
    Description:
    Attaches a speed bomb to a vehicle
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
    */
    private["_unit"];
    _unit = cursorTarget;
    
    //if (!license_civ_rebel) exitWith {hint "You need Rebel Training to use it."}; // OPTIONAL - If you want license to plant the bomb.
    if ((!(_unit isKindOf "LandVehicle"))&&(!(_unit getVariable ["restrained",false]))) exitWith {hint "Du kannst keine Speedbomb hinzufügen."};
    if (player distance _unit > 7) exitWith {hint "Du musst näher an das Fahrzeug!"};
    if (!([false,"speedbomb",1] call husky_fnc_handleInv)) exitWith {};
    closeDialog 0;
   
    husky_action_inUse = true;
   
    player playMove "AinvPknlMstpSnonWnonDnon_medic_1";
    sleep 1.5;
    waitUntil {animationState player != "ainvpknlmstpsnonwnondnon_medic_1"};
   
    husky_action_inUse = false;
    if (player distance _unit > 7) exitWith {titleText["Du bist zu weit weg!","PLAIN"];};
   
    titleText["Das Fahrzeug hat nun eine Speedbomb.","PLAIN"];
    //husky_experience = husky_experience + 25;
   
    [_unit] spawn
    {
    	_veh = _this select 0;
    	waitUntil {(speed _veh) > 80}; // 70 - Speed for activate the bomb. You can change if you want ;)
    	[[_veh, "caralarm",10],"husky_fnc_playSound",true,false] spawn BIS_fnc_MP;
    	hint "Ein platzierte Speedbome, wurde gerade aktiviert!";
    	{ [[2,"Eine Speedbomb wurde an diesem Fahrzeug aktiviert und detoniert, wenn die Geschwindigkeit unter 50 km/h sinkt!"],"husky_fnc_broadcast",_x,false] spawn BIS_fnc_MP; } foreach (crew _veh);
    	waitUntil {(speed _veh) < 50}; // 50 - Speed that the bomb will explode. You change it what you want. Don't forget to change the text above too.
    	serv_killed = [player,"1090"];
    	publicVariableServer "serv_killed";
    	_test = "Bo_Mk82" createVehicle [0,0,9999];
    	_test setPos (getPos _veh);
    	_test setVelocity [100,0,0];
    	hint "Eine Speedbome von dir ist Detoniert!";
    };