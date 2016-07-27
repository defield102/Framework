/*
    File: ContacterBanqueOrdinateur.hpp
	Author: Drax
	Server: AustraliaLifeRPG
	
	Description: 
	Interface de contacter la banque de l'Ordinateur de Police
*/
class Life_Cop_ContacterBanqueOrdinateur {
    idd = 20005;
    name= "life_cop_ContacterBanqueOrdinateur";
    movingEnable = false;
    enableSimulation = true;
        
    class controlsBackground 
	{
        class OrdinateurPoliceFond: Life_RscPicture
		{
			idc = 9090905;
		    text = "textures\OrdinateurPolice\Menu-ContacterBanque.paa";
			x = 0;
			y = -0.12;
			w = 1;
			h = 1.28;
		};
    };
};