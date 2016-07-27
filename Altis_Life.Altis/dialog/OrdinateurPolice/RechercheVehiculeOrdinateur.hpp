/*
    File: RechercheVehiculeOrdinateur.hpp
	Author: Drax
	Server: AustraliaLifeRPG
	
	Description: 
	Interface de recherche de véhicules de l'Ordinateur de Police
*/
class Life_Cop_RechercheVehiculeOrdinateur {
    idd = 20003;
    name= "life_cop_RechercheVehiculeOrdinateur";
    movingEnable = false;
    enableSimulation = true;
        
    class controlsBackground 
	{
        class OrdinateurPoliceFond: Life_RscPicture
		{
			idc = 9090903;
		    text = "textures\OrdinateurPolice\Menu-RechercheVehicule.paa";
			x = 0;
			y = -0.12;
			w = 1;
			h = 1.28;
		};
    };
};