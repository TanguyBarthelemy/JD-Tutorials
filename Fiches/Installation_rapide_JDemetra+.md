Installation des outils pour la désaisonnalisation
================
Tanguy BARTHELEMY

## Contexte

Il s’agit d’un guide rapide sur l’installation de l’interface graphique
de [JDemetra+](https://jdemetra-new-documentation.netlify.app/), du
cruncher et des packages R associés.

Si vous avez besoin de plus d’informations sur la configuration de votre
ordinateur, vous devriez lire ce [guide
détaillé](https://github.com/TanguyBarthelemy/JD-Tutorials/blob/master/Fiches/JDemetra+_configuration_guide_FR.pdf)

## Installer l’Interface Graphique (GUI)

Vous pouvez trouver les dernières versions :

- de la famille v2.x :
  [ici](https://github.com/jdemetra/jdemetra-app/releases)

  En avril 2024, la dernière version est
  [v2.2.4](https://github.com/jdemetra/jdemetra-app/releases/tag/v2.2.4)

  Allez en bas de la page, téléchargez et décompressez le fichier
  *jdemetra-2.2.4-bin.zip*.

  Pour démarrer l’application, exécutez le fichier **nbdemetra64.exe**
  situé dans le sous-dossier suivant
  ${\textsf{\color{#006817}{...\\\\jdemetra-2.2.4-bin\\\\nbdemetra\\\\bin}}}$

  ℹ️ Remarque : Vous pouvez créer des raccourcis vers les fichiers
  exécutables si vous souhaitez les lancer à partir d’un autre dossier
  (bureau, dossier de projet…).

- dans la famille v3.x :
  [ici](https://github.com/jdemetra/jdplus-main/releases)

  En avril 2024, la dernière version est
  ([v3.2.2](https://github.com/jdemetra/jdplus-main/releases/tag/v3.2.2)).

  Allez en bas de la page, téléchargez et décompressez le fichier si
  vous utilisez Windows *jdemetra-standalone-3.2.2-windows-x86_64.zip*.

  Pour lancer l’application, exécutez le fichier **nbdemetra64.exe**
  situé dans le sous-dossier suivant
  ${\textsf{\color{#006817}{...\\\\jdemetra-standalone-3.2.2-windows-x86\\_64\\\\nbdemetra\\\\bin}}}$

  La version 3.x nécessite Java 17 ou supérieur,
  *jdemetra-standalone-3.2.2-windows-x86_64.zip* contient une version
  portable de Java 21, de sorte que vous n’avez pas à faire face à ce
  problème sur votre ordinateur. Les packages R liés à la version 3.x
  (rjd3…) nécessitent également Java 17 ou supérieur, vous pouvez (et
  devriez) utiliser la version portable fournie avec l’interface
  graphique pour les lancer, ceci est expliqué [ici](#Rconfig).

## Installer des plug-ins supplémentaires

Pour bénéficier des fonctionnalités étendues de l’interface graphique,
il peut être nécessaire d’installer des plug-ins. Cette procédure est
détaillée
[ici](https://jdemetra-new-documentation.netlify.app/t-plug-ins) et
[ici](https://jdemetra-new-documentation.netlify.app/t-gui-sa-modelling-features)
dans la documentation en ligne.

Dans la **famille v2.x**, certaines des fonctionnalités supplémentaires
sont : - le Benchmarking et désagrégation temporelle. - le Nowcasting

Dans la **famille v3.x**, certaines des fonctionnalités supplémentaires
sont : - Benchmarking et désagrégation temporelle - Ajustement
saisonnier des données haute fréquence - Algorithmes supplémentaires
pour l’ajustement saisonnier

## Installation du cruncher

Pour installer le \[cruncher\]
(<https://jdemetra-new-documentation.netlify.app/t-production-tools-cruncher-qr>)
:

- en v2, allez sur la page
  [**JWSACruncher**](https://github.com/jdemetra/jwsacruncher) et
  **téléchargez** et **décompressez** le dossier compressé
  `jwsacruncher-2.2.4-bin.zip`.

- dans la v3, allez sur la page
  [**jdplus-main**](https://github.com/jdemetra/jdplus-main) et
  **téléchargez** et **décompressez** le dossier compressé
  `jwsacruncher-standalone-3.2.2-windows-x86_64.zip`.

## Configuration pour utiliser les packages rjd3

La suite de packages rjd3 est disponible
[ici](https://github.com/rjdemetra)

La procédure d’installation et les exemples sont fournis dans les
fichiers readme.

Pour utiliser les packages v3 dans R, vous devez spécifier le chemin
d’accès à Java 17 ou supérieur.

Vous pouvez utiliser la version de Java fournie avec l’interface
utilisateur graphique, comme le montre l’exemple ci-dessous.

- Exécutez cette ligne au début de vos programmes (avec le chemin
  correct où vous avez installé JDemetra+) ou configurez votre fichier
  Renviron comme expliqué
  [ici](https://github.com/TanguyBarthelemy/JD-Tutorials/blob/master/Fiches/Guide_configuration.pdf)
  :

``` r
Sys.setenv("JAVA_HOME" = "chemin/vers/nbdemetra-3.2.2/jdk-21.0.2+13-jre")
```
