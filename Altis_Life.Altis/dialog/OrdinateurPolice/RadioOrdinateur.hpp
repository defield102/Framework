/*
    File: RadioOrdinateur.hpp
	Author: Drax
	Server: AustraliaLifeRPG
	
	Description: 
	Interface de radio de l'Ordinateur de Police
*/
class Life_Cop_RadioOrdinateur {
    idd = 20007;
    name= "life_cop_RadioOrdinateur";
    movingEnable = false;
    enableSimulation = true;
        
    class controlsBackground 
	{
        class OrdinateurPoliceFond: Life_RscPicture
		{
			idc = 9090907;
		    text = "textures\OrdinateurPolice\Menu-Radio.paa";
			x = 0;
			y = -0.12;
			w = 1;
			h = 1.28;
		};
    };
};