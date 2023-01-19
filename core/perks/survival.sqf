/* 
    Author: Demellion Dismal
    Description:
        Perks system survival VM. Scheduled environment.
        A replacement for old and rudimentary surival thread
*/
waitUntil {!isNil {DT_fnc_perkData}};
private _thirstVar = getText (missionConfigFile >> "perks_config" >> "thirstVariable");
private _thirstVarCompiled = compile _thirstVar;
private _hungerVar = getText (missionConfigFile >> "perks_config" >> "hungerVariable");
private _hungerVarCompiled = compile _hungerVar;
private _foodTimestamp = diag_tickTime;
private _waterTimestamp = diag_tickTime;
private _travelDistance = 0;
private _lastPos = [visiblePosition player select 0,visiblePosition player select 1,0];
private _waterTimeRange = 600;
private _foodTimeRange = 850;
private _distanceRange = 130;
private _maxWeightConfig = getNumber (missionConfigFile >> "husky_Settings" >> "total_maxWeight");
private _lastThristValue = call _thirstVarCompiled;
private _lastHungerValue = call _hungerVarCompiled;

private _DT_fnc_waterFood = {
    params ['_mode',['_saveStamp',true]];
    switch (_mode) do {
        case 'food': {
            call compile format['%1 = %1 - 1',_hungerVar];
            if ((call compile _hungerVar) < 1) then {
                player setDamage 1;
                hint localize "STR_NOTF_EatMSG_Death";
            };
            if (_saveStamp) then {_foodTimestamp = diag_tickTime};
        };        
        case 'water': {
            call compile format['%1 = %1 - 1',_thirstVar];
            if ((call compile _thirstVar) < 1) then {
                player setDamage 1;
                hint localize "STR_NOTF_EatMSG_Death";
            };
            if (_saveStamp) then {_waterTimestamp = diag_tickTime};
        };
    };
    call husky_fnc_hudUpdate;
};

while {true} do {
    // Thrirst/Hunger handling 
    private _anabolismFood = ['metab_ana_food'] call DT_fnc_perkData;
    private _anabolismWater = ['metab_ana_water'] call DT_fnc_perkData;
    private _waterDelta = _waterTimeRange + (_waterTimeRange * _anabolismWater);
    private _foodDelta = _foodTimeRange + (_foodTimeRange * _anabolismFood);
    if ((diag_tickTime - _waterTimestamp) > _waterDelta) then {['water'] call _DT_fnc_waterFood};
    if ((diag_tickTime - _foodTimestamp) > _foodDelta) then {['food'] call _DT_fnc_waterFood};

    // Adjustment of carrying capacity based on backpack changes 
    private _perkWeight = ['train_weight'] call DT_fnc_perkData; 
    if (backpack player isEqualTo "") then {
        husky_maxWeight =  _maxWeightConfig + _perkWeight;
    } else {
        private _backpackLoad = round((getNumber(configFile >> "CfgVehicles" >> backpack player >> "maximumLoad"))/4);
        husky_maxWeight = _maxWeightConfig + _perkWeight + _backpackLoad;
    };

    // Check if the weight has changed and the player is carrying to much 
    if (husky_carryWeight > husky_maxWeight && {!isForcedWalk player}) then {
        player forceWalk true;
        if ((getNumber (missionConfigFile >> "husky_Settings" >> "enable_fatigue")) isEqualTo 1) then {player setFatigue 1;};
        hint localize "STR_NOTF_MaxWeight";
    } else {
        if (isForcedWalk player) then {
            player forceWalk false;
        };
    };

    // Traveling distance increasing hunger/thirst with proper calculations using only 2D space 
    if ((speed player > 0) AND {isNull (objectParent player)} AND {alive player}) then {
        private _newPosition = [visiblePosition player select 0,visiblePosition player select 1,0];
        _travelDistance = _travelDistance + (_newPosition distance _lastPos);
        _lastPos = _newPosition;
        if (_travelDistance >= _distanceRange) then {
            _travelDistance = 0;
            ['water',false] call _DT_fnc_waterFood;
            ['food',false] call _DT_fnc_waterFood;
        };
    };
    // Catabolism effects 
    if ((call _hungerVarCompiled) > _lastHungerValue) then {
        private _diff = (call _hungerVarCompiled) - _lastHungerValue;
        private _toAdd = _diff * (['metab_cat_food'] call DT_fnc_perkData);
        call compile format['%1 = (%1 + %2) min 100',_hungerVar,round _toAdd];
        _lastHungerValue = call _hungerVarCompiled;
    };
    if ((call _thirstVarCompiled) > _lastThristValue) then {
        private _diff = (call _thirstVarCompiled) - _lastThristValue;
        private _toAdd = _diff * (['metab_cat_water'] call DT_fnc_perkData);
        call compile format['%1 = (%1 + %2) min 100',_thirstVar,round _toAdd];
        _lastThristValue = call _thirstVarCompiled;
    };

    // Ventilation 
    if (getFatigue player > 0) then {
        private _perkStamina = ['metab_stamina'] call DT_fnc_perkData;
        player setFatigue (((getFatigue player) - _perkStamina) max 0);
    };
    // Movement speed 
    private _perkMovSpeed = ['train_move'] call DT_fnc_perkData;
    player setAnimSpeedCoef (1 + _perkMovSpeed);
    uiSleep 1;
};
