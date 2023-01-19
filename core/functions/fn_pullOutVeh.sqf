/*
    File: fn_pullOutVeh.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!

*/

if (playerSide isEqualTo east || (isNull objectParent player)) exitWith {};
if (player getVariable "restrained") then {
    detach player;
    player setVariable ["Escorting",false,true];
    player setVariable ["transporting",false,true];
    husky_disable_getOut = false;
    player action ["Eject", vehicle player];
    titleText[localize "STR_NOTF_PulledOut","PLAIN"];
    titleFadeOut 4;
    husky_disable_getIn = true;
} else {
    player action ["Eject", vehicle player];
    titleText[localize "STR_NOTF_PulledOut","PLAIN"];
    titleFadeOut 4;
};

/*
if (playerSide isEqualTo west || (isNull objectParent player)) exitWith {};
//if (playerSide in [west,independent] || (currentWeapon player == primaryWeapon player || currentWeapon player == handgunWeapon player) && currentWeapon player != "" && !husky_knockout && !(player getVariable ["restrained",false]) && !husky_istazed && !husky_isknocked) then {

	if (player getVariable "restrained") then {
		detach player;
		player setVariable ["Escorting",false,true];
		player setVariable ["transporting",false,true];
		husky_disable_getOut = false;
		player action ["Eject", vehicle player];
		//titleText[format [localize "STR_NOTF_PulledOut",_who],"PLAIN"];
		titleText[localize "STR_NOTF_PulledOut","PLAIN"];
		
		//titleText[format [localize "STR_Cop_Restrained",_cop getVariable ["realname",name _cop]],"PLAIN"];
		
		titleFadeOut 4;
		husky_disable_getIn = true;
	} else {
		player action ["Eject", vehicle player];
		//titleText[format [localize "STR_NOTF_PulledOut",_who],"PLAIN"];
		titleText[localize "STR_NOTF_PulledOut","PLAIN"];
		titleFadeOut 4;
	};
//};
*/
