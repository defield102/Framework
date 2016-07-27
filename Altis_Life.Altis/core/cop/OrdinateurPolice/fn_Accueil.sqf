/*
    File: fn_Accueil.sqf
	Author: Drax
	Server: AustraliaLifeRPG
	
	Description: 
	Interface d'accueil à l'Ordinateur de Police
*/
createDialog "life_cop_ConnexionOrdinateur";
waitUntil { !isNull(findDisplay 20000) };
_display = findDisplay 20000;