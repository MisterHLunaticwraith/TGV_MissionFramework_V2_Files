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
> Ce réglage est activé par défaut, le Safe Start est lancé automatiquement au début de la mission. Voir plus loin pour les explications sur le safe start.
###### Montrer les tags des joueurs pendant le safe start
> Activé par défaut. Pendant le safe start les tags des joueurs seront montrés, il ne s'agit pas des tags ACE3 mais de tags customs, plus gros et bien visibles. Voir la description de la fonction pour plus d'informations.
###### Jouer la vidéo TGV au départ de la mission
> Activé par défaut,la vidéo TGV sera jouée au lancement de la mission. Utile de le désactiver quand on édite pour ne pas se la retaper 3000 fois mais pensez à la réactiver avant d'exporter, c'est toujours important de se faire de l'autopromotion et puis les autres n'ont pas ça chez eux, autant marquer notre différence...
###### Utiliser la version non skippable de la vidéo
> Désactivé par défaut, si activé on ne peut pas passer la vidéo en début de misison. Pour de la pub vraiment aggressive! ;-)
###### Enclencher la sécurité des armes par défaut
> Activé par défaut. Enclenche la sécurité des armes des joueurs au début de la mission, c'est mieux pour le Role Play, et la sécurité.
###### Auto equiper les bouchons d'oreille
> Activé par défaut. Les bouchons d'oreille sont puis equipés au départ de la mission. (sinon il y en a toujours un pour oublier)
###### Utiliser un briefing par faction
> Désactivé par défaut. Si activé, les joueurs auront un briefing par différent selon la faction (et PAS LE CAMP) de leur unité jouable. Utile si vous voulez avoir des briefings différents selon les groupes, nécessite la création de nouveaux fichiers, voir explications détaillées plus loin.
###### Note par défaut du notepad
>Texte libre. Ce texte sera celui noté au départ de la mission dans le notepad, peut être n'importe quoi! Voir plus loin pour les explications sur le notepad

## Configurer le respawn de votre mission & le respawn bunker
###### */!\ Attention: Aucun des réglages de respawn n'est appliqué si le mode de respawn choisit n'est pas "Respawn TGV"*
#### Choisir le respawn TGV
1. Aller dans les attributs de mission, cliquer sur multijoueur
<p align="center">
    <img src="https://github.com/MisterHLunaticwraith/TGV_MissionFramework_V2_Files/blob/master/attributs_1.jpg" width="480">
</p>
2. Choisir respawn sur position personnaliée dans le menu déroulant.
<p align="center">
    <img src="https://github.com/MisterHLunaticwraith/TGV_MissionFramework_V2_Files/blob/master/attributs_2.jpg" width="480">
</p>
3. Cocher respawn TGV dans la liste en dessous (mettre aussi un délais de 10 secondes,c'est plus classe)
<p align="center">
    <img src="https://github.com/MisterHLunaticwraith/TGV_MissionFramework_V2_Files/blob/master/attributs_3.jpg" width="480">
</p>

###### */!\ Attention: Aucun des réglages de respawn n'est appliqué qu'en mode multijoueur dans la preview de mission de l'éditeur, si jous testez en singleplayer vous serez respawné dèes le début de la mission*

#### Les réglages du respawn 

* Ces réglages sont disponibles avec les autres réglages du mode
<p align="center">
    <img src="https://github.com/MisterHLunaticwraith/TGV_MissionFramework_V2_Files/blob/master/reglagesAddon_2.jpg" width="480">
</p>

##### Explication des réglages
##### *Dans le cadre d'une mission milsim PVE habituelle, il n'est pas nécessaire de changer ces réglages par défaut*

###### Respawn sur position de départ
>Désactivé par défaut. Si ce réglage est activé au respawn, les joueurs sont renvoyés à la position de leur unité au lancement de la mission.
###### Respawn sur point respawn TGV. 
>Réglage par défaut, les joueurs respawnent sur une tombe objet TGV (préplacée dans le respawn bunker voir plus loin pour plus d'explications).
###### Respawn avec le paquetage de départ
>Désactivé par défaut. Par défaut un joueur respawne avec son équipement tel qu'il était au moment de sa mort, si ce réglage est activé le joueur respawnera avec son équipement de début de mission. 
###### Respans différents par camps
> Désactivé par défaut. Si activé les joueurs respawnent sur l'objet de respawn TGV correspondant à leur camp, utilisé seulement dans le cas d'une mission PVP avec respawn autorisé.
###### Ouvrir le mode spectateur au respawn
> Activé par défaut. Au respawn le joueur est passé automatiquement en mode spectateur (mais peut quitter en appuyant sur ECHAP)

## Fonctions utiles :
call TGV_fnc_introCredits
call TGV_fnc_getFactions
call TGV_fnc_stopSafeStart
call TGV_fnc_startSafeStart
call TGV_fnc_EndCredits;
call TGV_fnc_startGenericEndCutscene;