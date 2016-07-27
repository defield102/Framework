/*
    File: RecherchePersonneOrdinateur.hpp
	Author: Drax
	Server: AustraliaLifeRPG
	
	Description: 
	Interface de recherche de personne de l'Ordinateur de Police
*/
class Life_Cop_RecherchePersonneOrdinateur {
    idd = 20002;
    name= "life_cop_RecherchePersonneOrdinateur";
    movingEnable = false;
    enableSimulation = true;
        
    class controlsBackground 
	{
        class OrdinateurPoliceFond: Life_RscPicture
		{
			idc = 9090902;
		    text = "textures\OrdinateurPolice\Menu-RecherchePersonne.paa";
			x = 0;
			y = -0.12;
			w = 1;
			h = 1.28;
		};
    };
};