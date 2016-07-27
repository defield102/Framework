/*
    File: ConnexionOrdinateur.hpp
	Author: Drax
	Server: AustraliaLifeRPG
	
	Description: 
	Interface de connexion à l'Ordinateur de Police
*/
class Life_Cop_ConnexionOrdinateur 
{
    idd = 20000;
    name= "life_cop_ConnexionOrdinateur";
    movingEnable = false;
    enableSimulation = true;
        
    class controlsBackground 
	{
        class OrdinateurPoliceFond: Life_RscPicture
		{
			idc = 9090909;
		    text = "textures\OrdinateurPolice\Menu-Connexion.paa";
			x = 0;
			y = -0.12;
			w = 1;
			h = 1.28;
		};
    };

	class controls 
	{
		class ConnexionPolice: Life_RscButtonMenu {
            animTextureNormal = "#(argb,8,8,3)color(1,1,1,0)";
            animTextureDisabled = "#(argb,8,8,3)color(1,1,1,0)";
			animTextureOver = "#(argb,8,8,3)color(1,1,1,0)";
			animTextureFocused = "#(argb,8,8,3)color(1,1,1,0)";
			animTexturePressed = "#(argb,8,8,3)color(1,1,1,0)";
			animTextureDefault = "#(argb,8,8,3)color(1,1,1,0)";
			colorBackground[] = {0, 0, 0, 0};
			colorBackground2[] = {1, 1, 1, 0};
			color[] = {1, 1, 1, 0};
			color2[] = {1, 1, 1, 0};
			colorText[] = {1, 1, 1, 0};
			colorDisabled[] = {1, 1, 1, 0};
			idc = 9090900;
			text = "";
			onButtonClick = "createDialog ""Life_Cop_AccueilOrdinateur"";";
			x = 0.1;
            y = 0.800;
            w = (32 / 40);
            h = (1.8 / 25);
        };
    };
};