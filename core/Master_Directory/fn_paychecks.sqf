#include "..\..\script_macros.hpp"
/*

	Thieves

	Universe-Community.de

	Diese Mission ist bearbeitet von dem Development Team von Universe-Community.de 
	Diese Mission darf von keinem anderen genutzt werden außer von Universe-Community.de!

*/

//COP
//Nix
if (FETCH_CONST(husky_coplevel) == 0) then {
	husky_paycheck = husky_paycheck + 0;
};
//Polizeimeisteranwaerter
if (FETCH_CONST(husky_coplevel) == 1) then {
	husky_paycheck = husky_paycheck + 100;
};
//Polizeimeister
if (FETCH_CONST(husky_coplevel) == 2) then {
	husky_paycheck = husky_paycheck + 3000;
};
//Polizeiobermeister
if (FETCH_CONST(husky_coplevel) == 3) then {
	husky_paycheck = husky_paycheck + 4000;
};
//Polizeihauptmeister
if (FETCH_CONST(husky_coplevel) == 4) then {
	husky_paycheck = husky_paycheck + 5000;
};
//Polizeihauptmeister mZ
if (FETCH_CONST(husky_coplevel) == 5) then {
	husky_paycheck = husky_paycheck + 6000;
};
//Polizeikommissarsanw�rter
if (FETCH_CONST(husky_coplevel) == 6) then {
	husky_paycheck = husky_paycheck + 7000;
};
//Polizeikommissar
if (FETCH_CONST(husky_coplevel) == 7) then {
	husky_paycheck = husky_paycheck + 8000;
};
//Polizeioberkommissar
if (FETCH_CONST(husky_coplevel) == 8) then {
	husky_paycheck = husky_paycheck + 9000;
};
//Polizeihauptkommissar
if (FETCH_CONST(husky_coplevel) == 9) then {
	husky_paycheck = husky_paycheck + 10000;
};
//Polizeihauptkommissar A12
if (FETCH_CONST(husky_coplevel) == 10) then {
	husky_paycheck = husky_paycheck + 11000;
};
//Polizeihauptkommissar A12
if (FETCH_CONST(husky_coplevel) == 11) then {
	husky_paycheck = husky_paycheck + 11000;
};
//Polizeiratsanwärter
if (FETCH_CONST(husky_coplevel) == 12) then {
	husky_paycheck = husky_paycheck + 11000;
};
//Polizeirat
if (FETCH_CONST(husky_coplevel) == 13) then {
	husky_paycheck = husky_paycheck + 12000;
};
//Polizeioberrat
if (FETCH_CONST(husky_coplevel) == 14) then {
	husky_paycheck = husky_paycheck + 13000;
};
//Polizeidirektor
if (FETCH_CONST(husky_coplevel) == 15) then {
	husky_paycheck = husky_paycheck + 200000;
};
//Leitender Polizeidirektor
if (FETCH_CONST(husky_coplevel) == 16) then {
	husky_paycheck = husky_paycheck + 15000;
};
//Stv. Polizeipräsident
if (FETCH_CONST(husky_coplevel) == 17) then {
	husky_paycheck = husky_paycheck + 16000;
};
//Polizeipräsident
if (FETCH_CONST(husky_coplevel) == 18) then {
	husky_paycheck = husky_paycheck + 16000;
};
//Admin
if (FETCH_CONST(husky_coplevel) == 19) then {
	husky_paycheck = husky_paycheck + 50000;
};
//SEK Lizens
if (license_cop_copsek) then {
	husky_paycheck = husky_paycheck + 3800;
};
//Ausbilder Lizens
if (license_cop_copausbilder) then {
	husky_paycheck = husky_paycheck + 5000;
};


//MEDIC
//Nix
if (FETCH_CONST(husky_mediclevel) == 0) then {
	husky_paycheck = husky_paycheck + 0;
};
//Praktikant
if (FETCH_CONST(husky_mediclevel) == 1) then {
	husky_paycheck = husky_paycheck + 100;
};
//Feuerwehrmannanw�rter
if (FETCH_CONST(husky_mediclevel) == 2) then {
	husky_paycheck = husky_paycheck + 1500;
};
//Feuerwehrmann
if (FETCH_CONST(husky_mediclevel) == 3) then {
	husky_paycheck = husky_paycheck + 2000;
};
//Oberfeuerwehrmann
if (FETCH_CONST(husky_mediclevel) == 4) then {
	husky_paycheck = husky_paycheck + 2500;
};
//Hauptfeuerwehrmann
if (FETCH_CONST(husky_mediclevel) == 5) then {
	husky_paycheck = husky_paycheck + 3000;
};
//Löschmeister
if (FETCH_CONST(husky_mediclevel) == 6) then {
	husky_paycheck = husky_paycheck + 3500;
};
//Oberlöschmeister
if (FETCH_CONST(husky_mediclevel) == 7) then {
	husky_paycheck = husky_paycheck + 4000;
};
//Hauptlöschmeister
if (FETCH_CONST(husky_mediclevel) == 8) then {
	husky_paycheck = husky_paycheck + 4500;
};
//Brandmeister
if (FETCH_CONST(husky_mediclevel) == 9) then {
	husky_paycheck = husky_paycheck + 5000;
};
//Oberbrandmeister
if (FETCH_CONST(husky_mediclevel) == 10) then {
	husky_paycheck = husky_paycheck + 5500;
};
//Hauptbrandmeister
if (FETCH_CONST(husky_mediclevel) == 11) then {
	husky_paycheck = husky_paycheck + 6000;
};
//Brandrat 
if (FETCH_CONST(husky_mediclevel) == 12) then {
	husky_paycheck = husky_paycheck + 7000;
};
//Feuerwehr Ausbilder
if (FETCH_CONST(husky_mediclevel) == 13) then {
	husky_paycheck = husky_paycheck + 20000;
};
//CO.Branddirektor
if (FETCH_CONST(husky_mediclevel) == 14) then {
	husky_paycheck = husky_paycheck + 25000;
};
//Branddirektor
if (FETCH_CONST(husky_mediclevel) == 15) then {
	husky_paycheck = husky_paycheck + 25000;
};
//Admin
if (FETCH_CONST(husky_mediclevel) == 16) then {
	husky_paycheck = husky_paycheck + 50000;
};

//CIVS
if (FETCH_CONST(husky_donorlevel) == 1) then {
	husky_paycheck = husky_paycheck * 1.5;
};
if (FETCH_CONST(husky_donorlevel) == 2) then {
	husky_paycheck = husky_paycheck *2 ;
};
if (FETCH_CONST(husky_donorlevel) == 3) then {
	husky_paycheck = husky_paycheck * 3;
};
if (FETCH_CONST(husky_donorlevel) == 4) then {
	husky_paycheck = husky_paycheck * 4;
};
if (FETCH_CONST(husky_donorlevel) == 5) then {
	husky_paycheck = husky_paycheck * 5;
};
if (license_civ_th111) then {
	husky_paycheck = husky_paycheck + 15000;
};
if (license_civ_soraya) then {
	husky_paycheck = husky_paycheck + 500000;
};