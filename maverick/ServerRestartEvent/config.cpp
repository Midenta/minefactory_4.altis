/*
	Author: Maverick Applications
	Desc: Altis husky ServerRestartEvent
*/

//Customize your settings, to fit your server setup!
class Maverick_ServerRestartEvent {

    //Should the automatic activation be enabled?
    AutoRestart            = 0;   // 0 = No | 1 = yes

    //How many seconds does it take until the server restarts
    ServerRestartTime      = 14400;// 14400 = 4 hour restarts

    //If you want to play a music enter the name you defined in the description.ext here (playSound is used!)
    //The restart/event is around 85 seconds, so maybe make the sound the same length
    RestartSound           = "";

    //Messages shown as hint in-game to inform the players [Can be formatted]
	MessageRestartAnnounce = "<t size='1.4'>Weltuntergang</t><br/><br/><t size='1.25'>Der Server wird in 5 Minuten neu gestartet!</t>";
	MessageRestartInit     = "<t size='1.4'>Sonnenwende</t><br/><br/><t size='1.25'>Bis gleich!</t>";
	MessageEventInit       = "<t size='1.4'>Event</t><br/><br/><t size='1.25'>Suche nach einer Deckung oder du wirst sterben!</t>";
};