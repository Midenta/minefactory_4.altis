#include "..\..\script_macros.hpp"
/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
if (!alive player || dialog) exitWith {}; //Prevent them from opening this for exploits while dead.
createDialog "husky_admineventzwei";
disableSerialization;



switch(FETCH_CONST(husky_adminlevel)) do {
    case 1: {

		ctrlShow[133567,false];	//airdropevent
		ctrlShow[133568,false];	//tsunami
		ctrlShow[133569,false];	//Meteoriteneinschlag
		ctrlShow[133570,false];	//Erdbeben
		ctrlShow[2970,false];	//Flut
		ctrlShow[133572,false];	//Ebbe
		ctrlShow[133573,false];	//config_reload
		ctrlShow[133574,false];	//bus_menu
		ctrlShow[133575,false];	//Event
		ctrlShow[133576,false];	//Restart
		ctrlShow[1000,true];	//adminmenu
		ctrlShow[133577,false];	//Geldautomat
		ctrlShow[133578,false];	//platzhalter_3
		ctrlShow[133579,false];	//platzhalter_4
		ctrlShow[133580,false];	//platzhalter_5
		ctrlShow[133581,false];	//platzhalter_6
		ctrlShow[133582,false];	//platzhalter_7
		ctrlShow[133583,false];	//platzhalter_8
		ctrlShow[133584,false];	//platzhalter_9
		ctrlShow[133585,false];	//platzhalter_10
		ctrlShow[133586,false];	//platzhalter_11
		ctrlShow[133587,false];	//platzhalter_12
		ctrlShow[133588,false];	//platzhalter_13
		ctrlShow[133589,false];	//platzhalter_14
		ctrlShow[133590,false];	//platzhalter_15
		ctrlShow[133591,false];	//platzhalter_16

    };
	
	case 2: {
		
		ctrlShow[133567,false];	//airdropevent
		ctrlShow[133568,false];	//tsunami
		ctrlShow[133569,false];	//Meteoriteneinschlag
		ctrlShow[133570,false];	//Erdbeben
		ctrlShow[2970,false];	//Flut
		ctrlShow[133572,false];	//Ebbe
		ctrlShow[133573,false];	//config_reload
		ctrlShow[133574,false];	//bus_menu
		ctrlShow[133575,false];	//Event
		ctrlShow[133576,false];	//Restart
		ctrlShow[1000,true];	//adminmenu
		ctrlShow[133577,false];	//Geldautomat
		ctrlShow[133578,false];	//platzhalter_3
		ctrlShow[133579,false];	//platzhalter_4
		ctrlShow[133580,false];	//platzhalter_5
		ctrlShow[133581,false];	//platzhalter_6
		ctrlShow[133582,false];	//platzhalter_7
		ctrlShow[133583,false];	//platzhalter_8
		ctrlShow[133584,false];	//platzhalter_9
		ctrlShow[133585,false];	//platzhalter_10
		ctrlShow[133586,false];	//platzhalter_11
		ctrlShow[133587,false];	//platzhalter_12
		ctrlShow[133588,false];	//platzhalter_13
		ctrlShow[133589,false];	//platzhalter_14
		ctrlShow[133590,false];	//platzhalter_15
		ctrlShow[133591,false];	//platzhalter_16

    };

    case 3: {
		
        ctrlShow[133567,false];	//airdropevent
		ctrlShow[133568,false];	//tsunami
		ctrlShow[133569,false];	//Meteoriteneinschlag
		ctrlShow[133570,false];	//Erdbeben
		ctrlShow[2970,false];	//Flut
		ctrlShow[133572,false];	//Ebbe
		ctrlShow[133573,false];	//config_reload
		ctrlShow[133574,false];	//bus_menu
		ctrlShow[133575,false];	//Event
		ctrlShow[133576,false];	//Restart
		ctrlShow[1000,true];	//adminmenu
		ctrlShow[133577,true];	//Geldautomat
		ctrlShow[133578,false];	//platzhalter_3
		ctrlShow[133579,false];	//platzhalter_4
		ctrlShow[133580,false];	//platzhalter_5
		ctrlShow[133581,false];	//platzhalter_6
		ctrlShow[133582,false];	//platzhalter_7
		ctrlShow[133583,false];	//platzhalter_8
		ctrlShow[133584,false];	//platzhalter_9
		ctrlShow[133585,false];	//platzhalter_10
		ctrlShow[133586,false];	//platzhalter_11
		ctrlShow[133587,false];	//platzhalter_12
		ctrlShow[133588,false];	//platzhalter_13
		ctrlShow[133589,false];	//platzhalter_14
		ctrlShow[133590,false];	//platzhalter_15
		ctrlShow[133591,false];	//platzhalter_16

   };
   
   case 4: {
		
        ctrlShow[133567,false];	//airdropevent
		ctrlShow[133568,false];	//tsunami
		ctrlShow[133569,false];	//Meteoriteneinschlag
		ctrlShow[133570,false];	//Erdbeben
		ctrlShow[2970,false];	//Flut
		ctrlShow[133572,false];	//Ebbe
		ctrlShow[133573,true];	//config_reload
		ctrlShow[133574,false];	//bus_menu
		ctrlShow[133575,true];	//Event
		ctrlShow[133576,false];	//Restart
		ctrlShow[1000,true];	//adminmenu
		ctrlShow[133577,true];	//Geldautomat
		ctrlShow[133578,false];	//platzhalter_3
		ctrlShow[133579,false];	//platzhalter_4
		ctrlShow[133580,false];	//platzhalter_5
		ctrlShow[133581,false];	//platzhalter_6
		ctrlShow[133582,false];	//platzhalter_7
		ctrlShow[133583,false];	//platzhalter_8
		ctrlShow[133584,false];	//platzhalter_9
		ctrlShow[133585,false];	//platzhalter_10
		ctrlShow[133586,false];	//platzhalter_11
		ctrlShow[133587,false];	//platzhalter_12
		ctrlShow[133588,false];	//platzhalter_13
		ctrlShow[133589,false];	//platzhalter_14
		ctrlShow[133590,false];	//platzhalter_15
		ctrlShow[133591,false];	//platzhalter_16

   };
   
   case 5: {
		
        ctrlShow[133567,false];	//airdropevent
		ctrlShow[133568,false];	//tsunami
		ctrlShow[133569,false];	//Meteoriteneinschlag
		ctrlShow[133570,false];	//Erdbeben
		ctrlShow[2970,false];	//Flut
		ctrlShow[133572,false];	//Ebbe
		ctrlShow[133573,true];	//config_reload
		ctrlShow[133574,false];	//bus_menu
		ctrlShow[133575,true];	//Event
		ctrlShow[133576,true];	//Restart
		ctrlShow[1000,true];	//adminmenu
		ctrlShow[133577,true];	//Geldautomat
		ctrlShow[133578,false];	//platzhalter_3
		ctrlShow[133579,false];	//platzhalter_4
		ctrlShow[133580,false];	//platzhalter_5
		ctrlShow[133581,false];	//platzhalter_6
		ctrlShow[133582,false];	//platzhalter_7
		ctrlShow[133583,false];	//platzhalter_8
		ctrlShow[133584,false];	//platzhalter_9
		ctrlShow[133585,false];	//platzhalter_10
		ctrlShow[133586,false];	//platzhalter_11
		ctrlShow[133587,false];	//platzhalter_12
		ctrlShow[133588,false];	//platzhalter_13
		ctrlShow[133589,false];	//platzhalter_14
		ctrlShow[133590,false];	//platzhalter_15
		ctrlShow[133591,false];	//platzhalter_16

   };
};
