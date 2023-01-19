/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

if (!isServer) exitWith {};

while {true} do
{
	if (daytime >= 19 || daytime < 5) then   // after 7pm and before 5am time multiplier changes
	{
		setTimeMultiplier 10      // adjust this value for slower or faster night cycle ( 24 hours will take 1 hour )
	}
	else
	{
		setTimeMultiplier 5      // adjust this value for slower or faster day cycle  ( 12 hours will take 1 hour )
	};

	uiSleep 30;
};