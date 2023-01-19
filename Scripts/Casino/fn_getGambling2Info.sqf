/*
	Author : Yasar-S
	Descripton : Kalkuliert beim einem neuen Einsatz den Chancen
	desclaimer : Das nutzen dieses Scriptes ohne diesen Header ist nicht erlaubt
*/

private["_userInput","_getChance","_uid","_chance","_gamblingInput","_inPot","_return"];

_gamblingInput = 0;
_userInput = 0;
_return = [];
_inPot = false;

{
	_gamblingInput = _gamblingInput + (_x select 1);
}forEach (missionNamespace getVariable ["Gambling2_AllDatas",[]]);

_inPot = false;
if(!isNull player) then {
    _uid = getPlayerUID player;
    for "_i" from 0 to count(missionNamespace getVariable ["Gambling2_AllDatas",[]])-1 step 1 do {
        if(((missionNamespace getVariable ["Gambling2_AllDatas",[]]) select _i select 0) isEqualTo _uid) then {
            _userInput = ((missionNamespace getVariable ["Gambling2_AllDatas",[]]) select _i select 1);
            _inPot = true;
        };
    };
    if(!_inPot) exitWith {
        _return pushBack 0;
        _return pushBack 0;
        _return pushBack _gamblingInput;
    };
    
    _chance = (_userInput * 100) / _gamblingInput;
    _return pushBack _chance;
    _return pushBack _userInput;
    _return pushBack _gamblingInput;
};

_return