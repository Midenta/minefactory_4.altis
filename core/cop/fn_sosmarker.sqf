_player = _this select 0;
 _marker = createMarkerLocal [format["%1_marker",name _player],visiblePosition _player];
 _marker setMarkerColorLocal "ColorRed";
 _marker setMarkerTypeLocal "mil_warning";
 _marker setMarkerTextLocal format["Ausgelöster SOS Marker: %1", _player getVariable["realname", name _player]];
 0 = _marker spawn {sleep 90;
 deleteMarkerLocal _this;
};