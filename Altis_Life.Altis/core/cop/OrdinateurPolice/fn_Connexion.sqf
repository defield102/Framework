/*
    File: fn_Connexion.sqf
	Author: Drax
	Server: AustraliaLifeRPG
*/
createDialog "life_cop_ConnexionOrdinateur";
waitUntil { !isNull(findDisplay 20000) };
_display = findDisplay 20000;