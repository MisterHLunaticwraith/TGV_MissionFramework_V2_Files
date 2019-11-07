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
