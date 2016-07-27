/*
    File: AccueilOrdinateur.hpp
	Author: Drax
	Server: AustraliaLifeRPG
	
	Description: 
	Interface d'accueil de l'Ordinateur de Police
*/
class Life_Cop_AccueilOrdinateur {
    idd = 20001;
    name= "life_cop_AccueilOrdinateur";
    movingEnable = false;
    enableSimulation = true;
        
    class controlsBackground 
	{
        class OrdinateurPoliceFond: Life_RscPicture
		{
			idc = 9090901;
		    text = "textures\OrdinateurPolice\Menu-Acceuil.paa";
			x = 0;
			y = -0.12;
			w = 1;
			h = 1.28;
		};
    };
	
	class controls 
	{
		class RecherchePersonne: Life_RscButtonMenu {
            idc = 9090910;
			text = "Rech. Pers.";
			onButtonClick = "createDialog ""Life_Cop_RecherchePersonneOrdinateur"";";
			x = -0.20;
            y = 0.950;
            w = (8 / 40);
            h = (0.5 / 25);
        };
    };
};