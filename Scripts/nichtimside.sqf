/*
https://community.bistudio.com/wiki/enableChannel

Channel ID number correspondence
Default Channels 	Custom Channels
Global 	Side 	Command 	Group 	Vehicle 	Direct 	CC 1 	CC 2 	CC 3 	CC 4 	CC 5 	CC 6 	CC 7 	CC 8 	CC 9 	CC 10
0 	1 	2 	3 	4 	5 	6 	7 	8 	9 	10 	11 	12 	13 	14 	15 

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/


[] spawn {
	disableSerialization;
	0 enableChannel [true, false];
	1 enableChannel false;
	2 enableChannel false;
	7 enableChannel [true, false];
	
	while {true} do {
		waitUntil {sleep 1;((!isNull findDisplay 63) && (!isNull findDisplay 55))};
		if (ctrlText ((findDisplay 55) displayCtrl 101) == "\A3\ui_f\data\igui\rscingameui\rscdisplayvoicechat\microphone_ca.paa") then 
		{
			if(currentChannel == 0) then
			{
				setCurrentChannel 5;
				systemChat ("Im Global Chat wird nicht gesprochen. Du wurdest automatisch in den Direct-Chat gemoved!");
				hint ("Im Global Chat wird nicht gesprochen. Du wurdest automatisch in den Direct-Chat gemoved!");
			};
			
			if(currentChannel == 1) then
			{
				setCurrentChannel 5;
				systemChat ("Im Side Chat wird nicht gesprochen. Du wurdest automatisch in den Direct-Chat gemoved!");
				hint ("Im Side Chat wird nicht gesprochen. Du wurdest automatisch in den Direct-Chat gemoved!");
			};
			
			if(currentChannel == 7) then
			{
				setCurrentChannel 5;
				systemChat ("Im Side Chat wird nicht gesprochen. Du wurdest automatisch in den Direct-Chat gemoved!");
				hint ("Im Side Chat wird nicht gesprochen. Du wurdest automatisch in den Direct-Chat gemoved!");
			};	
		};
		sleep 1;
	};
};