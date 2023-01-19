#include "..\..\script_macros.hpp"
/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

disableSerialization;
if(isNull (findDisplay 76548)) then {
  if(!(createDialog "farmcodeeingabe")) exitWith {hint "Geht irgendwie nicht";};
 };
private _display = findDisplay 76548;
private _text = _display displayCtrl 1001545;

private _ST_00 = "Farmboost (Abbauen/Verarbeiten/Verkaufen)";
private _ST_01 = "Farmboost (Abbauen/Verarbeiten)";
private _ST_02 = "Farmboost (Abbauen/Verkaufen)";
private _ST_03 = "Farmboost (Verarbeiten/Verkaufen)";
private _ST_04 = "Farmboost (Abbauen)";
private _ST_05 = "Farmboost (Verarbeiten)";
private _ST_06 = "Farmboost (Verkaufen)";
private _ST_07 = "Farmboost ";

if (husky_farmboost_A) then {_text ctrlSetText format ["%1 250 % aktiv!",_ST_00];};
  if (husky_farmboost_B) then {_text ctrlSetText format ["%1 150 % aktiv!",_ST_00];};
    if (husky_farmboost_C) then {_text ctrlSetText format ["%1 50 % aktiv!",_ST_00];};
      if (husky_farmboost_D) then {_text ctrlSetText format ["%1 250 % aktiv!",_ST_01];};
        if (husky_farmboost_E) then {_text ctrlSetText format ["%1 150 % aktiv!",_ST_01];};
          if (husky_farmboost_F) then {_text ctrlSetText format ["%1 50 % aktiv!",_ST_01];};
            if (husky_farmboost_G) then {_text ctrlSetText format ["%1 250 % aktiv!",_ST_02];};
              if (husky_farmboost_H) then {_text ctrlSetText format ["%1 150 % aktiv!",_ST_02];};
                if (husky_farmboost_I) then {_text ctrlSetText format ["%1 50 % aktiv!",_ST_02];};
                  if (husky_farmboost_J) then {_text ctrlSetText format ["%1 250 % aktiv!",_ST_03];};
                    if (husky_farmboost_K) then {_text ctrlSetText format ["%1 150 % aktiv!",_ST_03];};
                      if (husky_farmboost_L) then {_text ctrlSetText format ["%1 50 % aktiv!",_ST_03];};
                        if (husky_farmboost_M) then {_text ctrlSetText format ["%1 250 % aktiv!",_ST_04];};
                          if (husky_farmboost_N) then {_text ctrlSetText format ["%1 150 % aktiv!",_ST_04];};
                            if (husky_farmboost_O) then {_text ctrlSetText format ["%1 50 % aktiv!",_ST_04];};
                              if (husky_farmboost_P) then {_text ctrlSetText format ["%1 250 % aktiv!",_ST_05];};
                                if (husky_farmboost_Q) then {_text ctrlSetText format ["%1 150 % aktiv!",_ST_05];};
                                  if (husky_farmboost_R) then {_text ctrlSetText format ["%1 50 % aktiv!",_ST_05];};
                                    if (husky_farmboost_S) then {_text ctrlSetText format ["%1 250 % aktiv!",_ST_06];};
                                      if (husky_farmboost_T) then {_text ctrlSetText format ["%1 150 % aktiv!",_ST_06];};
                                        if (husky_farmboost_U) then {_text ctrlSetText format ["%1 50 % aktiv!",_ST_06];};
											if (husky_farmboost_ZZZ) then {_text ctrlSetText format ["%1 Sperre!",_ST_07];};

/*if (husky_farmboost_B) exitWith {_text ctrlSetText "Farmboost (Abbauen/Verarbeiten/Verkaufen) 150% aktiv!"};
if (husky_farmboost_C) exitWith {_text ctrlSetText "Farmboost (Abbauen/Verarbeiten/Verkaufen) 50% aktiv!"};
if (husky_farmboost_D) exitWith {_text ctrlSetText "Farmboost (Abbauen/Verarbeiten) 250% aktiv!"};
*/
/*
husky_farmboost_A
		hint "Ein Farmboost (Abbauen/Verarbeiten/Verkaufen) 250% Boost ist aktiv!";


husky_farmboost_B
		hint "Ein Farmboost (Abbauen/Verarbeiten/Verkaufen) 150% Boost ist aktiv!";


husky_farmboost_C
		hint "Ein Farmboost (Abbauen/Verarbeiten/Verkaufen) 50% Boost ist aktiv!";


husky_farmboost_D
		hint "Ein Farmboost (Abbauen/Verarbeiten) 250% Boost ist aktiv!";


husky_farmboost_E
		hint "Ein Farmboost (Abbauen/Verarbeiten) 150% Boost ist aktiv!";


husky_farmboost_F
		hint "Ein Farmboost (Abbauen/Verarbeiten) 50% Boost ist aktiv!";


husky_farmboost_G
		hint "Ein Farmboost (Abbauen/Verkaufen) 250% Boost ist aktiv!";


husky_farmboost_H
		hint "Ein Farmboost (Abbauen/Verkaufen) 250% Boost ist aktiv!";


husky_farmboost_I
		hint "Ein Farmboost (Abbauen/Verkaufen) 50% Boost ist aktiv!";


husky_farmboost_J
		hint "Ein Farmboost (Verarbeiten/Verkaufen) 250% Boost ist aktiv!";


husky_farmboost_K
		hint "Ein Farmboost (Verarbeiten/Verkaufen) 150% Boost ist aktiv!";


husky_farmboost_L
		hint "Ein Farmboost (Verarbeiten/Verkaufen) 50% Boost ist aktiv!";


husky_farmboost_M
		hint "Ein Farmboost (Abbauen) 250% Boost ist aktiv!";


husky_farmboost_N
		hint "Ein Farmboost (Abbauen) 150% Boost ist aktiv!";


husky_farmboost_O
		hint "Ein Farmboost (Abbauen) 50% Boost ist aktiv!";


husky_farmboost_P
		hint "Ein Farmboost (Verarbeiten) 250% Boost ist aktiv!";


husky_farmboost_Q
		hint "Ein Farmboost (Verarbeiten) 150% Boost ist aktiv!";


husky_farmboost_R
		hint "Ein Farmboost (Verarbeiten) 50% Boost ist aktiv!";


husky_farmboost_S
		hint "Ein Farmboost (Verkaufen) 250% Boost ist aktiv!";


husky_farmboost_T
		hint "Ein Farmboost (Verkaufen) 150% Boost ist aktiv!";


husky_farmboost_U
		hint "Ein Farmboost (Verkaufen) 50% Boost ist aktiv!";
*/
