<p align="center">
    <img src="https://github.com/MisterHLunaticwraith/TGV_MissionFramework_V2_Files/blob/master/frameworkPOWERED.png" width="480">
</p>

<p align="center">
    <sup><strong>Requiert les mods  <a href="https://steamcommunity.com/sharedfiles/filedetails/?id=1370117232">TGV_Custom Assets</a>et<a href="https://steamcommunity.com/sharedfiles/filedetails/?id=1196049538">MRH MilsimTools</a>.<br/>
    Retrouvez nous :<a href="https://twitter.com/TGVArma3Milsim">Twitter</a> | <a href="http://tgv.ovh/">Web</a> | <a href="https://discord.gg/BRNyUSk">Discord</a> | <a href="https://github.com/MisterHLunaticwraith/TGV_Assets">Git hub de TGV Assets</a></strong></sup>
</p>

# Framework de mission TGV v2.0.0
* par : **[TGV] Mr H.**

## Ce framework requiert l'addon TGV_Assets
* Un framework pensé pour réduire la taille des fichiers de mission et faciliter la création de mission en automatisant certains réglages.

## Prérequis :
* Ce framework est conçu pour fonctionner conjointement avec l'addon TGV_Assets et requiert ce dernier dans sa version 1.0.9 ou supérieure, ainsi que MRH Milsim Tools.
## Utilisation:
* Récupérer localement le contenu de ce repository github, à la,première utilisation placer la composition qui se trouve dans le répertoire CompositionRespawnBunker dans vos compositions perso:
>Pour que le respawn bunker apparaisse dans vos compositions, placez le repertoire TGV_RespawnBunker_v2 dans le dossier "compositions" à la racine de votre répertoire des missions de l'éditeur.
Typiquement "Mes documents-- Arma 3 -Other Profiles(ou juste Arma 3 si vous n'avez jamais utilisé de profil autre que celui par défaut)--NomDeProfile --compositions"

* Pour chaque nouvelle mission : glisser le contenu du répertoire TGV_MissionFramework_V2 dans celui de votre mission, lancer une fois le répertoire de la mission pour que les réglages cba s'appliquent.
## Modification des fichiers :
* Il est conseillé de ne modifier les fichiers préparés qu'en ADDITION,et de ne pas éditer les parties préréglées.
* Tout ce qui commence par ```#include``` est particulièrement sensible, ces lignes ne doivent pas être modifiées et les fichiers vers lesquels elles pointent ne doivent pas être supprimés sous peine de crash d'arma.
* Le description.ext doit être édité dans la partie "class missionInfo" avec les infos qui correspondent à la mission. (explications dans le fichier).
<p align="center">
    <img src="https://github.com/MisterHLunaticwraith/TGV_MissionFramework_V2_Files/blob/master/descriptionext.jpg" width="480">
</p>

## Réglages :

* Les réglages ACE de la team sont automatiquements chargés au premier lancement de la mission, une fois que le framework est placé dans son dossier. C'est aussi le cas pour certains réglages de TGV_Assets et de MRH Milsim Tools. Si un réglage apparaît en grisé dans la configuration des Addons de la mission c'est qu'il est imposé par le fichier cba_settings.sqf du framework, les missions makers avancés et qui savent ce qu'il font on le droit de modifier ces réglages pour les besoins d'une mission, dans les autres cas, ne pas y toucher.

* Les réglages de l'addon qui interagissent avec le framework se trouvent dans les options de réglage des addons dans le sous menu "réglages TGV"

<p align="center">
    <img src="https://github.com/MisterHLunaticwraith/TGV_MissionFramework_V2_Files/blob/master/reglagesAddon_1.jpg" width="480">
</p>

<p align="center">
    <img src="https://github.com/MisterHLunaticwraith/TGV_MissionFramework_V2_Files/blob/master/reglagesAddon_2.jpg" width="480">
</p>

##### Explication des réglages:
###### Activer le safe start en début de mission :
> Ce réglage est activé par défaut
## Fonctions utiles :
call TGV_fnc_introCredits
call TGV_fnc_getFactions
call TGV_fnc_stopSafeStart
call TGV_fnc_startSafeStart
call TGV_fnc_EndCredits;
call TGV_fnc_startGenericEndCutscene;