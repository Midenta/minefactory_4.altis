/*
    File: fn_copMarkers.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Marks cops on the map for other cops. Only initializes when the actual map is open.

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private _markers = [];
private _cops = [];

sleep 0.5;
if (visibleMap) then {
    _cops = playableUnits select {side _x isEqualTo west};

    //Create markers
    {
        if !(_x isEqualTo player) then {
            private _marker = createMarkerLocal [format ["%1_marker",_x],visiblePosition _x];
            _marker setMarkerColorLocal "ColorBLUFOR";
            _marker setMarkerTypeLocal "Select";
            _marker setMarkerTextLocal format ["%1", _x getVariable ["realname",name _x]];

            _markers pushBack [_marker,_x];
        };
        true
    } count _cops;

	_marker = createMarkerLocal [format["%1_marker",player],visiblePosition player];
	_marker setMarkerColorLocal "ColorBLUFOR";
	_marker setMarkerTypeLocal "Select";
	_marker setMarkerTextLocal format["%1", player getVariable["realname",name player]];
	_markers pushBack [_marker,player];

    while {visibleMap} do {
        {
            _x params ["_marker","_unit"];
            if (!isNil "_unit" && {!isNull _unit}) then {
                _marker setMarkerPosLocal (visiblePosition _unit);
            };
            true
        } count _markers;
        if (!visibleMap) exitWith {};
        sleep 0.02;
    };

    {
        deleteMarkerLocal (_x select 0);
    } count _markers;
    _markers = [];
    _cops = [];
};