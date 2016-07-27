/*
    File: ListeRechercheOrdinateur.hpp
	Author: Drax
	Server: AustraliaLifeRPG
	
	Description: 
	Interface de liste des recherchés de l'Ordinateur de Police
*/
class Life_Cop_ListeRechercheOrdinateur {
    idd = 20004;
    name= "life_cop_ListeRechercheOrdinateur";
    movingEnable = false;
    enableSimulation = true;
        
    class controlsBackground 
	{
        class OrdinateurPoliceFond: Life_RscPicture
		{
			idc = 9090904;
		    text = "textures\OrdinateurPolice\Menu-ListeRecherche.paa";
			x = 0;
			y = -0.12;
			w = 1;
			h = 1.28;
		};
    };
};