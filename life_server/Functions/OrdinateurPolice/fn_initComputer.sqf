/*
    File: fn_initComputer.sqf
	Author: Jackson Deamers
	Server: Altislife-france.com

	Description:
	Récupère les infos nécessaire au fonctionnement de l'ordinateur
*/
private _timeStamp = diag_tickTime;
diag_log "----------------------------------------------------------------------------------------------------";
diag_log "----------------------------------------- Cop Computer Init ----------------------------------------";

private _query = ["SELECT type, value FROM computer";
private _queryResult = [_query,2,true] call DB_fnc_asyncCall;

if (_queryResult isEqualTo []) then {
	{
		private _type = (_x select 0);
		private _value = (_x select 1);
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
	} forEach _queryResult;
};
diag_log "----------------------------------------------------------------------------------------------------";