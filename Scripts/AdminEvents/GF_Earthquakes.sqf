
//Author : [GR]GEORGE F

/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/


if (!isServer) exitWith {};

diag_log "";


//________________ GF Earthquakes Script _____________

systemchat "E r d b e b e n";

while {true} do {

// How much time to wait for the next earthquake  		
sleep (20 + random 1);	//	600 sec ( 10 minutes ) +  random 2700 ( 45 minutes ) 


// Set here the radious
Destructive_radius = (getPosATL player) nearObjects ["Static", 750];			
Destructive_radius = (getPosATL player) nearObjects ["NonStrategic", 750];		
	
	
_earthquake_1 = { 
	//	systemchat "case 1";
	[1] call bis_fnc_earthquake;
	};
  
_earthquake_2 = { 
	//	systemchat "case 2";
	[2] call bis_fnc_earthquake;
	};

_earthquake_3 = { 
	//	systemchat "case 3";
	[3] call bis_fnc_earthquake;
	};

_earthquake_4 = { 
	//	systemchat "case 4";
	[4] call bis_fnc_earthquake;
	};
	
_earthquake_5 = { 
	//	systemchat "case 5";
	[player,1000] call bis_fnc_destroyCity;		// destroy buildings
	[3] call bis_fnc_earthquake;
	};
  
_earthquake_6 = { 
	//	systemchat "case 6";
	[player,1000] call bis_fnc_destroyCity;		// destroy buildings
	[4] call bis_fnc_earthquake;
	};

_earthquake_7 = {
	//	systemchat "case 7 destroy nearObjects";
	{_x setDamage 1} forEach Destructive_radius;
	[4] call bis_fnc_earthquake;
	};
	
_earthquake_8 = {
	//	systemchat "case 8 destroy nearObjects and wait some time before start";
	[4] call bis_fnc_earthquake;
	sleep (4 + random 4);	// Give some time to the player , to get out from a building
	{_x setDamage 1} forEach Destructive_radius;
	};	

_earthquake_9 = { 
	//	systemchat "case 9 compilation";
	[1] call bis_fnc_earthquake;
	sleep (3 + random 50);
	[2] call bis_fnc_earthquake;
	sleep (3 + random 50);
	[1] call bis_fnc_earthquake;
	sleep (3 + random 50);
	{_x setDamage 1} forEach Destructive_radius;
	[4] call bis_fnc_earthquake;
	sleep (3 + random 50);
	[3] call bis_fnc_earthquake;
	sleep (3 + random 50);
	[1] call bis_fnc_earthquake;
	sleep (3 + random 50);
	[3] call bis_fnc_earthquake;
	};
	
_earthquake_10 = {
	//	systemchat "case 10 compilation";
	[2] call bis_fnc_earthquake;	
	sleep (3 + random 50);
	[4] call bis_fnc_earthquake;
	sleep (3 + random 50);
	[1] call bis_fnc_earthquake;
	sleep (3 + random 50);
	[player,1000] call bis_fnc_destroyCity;		// destroy buildings
	[3] call bis_fnc_earthquake;
	sleep (3 + random 50);
	[1] call bis_fnc_earthquake;
	sleep (3 + random 50);
	[4] call bis_fnc_earthquake;
	sleep (4 + random 4);	// Give some time to the player , to get out from a building
	{_x setDamage 1} forEach Destructive_radius;
	};

	
//	Suffle _earthquakes
_earthquakes = selectRandom[    
			_earthquake_1, 
			_earthquake_2, 
			_earthquake_3,
			_earthquake_4,
			_earthquake_5,
			_earthquake_6,
			_earthquake_7,
			_earthquake_8,
			_earthquake_9,
			_earthquake_10
            ];
			
[] spawn _earthquakes;
};