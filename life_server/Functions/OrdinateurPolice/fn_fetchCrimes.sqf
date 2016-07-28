/*
    File: fn_fetchCrimes.sqf
	Author: Jackson Deamers
	Server: Altislife-france.com

	Description:
	Récupère la liste des crimes d'un joueur
*/
params [
	["_sendTo", objNull, [objNull]],
	["_criminal", [], [[]]]
];
if (isNull _unit OR _criminal isEqualTo []) exitWith {};
_sendTo = owner _sendTo;

_query = format["SELECT wantedCrimes FROM wanted WHERE wantedID='%1'",_criminal select 0];
_queryResult = [_query,2] call DB_fnc_asyncCall;

private _crimes = [_queryResult select 0] call DB_fnc_mresToArray;
if (_crimes isEqualType "") then {_crimes = call compile format["%1", _crimes];};

[_crimes] remoteExec ["life_fnc_updateCrimeList",_sendTo];