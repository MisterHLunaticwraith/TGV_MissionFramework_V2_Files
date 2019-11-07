///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Ce fichier contient des macros disponibles dans tous les fichiers qui commencent par #include "TGV_macros_def.hpp" ou "macros_paths.hpp"   //
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#define QUOTE "
//Appel des fonctions

#define FUNC(ARG) call TGV_mission_fnc_##ARG
//-->Appelle une fonction de la mission -->Example: FUNC(nomDeLaFonction) = call TGV_mission_fnc_nomDeLaFonction
#define SFUNC(ARG) spawn TGV_mission_fnc_##ARG
//-->Spawne une fonction, [parametres] obligatoires -->Example: []SFUNC(nomDeLaFonction) = [] spawn TGV_mission_fnc_nomDeLaFonction
#define AFUNC(ARG) call TGV_fnc_##ARG
//-->Appelle une fonction qui se trouve dans l'addon tgv -->Example:  AFUNC(saluteH)= call TGV_fnc_saluteH
#define ASFUNC(ARG) spawn TGV_fnc_##ARG
//-->Spawne une fonction qui se trouve dans l'addon tgv -->Example: [((uiNamespace getVariable "TGV_message_board") displayCtrl 1200)]ASFUNC(TGV_animatedLogo) = [((uiNamespace getVariable "TGV_message_board") displayCtrl 1200)] spawn TGV_fnc_TGV_animatedLogo
#define MTFUNC(ARG1,ARG2) call MRH_fnc_MilsimTools_##ARG1##_##ARG2
//-->Appelle une fonction(arg2) qui se trouve dans un addon (arg1) de MRH MilsimTools -->Example: ["MRH_US_Chatter1",MRH_player] MTFUNC(Core,playSound3d)= ["MRH_US_Chatter1",MRH_player]call MRH_fnc_MilsimTools_Core_playSound3Dlocal;


//Raccourcis de chemins
#define PIC(ARG) QUOTE##Media\Images\##ARG##QUOTE
//-->Raccourci pour le chemin d'une image dans le repetoire de la mission -->Example: PIC(monImage.jpg)  = "Media\Images\monImage.jpg"
#define SOUND(ARG) QUOTE##\Media\Sounds\##ARG##.ogg##QUOTE
//-->Raccourci pour le chemin d'un son qui se trouve dans le repertoire Sounds de la mission -->Example: SOUND(monSon) = "Media\Sounds\monSon.ogg"
#define MUSIC(ARG) QUOTE##\Media\Music\##ARG##.ogg##QUOTE
//-->Raccourci pour le chemin d'un son qui se trouve dans le repertoire Music de la mission -->Example: MUSIC(monSon) = "Media\Music\monSon.ogg"
#define APIC(ARG) QUOTE##\TGV_Assets\paa\##ARG##QUOTE
//-->Raccourci vers une image qui se trouve dans l'addon TGV repertoire paa comme racine -->Example:  = APIC(kilroygraf.paa) = "\TGV_Assets\paa\kilroygraf.paa"
#define MEMBERLOGO(ARG) QUOTE##\TGV_Assets\paa\TGV_insignias\##ARG##.paa"
//--> Raccourci vers les images logos des membres stockées dans le monde -->Example: MEMBERLOGO(MRH); (voir desccription.ext pour les disponibles)
#define SQUADLOGO APIC(GenPics\tgv.paa)
//-->Logo TGV en couleur (chemin de l'image)
#define SQUADLOGOWHITE APIC(TGV_logo_white_ca.paa)
//-->Logo TGV en blanc (chemin de l'image)
#define SMEPP(ARG) QUOTE##\TGV_Assets\paa\SMEPPTitles\##ARG##_ca.paa##QUOTE
//--> Titres du briefing

//Debuggage
#define IS_DEBUG ["MRH_MilsimTools_DebugTools_isDebugMode"] call cba_settings_fnc_get
//-->Renvoie true si le mod degug de milsim tools est activé -->Example: if (IS_DEBUG) then {hint "le mod debug est activé"};
#define TRACE(ARG) [(##ARG##)] call MRH_fnc_MilsimTools_DebugTools_trace
//-->Log des messages avec le systeme de debug de milsim tools, n'accepte que du texte, si formaté, formater AVANT la macro 
/*
//-->Example: 
private _toTrace = format ["Je veux checker la variable %1 et aussi la variable %2",_variable1,_variable2];
TRACE(_toTrace);

ou
TRACE("Ceci est un message de debug");
*/