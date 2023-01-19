private["_trapped_infos","_trap_object","_speed","_limit","_diff"];

_trapped_infos = [_this,0,[],[[]]] call BIS_fnc_param;
_trap_object   = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;
if (isNull _trap_object) exitwith {};

_speed = _trapped_infos select 2;
_limit = _trapped_infos select 3;
_blitzperson =  _trapped_infos select 5;
_diff = round (_speed - _limit);
titleText[format["Du warst %1km/h zu schnell...",_diff],"PLAIN"];
//[[_trap_object,"Speedtrap"],"husky_fnc_say3d",nil,true] spawn husky_fnc_MP;
//[[_trap_object],"husky_fnc_trappedFlash",true,false] spawn husky_fnc_MP;

[_blitzperson,"flashbang",35,1] remoteExec ["husky_fnc_say3D",0];
[_blitzperson] remoteExec ["husky_fnc_trappedFlash",-2];


"dynamicBlur" ppEffectEnable true;
"dynamicBlur" ppEffectAdjust [20];
"dynamicBlur" ppEffectCommit 0.05;
sleep 0.05;
"dynamicBlur" ppEffectAdjust [0];
"dynamicBlur" ppEffectCommit 0.05;
