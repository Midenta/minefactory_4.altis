/*
 author: Risk
 description: Fragt den Namen des Spielers ab ob er _steamName auch in seinem Namen hat.
 returns: true/false
 
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
//true/false Funktion um Name abzufragen
private _steamNameGet = profileNameSteam find "Minefactory.eu";	//Minefactory.eu || "UC-ArmA.de"
!(_steamNameGet isEqualTo -1)