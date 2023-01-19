/*
    File: fn_civMarkers.sqf
    Author:

    Description:
    Add markers for civilians in groups.
	
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
/*
private ["_markers","_members"];
_markers = [];
_members = [];

for "_i" from 0 to 1 step 0 do {
    sleep 0.5;
    if (visibleMap) then
    {
        _members = units (group player);
        {
            if !(_x isEqualTo player) then {
                _marker = createMarkerLocal [format ["%1_marker",_x],visiblePosition _x];
                _marker setMarkerColorLocal "ColorCivilian";
                _marker setMarkerTypeLocal "Mil_dot";
                _marker setMarkerTextLocal format ["%1", _x getVariable ["realname",name _x]];
                _markers pushBack [_marker,_x];
            };
        } forEach _members;

        while {visibleMap} do
        {
            {
                private ["_unit"];
                _unit = _x select 1;
                if (!isNil "_unit" && !isNull _unit) then {
                      (_x select 0) setMarkerPosLocal (visiblePosition _unit);
                };
            } forEach _markers;
            if (!visibleMap) exitWith {};
            sleep 0.02;
        };

        {deleteMarkerLocal (_x select 0);} forEach _markers;
        _markers = [];
        _members = [];
    };
};
*/
/*
private ["_markers","_members"];
_markers = [];
_members = [];
//_vehicles = [];

for "_i" from 0 to 1 step 0 do {
    sleep 0.5;
    if (visibleMap) then {
	
        _members = units (group player);
        {
            if !(_x isEqualTo player) then {
                _marker = createMarkerLocal [format ["%1_marker",_x],visiblePosition _x];
                _marker setMarkerColorLocal "ColorCivilian";
                _marker setMarkerTypeLocal "Select";
                _marker setMarkerTextLocal format ["%1", _x getVariable ["realname",name _x]];
                _markers pushBack [_marker,_x];
            };
        } forEach _members;

		_marker = createMarkerLocal [format["%1_marker",player],visiblePosition player];
		_marker setMarkerColorLocal "ColorCivilian";
		_marker setMarkerTypeLocal "Select";
		_marker setMarkerTextLocal format["%1", player getVariable["realname",name player]];
		_markers pushBack [_marker,player];
		
        while {visibleMap} do  {
            {
                private ["_unit"];
                _unit = _x select 1;
                if (!isNil "_unit" && !isNull _unit) then {
                      (_x select 0) setMarkerPosLocal (visiblePosition _unit);
                };
            } forEach _markers;
            if (!visibleMap) exitWith {};
            sleep 0.02;
        };

        {deleteMarkerLocal (_x select 0);} forEach _markers;
        _markers = [];
        _members = [];
    };
};
*/
if(!("ItemGPS" in assignedItems player))exitWith{hint "Kein GPS. Da du kein GPS hast, wirst du keine Map-Markierungen sehen..";};
markers=[];
((findDisplay 12)displayCtrl 51)ctrlAddEventHandler["Draw",{{(_this select 0)drawIcon _x;}forEach markers;}];
while{true}do{
	sleep 1;
	while{visibleMap}do{
		_units=[];
		_text="";
		{
			_unit=_x;
			if(!("ItemGPS" in assignedItems _x))exitWith{};
			if((vehicle _x)!=_unit)then{
				_crew = [];
				_crewtemp = crew vehicle _x;
				{
					if(_x in (units group player)) then {
						_crew pushback _x;
					};
				}foreach _crewtemp;
				{
					if(!(_x in (units group player)))exitWith{};
					if !((_text find name _x)isEqualTo -1)exitWith{};
					_text = _text + format["%1",name _x];
					if(_foreachindex<(count _crew)-1 && _x in (units group player))then{_text=_text+", "};
				}foreach _crew;
				_units pushback[getText(configFile>>"CfgVehicles">>typeOf vehicle _x>>"Icon"),[0.4,0.004,0.502,1],visiblePosition vehicle _x,26,26,direction vehicle _x,format["%1",_text]];
			}else{
				_units pushback[getText(configFile>>"CfgVehicles">>typeOf vehicle _x>>"Icon"),[0.4,0.004,0.502,1],visiblePosition vehicle _x,26,26,direction vehicle _x,format["%1",name _x]];
			};
			_text="";
		}forEach(units group player);
		_marker=[];
		{_marker pushback _x;}foreach _units;
		markers=_marker;
	};
};