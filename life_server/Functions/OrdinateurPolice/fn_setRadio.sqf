/*
    File: fn_setRadio.sqf
	Author: Jackson Deamers
	Server: Altislife-france.com

	Description:
	Actualise la fréquence radio
*/
params [
	["_sendTo", objNull, [objNull]],
	["_frequency", "", [""]],
	["_radioType", 0, [0]]
];
if (isNull _sendTo OR _frequency isEqualTo "") exitWith {};
_sendTo = owner _sendTo;
if !(_radioType in [0,1]) exitWith {};

_query = format["UPDATE computer SET value = '%1' WHERE id='%2'",_frequency,_radioType];
[_query,1] call DB_fnc_asyncCall;

[1,"Fréquence mise à jour!"] remoteExecCall ["life_fnc_broadcast",_sendTo];