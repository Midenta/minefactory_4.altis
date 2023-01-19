/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/


class CfgNotifications {
      class DeliveryAssigned {
        title = "$STR_DeliveryAssigned_Title";
        iconPicture = "\A3\ui_f\data\map\mapcontrol\taskIcon_ca.paa";
        description = "%1";
        duration = 10;
        priority = 7;
    };

    class DeliveryFailed {
        title = "$STR_DeliveryFailed_Title";
        iconPicture = "\A3\ui_f\data\map\mapcontrol\taskiconfailed_ca.paa";
        description = "%1";
        duration = 7;
        priority = 7;
    };

    class DeliverySucceeded {
        title = "$STR_DeliverySucceeded_Title";
        iconPicture = "\A3\ui_f\data\map\mapcontrol\taskIcondone_ca.paa";
        description = "%1";
        duration = 6;
        priority = 6;
    };

    class TextMessage {
        title = "$STR_TextMessage_Title";
        iconPicture = "icons\ico_messageNew.paa";
        description = "%1";
        duration = 10;
        priority = 6;
    };

    class PoliceDispatch {
        title = "$STR_PoliceDispatch_Title";
        iconPicture = "icons\ico_messagePolice.paa";
        description = "%1";
        duration = 10;
        priority = 6;
    };
	
	class MedicalRequestEmerg {
        title = "$STR_MedicalRequestEmerg_Title";
        iconPicture = "icons\ico_messagePolice.paa";
        description = "%1";
        duration = 5;
        priority = 7;
    };

    class AdminDispatch {
        title = "$STR_AdminDispatch_Title";
        iconPicture = "icons\ico_messageAdmin.paa";
        description = "%1";
        duration = 10;
        priority = 6;
    };

    class AdminMessage {
        title = "$STR_AdminMessage_Title";
        iconPicture = "icons\ico_messageAdmin.paa";
        description = "%1";
        duration = 10;
        priority = 5;
    };
	
	class PolizeiRundfunk {
		title = "Polizei Rundfunk";
		iconPicture = "icons\ico_messagePolice.paa";
		description = "%1";
		duration = 10;
		priority = 5;
	};
	
	class MedicRundfunk {
		title = "Feuerwehr Rundfunk";
		iconPicture = "icons\ico_messagePolice.paa";
		description = "%1";
		duration = 10;
		priority = 5;
	};
};