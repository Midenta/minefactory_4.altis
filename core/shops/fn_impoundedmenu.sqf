/*
 File: fn_impoundedmenu.sqf
 Author: Bryan "Tonic" Boardwine
 Description:
 Lists impounded vehicles.
 DUE TO BE REWROTE IN NEW SYSTEM
*/
private ["_display","_cars","_name","_pic","_color","_text","_price"];
if (!dialog) then
{
 if (!(createDialog "husky_impound_menu")) exitWith {};
 husky_impound_yard = _this select 3;
};
disableSerialization;
_display = findDisplay 28000;
if (isNull _display) exitWith {};
_cars = _display displayCtrl 28010;
lbClear _cars;
for "_i" from 0 to (count husky_vehicles)-1 do
{
 _veh = husky_vehicles select _i;
//if (_veh distance impound_obj < 50) then
//{
 //_price = [_veh] call husky_fnc_impoundPrice;
 _price = 10000;
 switch (true) do
 {
 case (_veh isKindOf "Car") : {_price = _price + 100;};
 case (_veh isKindOf "Tank") : {_price = _price + 650;};
 case (_veh isKindOf "Air") : {_price = _price + 650;};
 case (_veh isKindOf "Ship") : {_price = _price + 50;};
 };
 if (_price > c126) then
 {
 _price = _price + 200;
 };
 _color = [(typeOf _veh),(_veh getVariable "husky_VEH_color")] call husky_fnc_vehicleColorStr;
 _text = format ["(%1)",_color];
 if (_text == "()") then
 {
 _text = "";
 };
 _name = getText(configFile >> "CfgVehicles" >> (typeOf _veh) >> "displayName");
 _pic = getText(configFile >> "CfgVehicles" >> (typeOf _veh) >> "picture");
 _cars lbAdd format ["%1 %2 - Kosten: %3 �",_name,_text,[_price] call husky_fnc_numberText];
 _cars lbSetPicture [(lbSize _cars)-1,_pic];
 _cars lbSetData [(lbSize _cars)-1,str(_i)];
 _cars lbSetValue [(lbSize _cars)-1,_price];
// };
};