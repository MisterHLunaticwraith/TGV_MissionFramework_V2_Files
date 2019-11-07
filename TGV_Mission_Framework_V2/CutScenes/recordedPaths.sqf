/////////////////////////////////////////////////////
//           /!\ Ne pas éditer                /!\  //
/////////////////////////////////////////////////////
#include "macros_path.hpp"
/////////////////////////////////////////////////////
//           /!\ Editer ci dessous            /!\  //
/////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// Ce fichier ne doit pas être appelé, il est préchargé à l'init et les variables sont créées
// /!\ ne fonctionne correctement que pour les véhicules, a été pensé par Bohemia pour les véhicules aériens
// pour enregistrr le chemin:
//[unit1,10,20,true,10] spawn BIS_fnc_UnitCapture; //[nom de l'unité , temps d'enregistrement en secondes,FPS de l'enregistrement,enregistrer les tirs, délais avant enregistrement] dans la console
// sur echap à la fin de la capture (retour console puis retour jeu)ou mourir, puis F1 pour copier l'enregistrement du mouvement et ensuite F2  pour copier l'enregistrement des tirs dans le presse papier
/*
	[unit1, Path1] spawn BIS_fnc_UnitPlay;//pour jouer le mouvement, effets locaux, doit être appelé sur toutes les machines, sans quoi les résultats sont étranges
	[unit1,FirePath1] spawn BIS_fnc_UnitPlayFiring; //pour jouer les tirs, très primaire n'enregistre que le délais et l'arme des tirs pas l'angle etc. l'unité tirera en face d'elle, probablement à appeler seulement là ou l'unité est locale
*/
//Path1=; //===> Coller le fichier obtenu  avec F1 entre le = et le ; (possibilité de créer plusieurs fichiers (path1, 2 etc)
//FirePath1 =; //===> Coller le fichier obtenu  avec F2 entre le = et le ; (possibilité de créer plusieurs fichiers (FirePath1, 2 etc)
///////////////////////////////////////////////////////////////////////////////
