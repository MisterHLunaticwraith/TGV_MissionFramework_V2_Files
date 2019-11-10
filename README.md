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

#### Je vais quand même prendre le temps de vous faire le tour de quelques fonctionnalités utiles pour optimiser votre code avec CBA
1. ###### Rester dans un environnement unscheduled
Avec CBA il est possible de rester complètement dans un environnement unscheduled et de tout de même avoir de la suspension, c'est plus compliqué que de le faire dans du scheduled mais ça garantie une execution à 100% du code.
A n'utiliser que pour les fonctions d'importance critique.

  a) Remplacer le sleep par  <a href="https://cbateam.github.io/CBA_A3/docs/files/common/fnc_waitAndExecute-sqf.html">CBA_fnc_waitAndExecute</a>
  > Permet un sleep EXACT peut importe les ralentissements et les chutes de framerate et qui s'executera obligatoirement.

``` 
 [
    {
        code
    }, 
    [params], 
    delay
] call CBA_fnc_waitAndExecute; 
```

  b) Remplacer le waitUntil par  <a href="https://cbateam.github.io/CBA_A3/docs/files/common/fnc_waitUntilAndExecute-sqf.html"> CBA_fnc_waitUntilAndExecute</a>
  > Pemet un waitUntil EXACT et qui ne se perdra pas dans le scheduleur, à utiliser absolument si le délais du waitUntil risque d'être long 
  
```
[
    {cond}, 
    {code}, 
    [params]
] call CBA_fnc_waitUntilAndExecute;
```
  c) DANS CERTAINS CAS remplacer les while{}do{} par  <a href="https://github.com/MisterHLunaticwraith/MRHMilsimTools/blob/master/Addons/MRHMilsimTools/Functions/CoreFunctions/fn_MilsimTools_Core_conditionalPFEH.sqf">MRH_fnc_MilsimTools_Core_conditionalPFEH</a>
  > Fonction faite maison qui peut remplacer avantageusement l'event handler onEachFrame de Arma ou une loop de while, comme pour les deux exemples précédents une execution exacte est garantie.
```
Function name:MRH_fnc_MilsimTools_Core_conditionalPFEH
Author: Mr H.
Description: Will run a CBA PFEH only for as long as the condition is fulfilled, will run provided code upon exiting and remove PFEH, used to replace while loops in unscheduled environment
Return value: cba PFEH handle
Public: No
Parameters:
0- <CODE> code to Run stated between {}
1 - <ANY> OPTIONAL parameters, will be passed to  code to run, exit code and condition
2- <CODE> OPTIONAL exit code between {} code that will be executed upon ending PFEH default is {}
3- <CODE THAT RETURNS BOOLEAN> - OPTIONAL conditions during which PFEH will run default {true}
4- <NUMBER> -OPTIONAL delay between each execution
Example(s):
_handle = [
	{hint str (_this select 0)},
	[player],
	{hint format ["Player %1 has died",(_this select 0)]},
	{alive player},
	2
]call MRH_fnc_MilsimTools_Core_conditionalPFEH;
//will hint player object every 2 seconds until player dies upon which it will hint that it has died
```
2. ###### Gestion de la localité d'execution d'un code avec les événements CBA
> Les <a href="https://github.com/CBATeam/CBA_A3/wiki/Custom-Events-System"> Evénements CBA</a> ont pour fonction première de permettre de créer des Event Handlers customs semblables <a href="https://community.bistudio.com/wiki/Arma_3:_Event_Handlers"> ceux d'arma</a> savoir s'en servir et connaître ceux qui sont déclenchés par <a href="https://ace3mod.com/wiki/framework/events-framework.html">ACE</a> et 
 <a href="https://mrhmilsimtools-arma3-mod.fandom.com/wiki/List_of_listenable_event_handlers">Milsim Tools</a> vous permettra de diversifier vos missions scriptées. Mais ils offrent de plus une telle optimisation de l'execution distante en multijoueur que des mods comme ACE n'utilisent que celà en lieu et place du RemoteExec, c'est (nettement) mieux optimisé, à peine plus difficile à mettre en place et parfois la seule solution qui fonctionne pour des commandes d'arma qui sont bugguées (c'est par exemple le SEUL moyen de faire un remote exec sur les commandes de la catégorie *moveIn* d'Arma, aucune des méthodes natives d'arma ne fonctionne correctement en multi avec cette commande).
 
 ###### Voici la mise en place:
  a) Créer un événement dans un des 3 inits: en général le *init.sqf*, si vous êtes certains que le code ne sera jamais utilisé par le serveur vous pouvez le mettre dans le *initPlayerLocal.sqf*, si au contraire vous êtes certains que le code ne doit absolument être executé que sur le serveur vous pouvez le mettre dans le *initServer.sqf* (ça n'a pas une importance phénoménale pour ce dernier on pourra recibler l'éxecution après). Un event se déclare de la manière suivante:
  ```
	["tag_nom_de_mon_event",{code de mon event, peut recevoir des paramètres}] call CBA_fnc_addEventHandler;
  ```
  Cet event ne se déclenche pas tout seul à l'init.
  
  b) Je peux maintenant, n'importe où dans un autre script, même executé localement, déclencher cet event sur une machine cible avec ces 3 fonctions
  *Pour le déclencher globalement (remplace le remote exec):*
  ```
	["tag_nom_de_mon_event",[parametres à passer]] call CBA_fnc_globalEvent
  ```
  *Pour le déclencher seulement sur le serveur:*
  ```
	["tag_nom_de_mon_event",[parametres à passer]] call CBA_fnc_serverEvent
  ```
  *Pour le déclencher seulement sur une machine ou l'objet est local:*
  ```
	["tag_nom_de_mon_event",[parametres à passer],objetAJoindre] call CBA_fnc_serverEvent
  ```
  ###### Avec un exemple concret:
  
  a) J'ai une fonction "dire bonjour" qui ressemble à ça:
  
  ```
  // TGV_mission_fnc_direBonjour
  params ["_quiDitBonjour"];
  hint format ["%1 te dit bonjour!",_quiDitBonjour];
  ```
  
  b) Je vais créer mon event dans le *init.sqf*
  
  ```
  //init.sqf
  ["TGV_dire_bonjour_event",{_this call TGV_mission_fnc_direBonjour}] call CBA_fnc_addEventHandler;
  ```
  
  c) Plus tard dans un script je veux:
  
