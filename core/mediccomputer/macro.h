/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

#define __CONST__(var1,var2) var1 = compileFinal (if (typeName var2 == "STRING") then {var2} else {str(var2)}) //Quick macro for creating a constant variable
#define FETCH_CONST(var) (call var) //Quick clean macro for getting a value of a constant / compileFinal variable. i.e if (__GETC__(numberone) == 1) then {}
#define __SUB__(var1,var2) var1 = var1 - var2

//Control Macros
#define getControl(disp,ctrl) ((findDisplay ##disp) displayCtrl ##ctrl)
#define getSelData(ctrl) (lbData[##ctrl,(lbCurSel ##ctrl)])

//Player based quick macros
#define grpPlayer group player
#define steamid getPlayerUID player