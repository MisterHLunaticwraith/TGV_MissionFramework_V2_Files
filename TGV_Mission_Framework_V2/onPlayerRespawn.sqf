/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// /!\   le code écrit dans ce fichier est exécuté quand le joueur respawn                                    /!\ //
// /!\ L'addon TGV execute déjà du code à ce moment là,régler les options si vous voulez bypasser entierement     //
//       Attributs >>Multiplayer >> Respawn >> Custom >>Respawn TGV et Options des addons                         //
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//-- Ne pas éditer ni modifier
//Inclusion des macros (voir fichier pour guide)
#include "TGV_macros_def.hpp"
//----Fin de la non édition

params ["_unit", "_corpse"]; //paramètres passés au code