/*
    File: fn_fetchCrimes.sqf
	Author: Jackson Deamers
	Server: Altislife-france.com

	Description:
	Récupère la liste des joueurs ayant un casier
*/
params [
	["_sendTo", objNull, [objNull]]
];
if (isNull _sendTo) exitWith {};
_sendTo = owner _sendTo; //Retirer si utilisé sur HC

private _units = { if ((side _x) == civilian) then {_units pushBack (getPlayerUID _x)}; } count playableUnits;
if (_units isEqualTo []) exitWith {[[]] remoteExec ["life_fnc_wantedList",_sendTo];};

private _inStatement = "";
{
    if (count _units > 1) then {
    	if (_inStatement isEqualTo "") then {
            _inStatement = "'" + _x + "'";
        } else {
            _inStatement = _inStatement + ", '" + _x + "'";
        };
    } else {
    	_inStatement = _x;
    };
} forEach _units;

_query = format["SELECT wantedID, wantedName FROM wanted WHERE active='1' AND wantedID in (%1)",_inStatement];
_queryResult = [_query,2,true] call DB_fnc_asyncCall;

private _list = [];
{
	_list pushBack (_x);
} forEach _queryResult;

[_list] remoteExec ["life_fnc_wantedList",_sendTo];