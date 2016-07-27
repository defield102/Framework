/*
    File: fn_addCrime.sqf
	Author: Jackson Deamers
	Server: Altislife-france.com

	Description:
	Ajoute un crime au casier d'un joueur
*/
params [
	["_uid", "", [""]],
	["_name", "", [""]],
	["_crime", "", [""]]
];

if (_uid isEqualTo "" || _name isEqualTo "" || _crime isEqualTo "") exitWith {};

_query = format["SELECT wantedCrimes, wantedBounty FROM wanted WHERE wantedID='%1'",_uid];
_queryResult = [_query,2,true] call DB_fnc_asyncCall;

if !(_queryResult isEqualTo []) then {
    _pastcrimess = [_queryResult select 0] call DB_fnc_mresToArray;
    if (_pastcrimess isEqualType "") then {_pastcrimess = call compile format["%1", _pastcrimess];};
    _pastCrimes = _pastcrimess;
    _pastCrimes pushBack ([_crime] call DB_fnc_mresString);
    _pastCrimes = [_pastCrimes] call DB_fnc_mresArray;
    _query = format["UPDATE wanted SET wantedCrimes = '%1' WHERE wantedID='%2'",_pastCrimes,_uid];
    [_query,1] call DB_fnc_asyncCall;
} else {
	_crime = [[_crime]] call DB_fnc_mresArray;
	_query = format["INSERT INTO wanted (wantedID, wantedName, wantedCrimes) VALUES('%1', '%2', '%3')",_uid,_name,_crime];
    [_query,1] call DB_fnc_asyncCall;
};