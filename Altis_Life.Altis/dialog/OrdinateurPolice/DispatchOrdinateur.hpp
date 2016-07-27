/*
    File: DispatchOrdinateur.hpp
	Author: Drax
	Server: AustraliaLifeRPG
	
	Description: 
	Interface de disptach actuel de l'Ordinateur de Police
*/
class Life_Cop_DispatchOrdinateur {
    idd = 20006;
    name= "life_cop_DispatchOrdinateur";
    movingEnable = false;
    enableSimulation = true;
        
    class controlsBackground 
	{
        class OrdinateurPoliceFond: Life_RscPicture
		{
			idc = 9090906;
		    text = "textures\OrdinateurPolice\Menu-Dispatch.paa";
			x = 0;
			y = -0.12;
			w = 1;
			h = 1.28;
		};
    };
};