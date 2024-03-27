Installation des outils pour la désaisonnalisation
================
Tanguy BARTHELEMY

## Installation de JDemetra+

Vous trouverez les 2 versions actuelles de JDemetra+ (v2 et v3) :

- en v2 : la dernière release
  ([v2.2.4](https://github.com/jdemetra/jdemetra-app/releases/tag/v2.2.4))
- en v3 : la dernière release
  ([v3.2.2](https://github.com/jdemetra/jdplus-main/releases/tag/v3.2.2))

Il suffit de **Télécharger** et **dézipper** le dossier compressé
`jdemetra-standalone-3.2.2-windows-x86_64.zip` qui permet d’avoir une
version portable du logiciel.

## Installation du cruncher

Pour installer le cruncher :

- en v2, il faut aller sur la page du
  [**JWSACruncher**](https://github.com/jdemetra/jwsacruncher) et
  **Télécharger** et **Dézipper** le fichier
  `jwsacruncher-2.2.4-bin.zip`
- en v3, il faut aller sur la page de
  [**jdplus-main**](https://github.com/jdemetra/jdplus-main) et
  **Télécharger** et **Dézipper** le fichier
  `jwsacruncher-standalone-3.2.2-windows-x86_64.zip`

## Paramétrage de R et Rstudio

Pour utiliser les packages en v3, il faut spécifier le chemin jusqu’à
Java 17 à R.

Pour cela il suffit d’ajouter cette ligne de code au début du programme
(en paramétrant le chemin là où vous avez installé JDemetra+) :

``` r
Sys.setenv("JAVA_HOME" = "chemin/vers/nbdemetra-3.2.2/jdk-21.0.2+13-jre")
```
