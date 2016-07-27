#include "..\..\..\script_macros.hpp"
/*
    File: fn_getCrimeType.sqf
	Author: Jackson Deamers
	Server: Altislife-france.com

	Description:
	Récupère soit l'ID, le nom ou l'amende associé à un crime
*/
params [
	["_value", "", [""]],
	["_mode", 0, [0]] //0 = Nom d'affichage, 1 = Montant amende, 2 = ID, 3 = Tout
];
private _return = "";
private _crimes = LIFE_SETTINGS(getArray, "crimes");
private _crime = [_value, _crimes] call TON_fnc_index;
if (isNil _crime) exitWith {};

if (_mode >= 3) then {
	_return = _crime;
} else {
	_return = (_crime select _mode);
};

_return;
