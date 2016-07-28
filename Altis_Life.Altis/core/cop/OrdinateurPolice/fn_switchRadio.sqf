/*
    File: fn_switchRadio.sqf
	Author: Jackson Deamers
	Server: Altislife-france.com

	Description:
	Change la fréquence radio
*/
params [
	["_mode", 0, [0]]
];

switch (_mode) do
{
	case 1:
	{
		if (isNil "CopComputer_LongRadio") exitWith {};
		[(call TFAR_fnc_activeLrRadio), 1, CopComputer_LongRadio] call TFAR_fnc_SetChannelFrequency;
		hint "La fréquence de la radio longue portée à été mise à jour. (Canal 1)";
	};

	default
	{
		if (isNil "CopComputer_ShortRadio") exitWith {};
		[(call TFAR_fnc_activeSwRadio), 1, CopComputer_ShortRadio] call TFAR_fnc_SetChannelFrequency;
		hint "La fréquence de la radio courte portée à été mise à jour. (Canal 1)";
	};
};