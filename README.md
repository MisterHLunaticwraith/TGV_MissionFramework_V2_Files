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
> Activé par défaut. Les bouchons d'oreille sont equipés au départ de la mission. (sinon il y en a toujours un pour oublier)
###### Utiliser un briefing par faction
> Désactivé par défaut. Si activé, les joueurs auront un briefing différent selon la faction (et PAS LE CAMP) de leur unité jouable. Utile si vous voulez avoir des briefings différents selon les groupes, nécessite la création de nouveaux fichiers, voir explications détaillées plus loin.
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

###### */!\ Attention: Aucun des réglages de respawn n'est appliqué en mode singlplayer dans la preview de mission de l'éditeur, si jous testez en singleplayer vous serez respawné dès le début de la mission. Testez en multiplayer!*

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
###### Respawns différents par camps
> Désactivé par défaut. Si activé les joueurs respawnent sur l'objet de respawn TGV correspondant à leur camp, utilisé seulement dans le cas d'une mission PVP avec respawn autorisé.
###### Ouvrir le mode spectateur au respawn
> Activé par défaut. Au respawn le joueur est passé automatiquement en mode spectateur (mais peut quitter en appuyant sur ECHAP)

#### Placer un respawn bunker et les objets de respawn 
* si vous avez suivit les étapes au début de ce guide vous avez dans vos compositions personnalisées (F2 puis <a href="https://community.bistudio.com/wiki/Eden_Editor:_Custom_Composition">îcone circulaire dans l'éditeur</a>) une composition appelée TGV_RespawnBunker_v2
##### Ce respawn bunker est un bâtiment fermé à clef avec une tombe et des ordinateurs, les ordinateurs sont pré-configurés pour accéder au mode spectateur via une action ace
<p align="center">
    <img src="https://github.com/MisterHLunaticwraith/TGV_MissionFramework_V2_Files/blob/master/respawn_1.jpg" width="480">
</p>

##### la tombe est importante: c'est un objet d'une classe particulière qui se déclare à l'initialisation de la mission comme point de respawn par défaut, cela permet de faire respawner les joueurs à l'intérieur d'un bâtiment, ce qui n'est pas possible avec le respawn sur marqueur d'Arma de base. Un seul objet de ce type doit être placé dans la mission. Au respawn le joueur fait face à la tombe et contemple sa fragile mortalité ;-)
*Dans le cadre d'une mission avec des points de respawn particuliers au camp il faut remplacer la tombe par l'objet TGV de respawn qui correspond au camp désiré(un seul objet par type).*

<p align="center">
    <img src="https://github.com/MisterHLunaticwraith/TGV_MissionFramework_V2_Files/blob/master/respawn_2.jpg" width="480">
</p>

## Le briefing en version 2.0 Open space jeune branché parisien.

#### Les parties automatisées:
* L'addon ajoute automatiquement des parties automatisées au briefing
1. Les infos de mission et auteur.
*L'addon va lire les informations du description.ext de votre mission et les ajouter tout seul au briefing*
<p align="center">
    <img src="https://github.com/MisterHLunaticwraith/TGV_MissionFramework_V2_Files/blob/master/briefing_1.jpg" width="480">
</p>

*Note: dans l'éditeur et en preview depuis l'éditeur, il prend le nom du dossier comme nom de mission, mais une fois exporté il prendra bien le nom que vous avez défini dans les attributs de mission dans l'éditeur.*

2. les informations ACRE2
*Ce petit tuto et ses images sont stockés dans l'addon et ajoutés automatiquement*
<p align="center">
    <img src="https://github.com/MisterHLunaticwraith/TGV_MissionFramework_V2_Files/blob/master/briefing_3.jpg" width="480">
</p>

3. Le menu admin
<p align="center">
    <img src="https://github.com/MisterHLunaticwraith/TGV_MissionFramework_V2_Files/blob/master/briefing_4.jpg" width="480">
</p>

*Le menu admin n'est visible que par un admin loggué sur le serveur contrairement à précédement une fois en jeu il n'est pas nécessaire de retourner au lobby pour le voir si vous n'étiez pas admin au départ de la mission. Logguez vous admin, ouvrez la carte et pouf il sera là à vous attendre sagement.*

#### Le template de briefing SMEPP
###### A la racine de la mission vous trouverez un briefingSMEPP.sqf, ce fichier ne DOIT PAS ETRE RENOMME OU SUPPRIME mais il peut être édité. Il ressemble à ça:

<p align="center">
    <img src="https://github.com/MisterHLunaticwraith/TGV_MissionFramework_V2_Files/blob/master/briefing_5.jpg" width="480">
</p> 

Vous pouvez écrire le texte de chaque sous rubrique entre les guillemets (SANS LES SUPPRIMER), ce texte accepte les balises de briefing arma, le fichier contient un rappel de ces balises. Faites donc un beau briefing en respectant le plan habituel Situation Mission Execution Personnels Points Particuliers.

*L'addon retraitera votre texte et créera automatiquement les sous parties du briefing en leur ajoutant au passage une image titre bien stylée, pour la partie situation par exemple ça donne ça:*
 
 <p align="center">
    <img src="https://github.com/MisterHLunaticwraith/TGV_MissionFramework_V2_Files/blob/master/briefing_2.jpg" width="480">
</p>

#### Avoir des briefings personnalisés par faction :
Vous voulez utiliser plusieurs factions (RHS Marines, RHS SOCCOM ET RHS ARMY par exemple) avec un briefing personnalisé pour chaque faction? C'est possible! 
1. Créez votre mission (la faction d'origine de chaque unité jouable placée aura son importance dans ce cas là, ne faites pas n'importe quoi!)et lancez la mission avec les unités jouables occupées par des IA puis éxécutez dans la console ```call TGV_fnc_getFactions``` un hint apparaîtra, copiez le résultat obtenu dans le presse papier ça donnera quelque chose qui ressemble à ça:
>BR_BLU_F.sqf BR_BLU_CTRG_F.sqf BR_BLU_G_F.sqf BR_BLU_GEN_F.sqf
Ce qui correspond aux différents nom de chaque fichier de briefing qui doit être présent à la racine de la mission.
2. Créez donc chacun de ces fichiers ***A LA RACINE DE LA MISSION*** sous peine de bug (voir crash arma si vous utilisez le template ci-dessous).
3. Remplissez les! un template est présent dans ce repository *BR_BLU_F.sqf* attention: il est légèrement diférent du fichier *briefingSMEPP.sqf* car il inclu les macros (voir plus loin).
4. Dans les réglages de l'addon cochez la case *Utiliser un briefing par faction*

## Le notepad
* Sur l'écran de briefing avant le départ de la mission vous remarquerez en haut à droite un petit bouton "Bloc note" cliquer dessus révèle un bloc note (recliquer le cache). On peut y taper du texte, y prendre des notes quoi.
<p align="center">
    <img src="https://github.com/MisterHLunaticwraith/TGV_MissionFramework_V2_Files/blob/master/notepad.jpg" width="480">
</p> 

***Ce bloc note est accessible et toujours modifiable en mission via le menu ACE, les notes qui y sont prises sont sauvegardées et persistantes tant que l'utilisateur n'a pas quitté arma, utile si on fait un faut départ!***
## Le safe start

Par défaut, en début de mission le Safe Start se lance, durant le safe start les tags des joueurs (nom et logo de squad) sont bien visibles au dessus de leurs têtes, un gros message bien voyant est affiché informant que le safe start est actif et un logo armes désactivées apparaît en bas à gauche de l'écran. Pendant le safe start tous les projectiles (balles ET grenades) sont supprimés et ne font aucun dégats. C'est aussi valable pour les IA ce qui est bien pratique pour débugguer vos missions sans se faire blesser par l'ennemi. Au départ de la mission l'admin peut mettre fin au safe start via le menu admin mais vous pouvez aussi y mettre fin en appelant la fonction ```call TGV_fnc_stopSafeStart``` au moment opportun. La fonction a des effets globaux et peut être appelée sur une seule machine, inutile de la remote executer.
 <p align="center">
    <img src="https://github.com/MisterHLunaticwraith/TGV_MissionFramework_V2_Files/blob/master/safeStart.jpg" width="480">
</p>

## La structure du framework
* Le framework contient tous les fichiers nécessaires à l'appel de scripts dans une mission ainsi que des templates pour la déclaration des sons, des musiques,des fins possibles et des données pour  la tablette de milsim tools on y trouve de plus un répertoire et des exemples pour réaliser des cutscene et préenregistrer des chemins pour le BIS_fnc_unitPlay. Chaque fichier contient des explications sur son utilisation ainsi que l'appel des macros et eventuellement des templates. les cfg les plus communéments utilisés dans les mission sont déjà présents. Dans un souci de lisibilité les différentes parties du *description.ext* sont séparées dans différents fichiers, placés dans les répertoires appropriés et inclu par *#include* dans le *description.ext* par exemple le *cfgSounds.hpp* et le *cfgMusic.hpp* sont placés dans le répertoire média et le *cfgFunctions* dans le répertoire MissionFunctions.
**/!\ Un #include qui pointe vers un fichier n'existant pas entraine un crash d'arma, déplacer, supprimer ou modifier ces noms de fichier n'est pas nécessaire et se fera à vos risques et périls...** 
* Le dossier MissionScripts est vide et destiné à acceuillir vos sqf appelés par un *execVM* même si cette méthode est déconseillée pour des raisons d'optimisations.
* Le dossier cutScenes est destiné à accueillir des sqf de cutScenes, il contient un template qui illustre l'utilisation de la fonction *TGV_fnc_aliasCutScene* dans l'absolu il serait préférable de déclarer vos fichiers de cutscene dans des fonctions (voir plus bas) mais les execVM sont moins laborieux à utiliser lorsque l'on crée et teste ses cutscenes. Ce répertoire contient aussi un fichier recordedPaths, destiné à acceuillir les "chemins" créés avec <a href="https://community.bistudio.com/wiki/BIS_fnc_UnitCapture">BIS_fnc_UnitCapture</a> il est précompilé à l'init et ne doit pas être supprimé même si vous n'en faites pas usage.
* Pour l'usage du répertoire MissionFunctions voir plus bas dans la section "déclarer des fonctions".
## Les macros

* Le compileur d'Arma permet l'utilisation de <a href="https://community.bistudio.com/wiki/PreProcessor_Commands">macros </a>. Une *macro* est en réalité un moyen de définir un "raccourci" pour du code ou des chemins de fichiers. Par exemple une macro définie ainsi ```#define MRH_BEST hint "Mr H. is the best"``` pourra être utilisée plus loin dans du code ainsi: ```MRH_BEST;``` et aura le même effet que de taper ```hint "Mr H. is the best"``` ou (plus intéressant) ```FUNC(mrhIsTheBest);``` est dans le framework equivalent à taper: ```call TGV_mission_fnc_mrhIsTheBest``` c'est aussi utile pour raccourcir un chemin vers un fichier exemple: ```APIC(kilroygraf.paa)``` est égual à ```"\TGV_Assets\paa\kilroygraf.paa"``` . Les différentes macros sont définies dans le fichier *TGV_macros_def.hpp* qui se trouve à la racine de votre mission avec framework.
* Pour que ces macros soient disponibles elles doivent être définie dans votre fichier. Tout fichier qui contient *#include TGV_macros_def.hpp"* ou *#include "macros_path.hpp"* est déjà configuré pour les utiliser.
* Les macros pré définies sont décrites et expliquées dans le fichier, avec à chaque fois un exemple d'utilisation.

## Déclarer des fonctions
* **Un peu de théorie:** Si vous êtes arrivé jusqu'ici vous connaissez probablement déjà la manière habituelle d'appeler des scripts, la commande: *execVM* c'est la plus courante et la plus utilisée tout le monde la connaît, tout le monde l'utilise, problème: c'est aussi la plus caca! Pourquoi ? Parce que du code appelé avec cette commande est recompilé à chaque appel, alors que du code bien déclaré n'est compilé qu'une fois à l'initialisation de la mission. Il n'y a que deux situations dans lesquelles il est parfaitement légitime d'utiliser *execVM* :
1. Pour un code appelé seulement une seule fois dans la mission, lors de son initialisation. (Pour les briefings par exemple c'est OK.)
2. Pour créer et débugguer son code (c'est plus simple, pas besoin de recharger la mission pour tout recompiler, ou de recompiler les fonctions manuellement pour ceux qui savent le faire)

* Vous ne voulez pas passer pour des gros noobs ? "Déclarez" votre code pour qu'il soit compilé à l'init! Il pourra ensuite être appelé de deux manières: avec la commande *spawn* ou avec la commande *call*

* La différence entre ces deux commandes est fondamentale: elle tient au <a href="https://community.bistudio.com/wiki/Scheduler">scheduler </a> (tout pourri) d'arma les fonctions appelées avec *call* ne passent pas par le scheduler alors que les fonctions avec *spawn* sont placées dans le scheduler. 

* Le schéduleur execute un code donné pendant exactement 3ms par frame (donc avec une grosse chute de framerate le code s'execute lentement)puis il passe au script suivant, l'execute pendant 3ms etc. Problème : parfois (c'est rare mais ça arrive)quand le scheduleur est saturé *de code de merde créé par des script kiddies oups j'ai rien dit* le code se perd et ne va pas jusqu'au bout de son execution. Pour la petite histoire des teams de moddeurs comme ACE3, CBA ou ACRE trouvent le scheduleur tellement déguelasse qu'elles ont recours à des ruses de sioux pour éviter entièrement son utilisation, et le débat a (avant mon époque)créé une petite gueguerre sur les forums arma. Mais bon vous n'en êtes pas là et ne VOUS INTERDISEZ PAS d'utiliser le scheduleur c'est tout de même pratique.

* Le code appelé avec *call* n'est pas executé dans le schéduleur (pas 100% vrai mais je simplifie )et ne crée pas de nouveau thread, il est executé à la suite du code qui le précéde ou qui l'appelle comme s'il en faisait partie (plus ou moins...) et est executé dans son intégralité sur 1 frame, quitte à ralentir complétement la frame dans le cas d'un code très lourd, voir freezer le jeu. Il a l'avantage de pouvoir retourner des variables au code qui le suit/ l'appelle. Il est très utile dans les fonctions critiques.(calculs compliqués, évaluation de conditions etc). Par défaut, avec CBA activé le code tappé dans la console est appelé dans un environnement "unscheduled". Son désavantage est qu'il n'accepte PAS la suspension (forcemment DUH!)du coup des commandes comme ```sleep``` ou ```while``` ou ```waitUntil``` (pas exactement pour cette dernière mais bon je simplifie) sont complètement ignorées et renvoient des erreurs. (sauf ruse de sioux cba voir plus bas). De plus ce code ne renvoie pas de message d'erreurs (sauf variables d'entrée non définies)et se contente de crasher discrètement et en silence sans vous dire ce qui ne va pas...

* Le code appelé avec *spawn* lui, est placé dans le scheduleur ,et donc crée un nouveau thread, plusieurs *spawn* peuvent donc fonctionner en parallèle. Il ne retourne pas de valeur (il retourne le scripte lui même), mais il accepte la suspension et vous renvoie des messages d'erreur quand la syntaxe ne va pas (c'est gentil de sa part).Denière note: la commande *spawn* EXIGE des paramètres, si vous n'en avez pas à lui filer donnez lui un array vide. Il ne faut donc pas taper ```spawn TGV_mission_fnc_maJolieFonction``` mais ```[] spawn TGV_mission_fnc_maJolieFonction```.

* C'est bien beau tout ça mais ça change quoi pour moi concrètement ? = **Fin de la théorie**
Bon bein si vous avez suivit il vaut donc mieux déclarer du code pour qu'il soit compilé au début de la mission que faire un *execVM* sauvage. Et tout ça ça va se passer dans le répertoire MissionFuncs de la mission. Pour comprendre vraiment comment ça marche vous pouvez aller lire ça: <a href="https://community.bistudio.com/wiki/Arma_3_Functions_Library">L'article librairies de fonction du Biki</a> mais en gros je vous ai simplifié la vie.
Quelques règles :
1. Vos fichiers doivent obligatoirement être placés dans le répertoire MissionFunctions (c'est possible de pointer alleurs mais quand on sait pas faire on fait comme je dis nah!)
2. Un fichier sqf déclaré en fonction doit toujours être préfixé par fn_ exemple: ```fn_monNomDeFonction.sqf```
3. Le même fichier doit être déclaré dans le *cfgFunctions.hpp* qui se trouve dans le même répertoire mais SANS le préfixe *fn_* et sans le suffixe *.sqf* donc ça donne ```class monNomDeFonction{};``` les *{}* ne sont pas obligatoires, ils ont une utilité si on ajoute qqc dedans (une propriété d'initialisation) donc ``` class monNomDeFonction;``` ça marche aussi très bien.

* Pour les appeler vos fonctions seront automatiquement préfixées par TGV_mission_fnc_ donc ça donnera ```call TGV_mission_fnc_nomDeFonction;``` ou ```[]spawn TGV_mission_fnc_nomDeFonction;```

* Les fonctions préfixées *TGV_fnc_* sont celles placées dans l'addon. (je sais j'aurais du faire l'inverse mais bon c'est comme ça).

* Partout ou les macros sont disponibles vous pouvez faire à la place de ```call TGV_mission_fnc_nomDeFonction;``` ==> ```FUNC(nomDeFonction);``` et à la place de ```[]spawn TGV_mission_fnc_nomDeFonction;``` ==> ```[] SFUNC(nomDeFonction);``` . Il y a d'autres raccourcis du genre, voir dans le fichier des macros.

## Du bon usage de CBA

* Tout le monde utilise CBA mais peu de gens savent à quoi il sert vraiment. Pour vous la faire courte c'est en soit un framework ultra impressionant par la qualité de son code qui facilite grandement la vie avec Arma. Impossible de vous faire un tour complet de CBA, pour info sachez qu'ils ont <a href="https://github.com/CBATeam/CBA_A3/wiki">un wiki ici</a> et un export complet <a href="http://cbateam.github.io/CBA_A3/docs/files/overview-txt.html"> de leur liste de fonctions ici</a>.

#### Je vais quand même prendre le temps de vous faire le tour de quelques fonctionnalités utiles pour ooptimiser votre code avec CBA
1. ###### Rester dans un environnement unscheduled
Avec CBA il est possible de rester complètement dans un environnement unscheduled et de tout de même avoir de la suspension, c'est plus compliqué que de le faire dans du scheduled mais ça garantie une execution à 100% du code.
A n'utiliser que pour les fonctions d'importance critique.

  a) Remplacer le sleep par  <a href="hhttps://cbateam.github.io/CBA_A3/docs/files/common/fnc_waitAndExecute-sqf.html">CBA_fnc_waitAndExecute</a>
  > Permet un sleep EXACT peut importe les ralentissements et les chutes de framerate et qui s'executera obligatoirement.

  ``` [
    {
        code
    }, 
    [params], 
    delay
] call CBA_fnc_waitAndExecute;```

  b) Remplacer le waitUntil par  <a href="https://cbateam.github.io/CBA_A3/docs/files/common/fnc_waitUntilAndExecute-sqf.html"> de leur liste de fonctions ici</a>
  c) DANS CERTAINS CAS remplacer les while{}do{} par  <a href="https://github.com/MisterHLunaticwraith/MRHMilsimTools/blob/master/Addons/MRHMilsimTools/Functions/CoreFunctions/fn_MilsimTools_Core_conditionalPFEH.sqf">MRH_fnc_MilsimTools_Core_conditionalPFEH</a>

## Fonctions utiles :
call TGV_fnc_introCredits
call TGV_fnc_getFactions
call TGV_fnc_stopSafeStart
call TGV_fnc_startSafeStart
call TGV_fnc_EndCredits;
call TGV_fnc_startGenericEndCutscene;
[]spawn TGV_fnc_aliasCutScene