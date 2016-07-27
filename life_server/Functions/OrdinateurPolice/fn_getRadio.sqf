/*
    File: fn_getRadio.sqf
	Author: Jackson Deamers
	Server: Altislife-france.com

	Description:
	Récupère les fréquences radio
*/
params [
	["_sendTo",objNull, [objNull]]
];
if (isNull _sendTo) exitWith {};
if (side _sendTo != west) exitWith {};
_sendTo = owner _sendTo;
[CopComputer_ShortRadio, CopComputer_LongRadio] remoteExec ["life_fnc_updateRadio",_sendTo];