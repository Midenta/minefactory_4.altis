/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Starts automated mining of resource from the tempest device.
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private["_vehicle","_resourceZones","_zone","_weight","_item","_vInv","_itemIndex"];
_vehicle = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _vehicle) exitWith {}; //Null was passed?
if(!isNil {_vehicle getVariable "mining"}) exitWith {hint localize "STR_NOTF_DeviceIsMining";}; //Mining is already in process..
closeDialog 0; //Close the interaction menu.
husky_action_inUse = true; //Lock out the interaction menu for a bit..
_weight = [_vehicle] call husky_fnc_vehicleWeight;
if((_weight select 1) >= (_weight select 0)) exitWith {hint localize "STR_NOTF_DeviceFull"; husky_action_inUse = false;};
_resourceZones = ["apple_1","apple_2","apple_3","apple_4","peaches_1","peaches_2","peaches_3","peaches_4","Bananen_1","Bananen_2","Bananen_3","Kokosnussfeld_1","Kokosnussfeld_2","Kokosnussfeld_3","Baumwollplantage_1","salt_unrefined","Weizenfeld_1","Weizenfeld_2","Weizenfeld_3","Zuckerrohrfeld_1","Bauxit_1","Diamantenmine_1","Eisenmine_1","Sandgrube_1","Holzabbau_1","Kautschukplantage_1","Kohlemine_1","Erdoelfeld_1","Kakaofeld_1","Siliciumabbau_1","Schwarzpulver_1","FroschSumpf_1","ChemischeElemente_1","Cannabisfeld_1", "Kokainplantage_1","Ephedrinfeld_1", "erdbeere_1", "coaxium_1", "wolfram_1", "ayahuasca_1", "kybercrystal_1", "honig_1" ];
_zone = "";

//Find out what zone we're near
{
	if(player distance (getMarkerPos _x) < 150) exitWith {_zone = _x;};
} foreach _resourceZones;

if(_zone == "") exitWith {
	hint localize "STR_NOTF_notNearResource";
	husky_action_inUse = false;
};

//Get the resource that will be gathered from the zone name...
_item = switch(true) do {
	case (_zone in ["apple_1","apple_2","apple_3","apple_4"]): {"apple"};
	case (_zone in ["peaches_1","peaches_2","peaches_3","peaches_4"]): {"peach"};
	case (_zone in ["Bananen_1","Bananen_2","Bananen_3"]): {"banane"};
	case (_zone in ["Kokosnussfeld_1","Kokosnussfeld_2","Kokosnussfeld_3"]): {"kokosnuss"};
	case (_zone in ["Baumwollplantage_1"]): {"baumwolleV"};
	case (_zone in ["erdbeere_1"]): {"erdbeermarmelade"};
	case (_zone in ["honig_1"]): {"honig"};

	case (_zone in ["salt_mine"]): {"salt_refined"};
	case (_zone in ["Weizenfeld_1","Weizenfeld_2","Weizenfeld_3"]): {"mehl"};
	case (_zone in ["Zuckerrohrfeld_1"]): {"zuckerV"};
	case (_zone in ["Bauxit_1"]): {"bauxitV"};
	case (_zone in ["Diamantenmine_1"]): {"diamond_cut"};
	case (_zone in ["Eisenmine_1"]): {"eisenbarren"};
	case (_zone in ["Sandgrube_1"]): {"glass"};
	case (_zone in ["Holzabbau_1"]): {"holzbrettV"};
	case (_zone in ["Kautschukplantage_1"]): {"Gummi"};
	case (_zone in ["Kohlemine_1"]): {"kohle_verarbeitet"};
	case (_zone in ["Kakaofeld_1"]): {"schokoV"};
	case (_zone in ["Siliciumabbau_1"]): {"SiliciumV"};

	case (_zone in ["FroschSumpf_1"]): {"lsd"};
	case (_zone in ["ChemischeElemente_1"]): {"chemV"};
	case (_zone in ["Cannabisfeld_1"]): {"marijuana"};
	case (_zone in ["Kokainplantage_1"]): {"cocaine_processed"};
	case (_zone in ["Ephedrinfeld_1"]): {"EphedrinV"};	
	case (_zone in ["Schwarzpulver_1"]): {"schwarzpulverV"};
	case (_zone in ["kybercrystal_1"]): {"kybercrystal"};
	case (_zone in ["ayahuasca_1"]): {"ayahuasca"};
	case (_zone in ["wolfram_1"]): {"wolfram"};
	case (_zone in ["coaxium_1"]): {"coaxium"};

	default {""};
};

