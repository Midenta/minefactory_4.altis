private["_vehicle","_position","_distance","_consumption"];
/*	

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
	
*/
_position = getPos player;

while{true} do {

    sleep 10;

    _distance = round(player distance _position);
    _position = getPos player;

    _vehicle = (vehicle player);
    if ( isEngineOn _vehicle && _vehicle != player && driver _vehicle == player && _distance > 10 ) then {

        // 1m distance = 0.000017 fuel consumed = 28.5km total Range
        _consumption = 0.03 min _distance * 0.000017;
					//0.05 normal
					//0.10 war langezeit aktiv i.o.
        // For helicopters we reduce the consumption:
        if ( _vehicle isKindOf "Air" ) then {
            _consumption = _consumption * 0.3;
        };
        _vehicle setFuel( (fuel _vehicle) - _consumption );

        //hintSilent format ["Distance: %1\nConsumption: %2\nFuel: %3", _distance, _consumption, fuel _vehicle];
    };
};

/*

private["_vehicleToFuel","_velocityOfVehicle","_fuelConsumption"];

while{true} do {
	_vehicleToFuel = (vehicle player);
 if (isEngineOn _vehicleToFuel && ((driver _vehicleToFuel) == player) && !(_vehicleToFuel isKindOf "Air") && (_vehicleToFuel != player) ) then {
	_velocityOfVehicle = sqrt(((velocity _vehicleToFuel select 0)^2)+((velocity _vehicleToFuel select 1)^2))*3.6;
	_fuelConsumption = _velocityOfVehicle/100000 + 0.0001;
		if (_fuelConsumption > 0.002) then {
			_fuelConsumption = 0.002;
		};
	_vehicleToFuel setFuel ((fuel _vehicleToFuel)-_fuelConsumption);
	//hint format["Benzinverbrauch: %1L/km",_fuelConsumption*10000/2];
		if (fuel _vehicleToFuel < 0.2 && fuel _vehicleToFuel > 0.18) then {
			hint "Your gas tank is empty. Hurry to the next gas station!";
		} else {
			if (fuel _vehicleToFuel < 0.03) then {
				hint "I hope you can run - because you just ran out of gas!";
			};
		};
	};
 sleep 2;
};
*/