/*
    File: initServer.sqf
    Author:

    Description:
    Starts the initialization of the server.
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
if (!(_this select 0)) exitWith {}; //Not server
[] call compile preprocessFileLineNumbers "\husky_server\init.sqf";

//["Initialize", [true]] call BIS_fnc_dynamicGroups;


//[] execVM "Scripts\husky\GF_Explosive_Objects\GF_Explosive_Objects.sqf";

/*

[] spawn {
	while {true} do {
		waituntil{uisleep 1;
			if (isServer) then {
				{
					_x addCuratorEditableObjects [allUnits,true];
					_x addCuratorEditableObjects [vehicles,true];
					_x addCuratorEditableObjects [allMissionObjects "All",true];
				}forEach allCurators;            
			};
		};
	};
};
*/

