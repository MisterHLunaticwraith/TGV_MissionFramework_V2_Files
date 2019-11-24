/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// /!\   le code écrit dans ce fichier est exécuté à l'init du client, seulement sur la machine du client      /!\ //
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//-- Ne pas éditer ni modifier
//Inclusion des macros (voir fichier pour guide)
#include "TGV_macros_def.hpp"
//inclusion du briefing
private _useFaction =["TGV_useFactionSpecificBrief"]call cba_settings_fnc_get;
if (_useFaction) then 
{
	private _playerFact =(getText (configFile>>"cfgVehicles">>(typeOf player)>>"faction"));
	private _briefName = "BR_"+_playerFact + ".sqf";
	[]execVM _briefName;
	
	// /!\ actif seulement si l'option utiliser un briefing par faction est cochée dans les réglages
	// call TGV_fnc_getFactions
}
else
{
	#include "briefingSMEPP.sqf"
};
//----Fin de la non édition

//[player,""] call MRH_fnc_forceFaceWear; //décommenter et mettre une classe de facewear pour forcer l'usage d'un facewear particulier ex: "rhs_ess_black"

//["media\img\splashscreen.paa", 15] call MRH_fnc_SplashScreen; // pour avoir une image plein écran en début de mission

/*
//----------Décommenter et editer ce bloc pour ajouter des données à la tablette du joueur dès le début de la mission
private ["_data","_pics"];
_data = []; //nom de classe des données, séparés par des , si plusieurs ex ["maDonne1"] ou ["maDonne1","maDonne2"]
_pics = []; //nom de classe des images, séparés par des , si plusieurs ex ["maPic1"] ou ["maPic1","maPic2"]
	[player,_data]call MRH_fnc_MilsimTools_SoldierTab_attributeData;
	[player,_pics]call MRH_fnc_MilsimTools_SoldierTab_attributePictures;
*/