*Dire bonjour au serveur: (il s'en fout mais bon c'est pour l'exemple)*
  
  ```
	["TGV_dire_bonjour_event",name player] call CBA_fnc_serverEvent;
  ```
  effet: rien sur un dédié (mais le code y est executé, c'est juste que hint sur un dédié ne veut rien dire vu qu'il n'a pas d'interface), en hosted le host verra un hint "Mr H. te dit bonjour!"
  
*Dire bonjour à tout le monde*
 
  ```
	["TGV_dire_bonjour_event",name player] call CBA_fnc_globalEvent;
  ```
  effet : tout le monde verra le hint
  
*Dire bonjour à Anto (admettons que j'ai une unité jouable dont le nom de variable est anto)*
	
  ```
	["TGV_dire_bonjour_event",name player,anto] call CBA_fnc_targetEvent;
  ```
  effet: seul le joueur qui occupe le perso avec nom de variable anto verra le hint

*Dire bonjour à seulement Anto, blackhawk et Kmi, en admettant que chacun occupe une unité jouable avec un nom de variable du même nom*
	
  ```
  private _coolGuys = [anto,kmi,blackhawk];
  {
	["TGV_dire_bonjour_event",name player,_x] call CBA_fnc_targetEvent;
  }forEach _coolGuys;
  ```
  
  effet : seul eux verront le hint
  
## Fonctions utiles :

* call TGV_fnc_introCredits

Affiche un générique de mission, récupère des infos dans le framework (non de la mission, nom et logo(s) de(s) (l')auteur(s)
Peut être appelée sans paramètres.

```
Paramètres optionnels
0 - <NUMBER> temps d'affichage de chaque crédit (défaut 4)
1 -<STRING> Police d'écriture (défaut "PuristaLight")
2 - <NUMBER> Ombrage de la police (0 = pas d'ombre, 1= ombre, 2 = liserai interne) défaut =0
3 - <NUMBER> Taille de la police du texte du haut (en orange par défaut) défaut =0.8
4 - <STRING> Couleur en Hex du texte du haut (défaut= "#f6772a" (orange))
5 - <NUMBER> Taille de la police du texte du bas(blanc par défaut) (défaut = 1.3)
6 - <STRING> COuleur Hex du texte du bas (défaut =  "#ffffff" (blanc))
```

Visuels:

<p align="center">
    <img src="https://github.com/MisterHLunaticwraith/TGV_MissionFramework_V2_Files/blob/master/introCredits_1.jpg" width="480">
</p> 

<p align="center">
    <img src="https://github.com/MisterHLunaticwraith/TGV_MissionFramework_V2_Files/blob/master/introCredits_2.jpg" width="480">
</p> 

* call TGV_fnc_getFactions

Retourne les noms de fichiers à donner aux briefings séparés par faction si applicable (voir plus haut)

```
 //Copie dans le presse papier un texte du genre:
 BR_BLU_F.sqf BR_BLU_CTRG_F.sqf BR_BLU_G_F.sqf BR_BLU_GEN_F.sqf
```

* call TGV_fnc_stopSafeStart

Met fin au safe start, pas de paramètres, executé localement, a des effets locaux. SI mis dans une Trigger filtrer pour que ça ne s'execute pas partout plusieurs fois (ce qui ne pose pas problème par ailleur mais bon opti opti..) 

```
	//dans une trigger ou un code executé globalement
	if (isServer)then {call TGV_fnc_stopSafeStart};
```

* call TGV_fnc_startSafeStart

Lance le Safe Start, peut être appelé n'importe où mais ne doit s'executer que sur une seule machine, donc si appelé à plusieurs endroits filtrer

```
	//dans une trigger ou un code executé globalement
	if (isServer)then {call TGV_fnc_TGV_fnc_startSafeStart};
```


* call TGV_fnc_EndCredits;

Affiche un générique de fin, récupère les infos du framework et des joueurs (nom de mission, auteurs, logos des auteurs, version de la mission, date de la mission, version du framework, équipes participantes avec leurs logos etc.). Peut être appelé sans paramètres

```
	//Paramètre optionnel
	0-<NUMBER> vitesse de défilement (défaut 20) plus la valeur est petite plus le texte défile vite et inversement
```

<p align="center">
    <img src="https://github.com/MisterHLunaticwraith/TGV_MissionFramework_V2_Files/blob/master/endCredits_1.jpg" width="480">
</p> 

<p align="center">
    <img src="https://github.com/MisterHLunaticwraith/TGV_MissionFramework_V2_Files/blob/master/endCredits_2.jpg" width="480">
</p> 

* call TGV_fnc_startGenericEndCutscene;

Joue une cutscene générique, la cutscene passe automatiquement de joueur en joueur, et leur fait jouer une animation, le logo de la team du joueur ainsi que son nom sont visibles sur ça tête, 5 secondes par joueur présent, le générique de fin défile en même temps, la vitesse s'adapte au nombre de joueurs. Puis MET FIN A LA MISSION AVEC UNE FIN GENERIQUE

***/!\ Ne doit surtout pas être remote executé, ne doit être appelé que sur une machine, si appelé depuis trigger filtrer impérativement***

```
	//dans une trigger ou un code executé globalement
	if (isServer)then {call TGV_fnc_startGenericEndCutscene};
```

Peut être appelée sans paramètres.
Paramètres Optionnels:

```
	0 - <STRING> Fin définie dans le cfgDebriefing , défaut : "TGV_fin_victoire"
	1 - <STRING> Musique MAIS définie dans le cfgSounds (et pas cfgMusic), défaut "TGV_FF7_victory" (la musique quand on gagnait un combat dans Final Fantasy VII)
```

<p align="center">
    <img src="https://github.com/MisterHLunaticwraith/TGV_MissionFramework_V2_Files/blob/master/genCutScene_1.jpg" width="480">
</p> 

<p align="center">
    <img src="https://github.com/MisterHLunaticwraith/TGV_MissionFramework_V2_Files/blob/master/genCutScene_2.jpg" width="480">
</p> 

<p align="center">
    <img src="https://github.com/MisterHLunaticwraith/TGV_MissionFramework_V2_Files/blob/master/genCutScene_3.jpg" width="480">
</p> 

* []spawn TGV_fnc_aliasCutScene

Cette fonction est une modification du script d'AliasCartoon <a href="https://www.youtube.com/watch?v=rRUd2dtPhFY">Movie maker</a> je n'en suis pas l'auteur mais je l'ai largement modifiée et un peu optimisée. Un Jour je ferai ma version propre parce qu'avec le recul celle d'alias a des défauts mais en ettendant j'ai eu la flemme de la refaire. Son usage et un exemple sont décrits dans le *cutsceneTemplate.sqf * dans le répertoire "Cutscenes" du framework.

## That's all folks !