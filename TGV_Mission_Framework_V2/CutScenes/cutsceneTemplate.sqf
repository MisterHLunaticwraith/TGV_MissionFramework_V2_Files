/////////////////////////////////////////////////////
//           /!\ Ne pas éditer                /!\  //
/////////////////////////////////////////////////////
#include "macros_path.hpp"
/////////////////////////////////////////////////////
//           /!\ Editer ci dessous            /!\  //
/////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// Ce fichier doit être appelé avec un execVM, sur toutes les machines qui doivent voir la cutscene
// ex: execVM "CutScenes\cutsceneTemplate.sqf"
// vous pouvezy ajouter du son et des effets textes
///////////////////////////////////////////////////////////////////////////////

/*
	priseN =[
		cam, ///<objet> Camera de depart
		cam, //<objet> Camera d'arrivee identique à au dessus si pas de mouvment
		target, //<objet> cible
		10, //durée du plan en secondes
		1, //zoom de départ  valeurs entre 0.01 et 2,
		0.1, //zoome d'arrivée valeurs entre 0.01 et 2, laisser identique en cas de non changement de cam
		false, //attachée à la cible true ou false attaché à l'objet?? (cam1et2 doivent être identiques)
		[0,0,0], //position relative à l'objet (utilisée si attachée)
		"nightvision",//screen_effect "none", "nightvision", "thermal", "blackwhite", "grain", "blur", "wet","chromatic","invert"
		"blur",//transition_effect "none", "blur"
		2,//durée transition_duration en secondes
		false// last_shot true pour la dernière scène false pour les autres
	] spawn TGV_fnc_aliasCutScene;
waitUntil {scriptDone priseN};
*/
///////////cam1/cam2/ cible /dur/foc1/foc2/attach/ [x/y/ z] /effet/trans/durtrans/isLast
/*
//EXEMPLE DE CUTSCENE
	call TGV_fnc_introCredits;
	_prise1 = [cam1, cam2,target,5, 1, 1 ,false, [0, 0, 0],"invert","blur",2,false] spawn TGV_fnc_aliasCutScene;
	waitUntil {scriptDone _prise1};

	_prise2 = [cam2,cam2,target,5, 1, 1 ,true, [0, -2, 1.7],"grain","blur",2,false] spawn TGV_fnc_aliasCutScene;
	waitUntil {scriptDone _prise2};

	_prise3 = [cam2, cam1,target,5, 1, 1 ,false, [0, 0, 0],"none","none",0,false] spawn TGV_fnc_aliasCutScene;
	waitUntil {scriptDone _prise3};
	_priseFinale = [cam1, cam1,player,5, 1, 1 ,false, [0, 0, 0],"blackwhite","none",0,true] spawn TGV_fnc_aliasCutScene;
*/