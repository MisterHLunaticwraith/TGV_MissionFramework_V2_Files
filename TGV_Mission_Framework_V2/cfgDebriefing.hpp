/////////////////////////////////////////////////////
//           /!\ Ne pas éditer                /!\  //
/////////////////////////////////////////////////////
#include "TGV_macros_def.hpp"
/////////////////////////////////////////////////////
//           /!\ Editer ci dessous            /!\  //
/////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////
// les fins génériques  "TGV_fin_echec" et "TGV_fin_victoire" //
// existent dans l'addon est peuvent aussi être utilisées     //
////////////////////////////////////////////////////////////////

class maFinDeLoser
{
	title = "Echec de la mission";
	subtitle = "Vous avez perdu trop d'hommes.";
	description = "Trop d'hommes sont morts dans la bataille, la  mission est un échec.";
	pictureBackground = APIC(GenPics\deathscreen.jpg);
	picture = APIC(GenPics\tgv.paa);

};

class maFinVictorieuse
{
	title = "Victoire";
	subtitle = "La mission est  réussie";
	description = "Vous avez brillament accompli votre mission, bravo!";
	pictureBackground = APIC(GenPics\victory.jpg);
	picture = APIC(GenPics\tgv.paa);
	
};