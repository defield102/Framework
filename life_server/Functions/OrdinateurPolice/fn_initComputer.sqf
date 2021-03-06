/*
    File: fn_initComputer.sqf
	Author: Jackson Deamers
	Server: Altislife-france.com

	Description:
	Récupère les infos nécessaire au fonctionnement de l'ordinateur
*/
private _timeStamp = diag_tickTime;
diag_log "----------------------------------------------------------------------------------------------------";

private _query = "SELECT type, value FROM computer";
private _queryResult = [_query,2,true] call DB_fnc_asyncCall;

if !(_queryResult isEqualTo []) then {
	{
		_type = (_x select 0);
		_value = (_x select 1);
		switch (_type) do
		{
			case "ShortRadio":
			{
				CopComputer_ShortRadio = _value;
			};

			case "LongRadio":
			{
				CopComputer_LongRadio = _value;
			};

			default {};
		};
		if (isNil "CopComputer_ShortRadio") then { CopComputer_ShortRadio = "357.9";};
		if (isNil "CopComputer_LongRadio") then { CopComputer_LongRadio = "49.5";};
	} forEach _queryResult;
} else {
	_query = "INSERT INTO computer (type, value) VALUES ('ShortRadio', '357.9'), ('LongRadio', '49.5');";
	[_query,1] call DB_fnc_asyncCall;
	CopComputer_ShortRadio = "357.9";
	CopComputer_LongRadio = "49.5";
};
diag_log format["----------------------------------------- Cop Computer Init ----------------------------------------",(diag_tickTime - _timeStamp)];
diag_log "----------------------------------------------------------------------------------------------------";