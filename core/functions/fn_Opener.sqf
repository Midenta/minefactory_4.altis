/*
 File: fn_gateOpener.sqf
 Author: Insane (www.tdc-clan.eu)
 Modified by: blackfisch for MountainValley RPG, released on Native-Network
 Description:
 open gates from inside the car
 
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private _classes = ["Land_BarGate_F", "Land_ConcreteWall_01_m_gate_F", "Land_ConcreteWall_01_l_gate_F", "Land_Net_Fence_Gate", "Land_Stone_Gate_F", "Burnes_ironGate", "Burnes_ironGate_2", "Burnes_ironFence", "Burnes_floorGate", "Land_Gate_C", "inner_switch", "outergate", "Land_PoliceStation","CSPDoual"];
{
 //if !(_x getVariable ["remoteDoor",false]) exitWith {}; //Diese Zeile auskommentieren, wenn es nur bei bestimmten Schranken gehen soll. Dann folgendes in die init im Editor: this setVariable ["remoteDoor",true,true];
 if ((_x animationPhase "Door_2_rot" > 0.7) || {_x animationPhase "Door_1_rot" > 0.7} || {_x animationPhase "Door_1_move" > 0.7} ) then {
 _x animate ["Door_1_rot", 0];			//schranke
 _x animate ["Door_2_rot", 0];			//schranke??
 _x animate ["Door_1_move", 0];			//schiebetor apex
 } else {
 _x animate ["Door_1_rot", 1];
 _x animate ["Door_2_rot", 1];
 _x animate ["Door_1_move", 1];
 };
} forEach (nearestObjects [player, _classes, 10]);