/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/



class CfgServer {
    DatabaseName = "livoniahusky"; //Config name that'll be grep in the extdb-conf.ini. Default: [livoniahusky]
    DebugMode = 1; //Enable many server/hc debugging logs. Default: 0 (1 = Enabled / 0 = Disabled)
    HeadlessSupport = 1; //Enable/Disable Headless client support. Default: 1 (1 = Enabled / 0 = Disabled)
    /*
    Enabled: When HeadlessSupport is set to 1 (enabled), the server will run without fault when no Headless Client is connected. However, it will support the Headless Client if you choose to connect one.
    Disabled: If HeadlessSupport is set to 0 (disabled), the connection of a Headless Client will make no difference. This option will increase server performance a TINY but negligible amount.
    */
};