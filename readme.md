# 🇫🇷 Projet JD Tutorials : Bien utiliser JDemetra+
# 🇬🇧 JD Tutorials project: Make good use of JDemetra+

## Objectifs 🇫🇷

L'objectif du projet **JD Tutorials** est de faciliter l'utilisation de JDemetra+, aussi de l'interface graphique (GUI, Graphical user Interface) que des packages R qui donnent également accès aux algorithmes de JDemetra+.

Ce projet est complémentaire à la [documentation](https://jdemetra-new-documentation.netlify.app/) en ligne. Nous y proposons des vidéos, des tutoriels et des guides d'installation des différents outils autour de JDemetra+.

## Motivation 🇬🇧

The aim of the **JD Tutorials** project is to make JDemetra+ easier to use, both with the Graphical User Interface (GUI) and with the companion R packages, which also provide access to JDemetra+ algorithms.

This project complements the online [documentation](https://jdemetra-new-documentation.netlify.app/). Here you'll find videos, tutorials and installation guides for the various JDemetra+ related tools.

## Structure

```mermaid
flowchart TB
    subgraph rjd3toolkit_depends ["Packages dépendants de rjd3toolkit"]
        direction TB


        subgraph rjd3_other[" "]
            rjd3bench
            rjd3revisions
            rjd3nowcasting
        end
        
        subgraph rjd3x13_tramo[" "]
            rjd3x13
            rjd3tramoseats
        end

        rjd3providers --> rjdemetra3
        rjd3x13_tramo --> rjdemetra3

        rjd3x13_tramo --> ggdemetra3
        rjd3highfreq --> ggdemetra3
        rjd3x11plus --> ggdemetra3
        rjd3filters --> ggdemetra3
        
        rjd3filters --> rjd3x11plus
        rjd3sts --> rjd3highfreq
        rjd3highfreq --> rjd3stl

    end

    rjd3toolkit --> rjd3toolkit_depends

  click rjd3toolkit "https://github.com/rjdemetra/rjd3toolkit" _blank
  click rjd3nowcasting "https://github.com/rjdemetra/rjd3nowcasting" _blank
  click rjd3stl "https://github.com/rjdemetra/rjd3stl" _blank
  click rjd3highfreq "https://github.com/rjdemetra/rjd3highfreq" _blank
  click rjd3sts "https://github.com/rjdemetra/rjd3sts" _blank
  click rjd3x11plus "https://github.com/rjdemetra/rjd3x11plus" _blank
  click rjd3filters "https://github.com/rjdemetra/rjd3filters" _blank
  click rjd3providers "https://github.com/rjdemetra/rjd3providers" _blank
  click rjdemetra3 "https://github.com/rjdemetra/rjdemetra3" _blank
  click rjd3x13 "https://github.com/rjdemetra/rjd3x13" _blank
  click rjd3tramoseats "https://github.com/rjdemetra/rjd3tramoseats" _blank
  click rjd3bench "https://github.com/rjdemetra/rjd3bench" _blank
  click rjd3revisions "https://github.com/rjdemetra/rjd3revisions" _blank
  click ggdemetra3 "https://github.com/AQLT/ggdemetra3" _blank
```


## Réseaux / Networks
- ▶️ [YouTube](https://www.youtube.com/@TSwithJDemetraandR) : @TSwithJDemetraandR
- 📚 [JD+ Documentation](https://jdemetra-new-documentation.netlify.app/)
- 📝 [Blog](https://jdemetra-universe-blog.netlify.app/)
- 🖥️ GitHub Tanguy Barthelemy: https://github.com/TanguyBarthelemy
- 🖥️ GitHub Anna Smyk: https://github.com/annasmyk
