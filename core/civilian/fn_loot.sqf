#include "..\..\script_macros.hpp"
/*
    Author: Jonas, xjoniassx @ MineFactory.eu (2017)
    info@minefacotry.eu xjoniassx@gmail.com
    10% besondere Items dropchance eingestellt
    �nder ""if(zufallsZahl > 90)"" und if(zufallsZahl < 90)
    Auf z.b. 80 und du hast eine dropchance 20%
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
Private["_weight","_weightItems"];
zufallsZahl = round(random 100);
if(zufallsZahl > 95) then {
//diag_log format ["%1", zufallsZahl];
    wonItemArray = [
        ["BP_Waffe_MkIII",1],
        ["bausatz_zamak_fuel_2",1],
        ["plastikmull",1],
        ["metalldose",1],
        ["dreck",1],
        ["chip3",1],
        ["chip2",1],
        ["bausatz_zamak_1",1],
        ["BP_Weste_MkIII",1],
        ["BP_Zubehoer_MkIII",1],
        ["plastikmull",1],
        ["metalldose",1],
        ["dreck",1],
        ["BP_Zubehoer_MkIV",1],
        ["BP_Suit_MkII",1],
        ["BP_Suit_MkIII",1],
        ["fakeidcard",1],
        ["lootboxepic",1],
        ["plastikmull",1],
        ["metalldose",1],
        ["dreck",1],
        ["brecheisen",1],
        ["bausatz_humming_1",1],
        ["bausatz_m900_1",1],
        ["bausatz_van_1",1]
        
    ];
 };
if(zufallsZahl < 95) then {
    wonItemArray = [
        ["goldbarren",1],
        ["plastikmull",1],
        ["metalldose",1],
        ["dreck",1],
        ["chip1",1],
        ["bausatz_zamak_fuel_1",1],
        ["bausatz_zamak_2",1],
        ["BP_Suit_MkII",1],
        ["plastikmull",1],
        ["metalldose",1],
        ["dreck",1],
        ["BP_Zubehoer_MkI",1],
        ["BP_Zubehoer_MkII",1],
        ["BP_Weste_MkI",1],
        ["BP_Weste_MkII",1],
        ["plastikmull",1],
        ["metalldose",1],
        ["dreck",1],
        ["craftingtool",1],
        ["Stahl",1],
        ["marijuana",1],
        ["oil_unprocessed",1],
        ["plastikmull",1],
        ["metalldose",1],
        ["dreck",1],
        ["banane",1],
        ["net",1],
        ["Schaufel",1],
        ["Machete",1],
        ["waterBottle",1],
        ["coffee",1],
        ["boltcuttergate",1],
        ["lockpick",1],
        ["fuelEmpty",1],
        ["kabelbinder",1],
        ["schmerzmittel",1],
        ["donuts",1],
        ["plastikmull",1],
        ["metalldose",1],
        ["dreck",1],
        ["tbacon",1],
        ["bausatz_humming_2",1],
        ["bausatz_humming_3",1],
        ["bausatz_m900_2",1],
        ["bausatz_offroader_1",1],
        ["pickaxe",1],
        ["kohle_verarbeitet",1],
        ["plastikmull",1],
        ["metalldose",1],
        ["dreck",1],
        ["eisenbarren",1],
        ["chemU",1],
        ["Bananenkuchen",1],
        ["Kraftstoff",1],
        ["bauxitU",1],
        ["kokosnuss",1],
        ["Sichel",1],
        ["plastikmull",1],
        ["metalldose",1],
        ["dreck",1],
        ["plastikmull",1],
        ["metalldose",1],
        ["dreck",1]
        
    ];
 };
_wonItem = wonItemArray select floor(random(count wonItemArray));
_wonItemName =  (_wonItem select 0);
_wonItemAmount = (_wonItem select 1); 
//_wonItemAmount = selectRandom [1,2,3];

_div = [_wonItem,1,husky_carryWeight,husky_maxWeight] call husky_fnc_calWeightDiff;

_displayName = M_CONFIG(getText,"VirtualItems",_wonItemName,"displayName");

sleep 1;
[true,_wonItemName,_wonItemAmount] call husky_fnc_handleInv;
systemChat format ["Du bekommst %1 x %2",_wonItemAmount,(localize _displayName)];
