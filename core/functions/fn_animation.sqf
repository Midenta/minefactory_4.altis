#include "..\..\script_macros.hpp"
/* 
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private["_display","_list","_moves"];
disableSerialization;

_moves = [    
            ["KungFuPanda","AmovPercMstpSnonWnonDnon_exerciseKata"],
            ["Liegest�tze","AmovPercMstpSnonWnonDnon_exercisePushup"],
            ["KniebeugenProfi","AmovPercMstpSnonWnonDnon_exercisekneeBendB"],
            ["KniebeugenAnf�nger","AmovPercMstpSnonWnonDnon_exercisekneeBendA"],
			["Pinkeln","Acts_AidlPercMstpSlowWrflDnon_pissing"]
         ];

waitUntil {!isNull (findDisplay 2900)};

_display = findDisplay 2900;
_list = _display displayCtrl 2902;
lbClear _list; 
{ _list lbAdd format["%1", _x select 0];    
  _list lbSetdata [(lbSize _list)-1,str(_x select 1)];
} foreach _moves;

/*
            ["GestureHiC","gestureHiC"],
            ["GestureHi","gestureHi"],
            ["GestureHiB","gestureHiB"],
            ["Mittelfinger","acts_briefing_sb_in"],
*/