/*
    Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

VIR_fuelPump_locations = [
	[9205.75,12112.2,-0.0487213],
	[11831.6,14155.9,-0.0342026],
	[12024.7,15830,-0.0298138],
	[12026.6,15830.1,-0.0342979],
	[12028.4,15830,-0.0388718],
	[9025.78,15729.4,-0.0206451],
	[9023.75,15729,-0.027153],
	[9021.82,15728.7,-0.0293427],
	[16750.9,12513.1,-0.0525188],
	[6798.15,15561.6,-0.0441475],
	[6198.83,15081.4,-0.0912437],
	[14181.6,16549.3,0.00917625],
	[5023.26,14429.6,-0.0978947],
	[5019.68,14436.7,-0.0114822],
	[4001.12,12592.1,-0.0966644],
	[17417.2,13936.7,-0.10652],
	[3757.14,13477.9,-0.0540285],
	[3757.54,13485.9,-0.010498],
	[16875.2,15469.4,0.0373325],
	[16871.7,15476.6,0.0102873],
	[8481.69,18260.7,-0.0266876],
	[15297.1,17565.9,-0.2838],
	[14221.4,18302.5,-0.0697174],
	[15781,17453.2,-0.285282],
	[19961.3,11454.6,-0.0349312],
	[19965.1,11447.6,-0.0483704],
	[5768.99,20085.7,-0.0189667],
	[21230.4,7116.56,-0.0604248],
	[20784.8,16665.9,-0.0521202],
	[20789.6,16672.3,-0.0213318],
	[23379.4,19799,-0.0544052],
	[25701.2,21372.6,-0.0774155],
	[14173.2,16541.8,0]
];

//-------------------------------------------------------------------------------
{
_trg=createTrigger["EmptyDetector",_x];
_trg setTriggerArea[5,5,0,false];
_trg setTriggerActivation["NONE","PRESENT",false];
_trg setTriggerStatements["true", "{if (_x isKindOf 'Land_fs_feed_F') then {_x enableSimulation false; _x allowDamage false; _x setFuelCargo 0}} forEach nearestObjects [thisTrigger,[],10]", ""]; 

/*
_mrk = createMarker [format["%1_fuelpump", floor (random 100000)], _trg];
_mrk setMarkerShape "ICON";
_mrk setMarkerType "hd_dot";
_mrk setMarkerColor "ColorRed";	
*/
} foreach VIR_fuelPump_locations;