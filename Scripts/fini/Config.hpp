// fini notifications class
class FiniNotifications {

    // types used for notifications
    class Types {
        class Notification {
            ProgressColor[] = { 0.016, 0.184,0.239, 1 };
            BackgroundColor[] = { 0.043, 0.325, 0.42, 1 };
            Time = 4;
        };

        class Success {
            ProgressColor[] = { 0.016, 0.569, 0.227, 1 };
            BackgroundColor[] = { 0.035, 0.71, 0.294, 1 };
            Time = 4;
        };

        class Warning {
            ProgressColor[] = { 0.878, 0.573, 0.157, 1 };
            BackgroundColor[] = { 1, 0.682, 0.259, 1 };
            Time = 4;
        };

        class Error {
            ProgressColor[] = { 0.639, 0.031, 0.125, 1 };
            BackgroundColor[] = { 0.82, 0.067, 0.18, 1 };
            Time = 4;
        };
    };
};