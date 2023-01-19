/*
	file: fn_takeOrgans.sqf
	author: [midgetgrimm] - www.grimmhusky.com
	?
	Updated and improved upon by: Edward - Edward#2003
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private["_unit"];
_unit = cursorTarget;

//Playerchecks
if (isNull _unit) exitWith {}; //if unit is null, than NO
if ((_unit getVariable ["missingOrgan",FALSE])) exitWith {};//must not be missing organ already
if ((player getVariable ["hasOrgan",FALSE])) exitWith {};//thief must not have already robbed an organ within last 5 mintues
if ((animationState _unit != "Incapacitated")) exitWith {};//victim must be knocked out
if (player == _unit) exitWith {};//if the thief is the cursor target(dafuq) than NO
if (!isPlayer _unit) exitWith {};//iff the cursor target is not a player than NO
if (husky_inv_scalpel < 1) exitWith {hint "Du brauchst ein Skalpell?!"};
if (husky_inv_kidney >= 2) exitWith {hint "Du kannst unm�glich so viele Organe brauchen!"};//if you already have 2 kidneys, then go sell them already, no stockpiling
if (!([true,"kidney",1] call husky_fnc_handleInv)) exitWith {hint "Du hast keinen Platz f�r Organe!"};//if no room for kidney, you cannot take their kidney, duh, waste not want not


husky_action_inUse = true;//sets action to true as to prevent kidney spammming!!!!!!!!
player setVariable["hasOrgan",true,true];//sets variable on thief, so as not to consistently take organs, set to 5 minute cooldown
if (animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
        [player,"AinvPknlMstpSnonWnonDnon_medic_1"] remoteExecCall ["husky_fnc_animSync",RCLIENT];
        player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
    };
uiSleep 3;//length of action, had weird results with any higher - obviously not realistic, but whatever
_unit setVariable["missingOrgan",true,true];//sets the missing organ variable so effects can take place
husky_action_inUse = false;//once variables are set, and actions stop, then you can use scrolly wheely
[player] remoteExec ["husky_fnc_hasOrgan", _unit];//this then calls the fn_hasOrgan.sqf on the thief
[false,"scalpel",1] call husky_fnc_handleInv;