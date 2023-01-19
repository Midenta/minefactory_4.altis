class Cation_Alarm {
    tag = "cat_alarm";
    class functions {
        file = "Scripts\cation\alarm";        
        // Client        
        class houseAlarm {};
        class houseAlarmBuy {};
        class houseAlarmMarker {};
        class houseAlarmOff {};
        class initSecurity { postInit = 1; };
        // Server
        class addSecurity {};
        class loadSecurity {};    
        // HC_husky
        class addSecurityHC {};
        class loadSecurityHC {};        
    };
};