//Kein Öl im Tempess Transport !!!!
if(_item == "oil_unprocessed") exitWith {
	hint "Du kannst Öl nur in einen Tanklaster füllen!";
	husky_action_inUse = false;
};

if(_item == "") exitWith {hint "Bad Resource?"; husky_action_inUse = false;};
_vehicle setVariable ["mining",true,true]; //Lock the device
_vehicle remoteExec ["husky_fnc_soundDevice", -2, false];

husky_action_inUse = false; //Unlock it since it's going to do it's own thing...

while {true} do {
	if(!alive _vehicle OR isNull _vehicle) exitWith {};
	if(isEngineOn _vehicle) exitWith {titleText[localize "STR_NOTF_MiningStopped","PLAIN"];};
	titleText[localize "STR_NOTF_DeviceMining","PLAIN"];
	_time = time + 3;		//Abbau Zeit
	
	//Wait for 1 seconds with a 'delta-time' wait.
	waitUntil {
		if(isEngineOn _vehicle) exitWith {titleText[localize "STR_NOTF_MiningStopped","PLAIN"]; true};
		if(round(_time - time) < 5) exitWith {true};
		sleep 0.2;
		false
	};

	if(isEngineOn _vehicle) exitWith {
		_vehicle setVariable ["mining",nil,true];
		titleText[localize "STR_NOTF_MiningStopped","PLAIN"];
	};
	
	_vInv = _vehicle getVariable ["Trunk",[[],0]];
	_items = +(_vInv select 0);
    _space = (_vInv select 1);
	_itemIndex = [_item,_items] call TON_fnc_index;
	_weight = [_vehicle] call husky_fnc_vehicleWeight;
	_sum = [_item,1,_weight select 1,_weight select 0] call husky_fnc_calWeightDiff; //Get a sum base of the remaining weight.. 

	if(_sum < 1) exitWith {
		titleText[localize "STR_NOTF_DeviceFull","PLAIN"];
		_vehicle setVariable ["mining",nil,true];
	};
	_itemWeight = ([_item] call husky_fnc_itemWeight) * _sum;
	if(_itemIndex == -1) then {
		_items set[count _items,[_item,_sum]];
	} else {
		_val = _items select _itemIndex select 1;
		_items set[_itemIndex,[_item,_val + _sum]];
	};
	
	if(fuel _vehicle == 0) exitWith {
		titleText[localize "STR_NOTF_OutOfFuel","PLAIN"];
	};
	
	//Locality checks...
	if(local _vehicle) then {
		_vehicle setFuel (fuel _vehicle)-0.05;
	} else {
		[_vehicle,(fuel _vehicle)-0.05] remoteExec ["husky_fnc_setFuel", _vehicle, false];
	};
	
	if(fuel _vehicle == 0) exitWith {titleText[localize "STR_NOTF_OutOfFuel","PLAIN"];};
	titleText[format[localize "STR_NOTF_DeviceMined",_sum],"PLAIN"];
	_vehicle setVariable["Trunk",[_items,_space + _itemWeight],true];
	_weight = [_vehicle] call husky_fnc_vehicleWeight;
	_sum = [_item,1,_weight select 1,_weight select 0] call husky_fnc_calWeightDiff; //Get a sum base of the remaining weight.. 
	
	if(_sum < 1) exitWith {
		_vehicle setVariable ["mining",nil,true];
		titleText[localize "STR_NOTF_DeviceFull","PLAIN"];
	};

	sleep 2;
};

_vehicle setVariable["mining",nil,true];