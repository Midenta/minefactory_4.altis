/*
    File: fn_initPlans.sqf
    Author: B4v4r!4n_Str!k3r (julian.bauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description:
    Initializes crafting plans
    Version: 1.0
*/
params [
	["_plans",[],[]]
];

{missionNamespace setVariable [(_x select 0),(_x select 1)];} forEach _plans; // set mission variable plan owned for each plan