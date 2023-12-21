# 🇫🇷 Projet JD Tutorials : Comment désaisonnaliser avec JDemetra+ ?
# 🇬🇧 JD Tutorials project: Seasonnal adjustment with JDemetra+

## Français 🇫🇷

### But

Les objectifs du projet **JD Tutorials** est d'apporter des outils d'aide à l'utilisation de JDemetra+ aussi bien pour l'utilisation de la GUI (Graphical user Interface) que des packages R qui accompagne JDemetra+.

Ce projet est complémentaire à la [documentation](https://jdemetra-new-documentation.netlify.app/) en ligne en apportant des vidéos, des tutoriels et des guides d'installation des différents outils.


## English 🇬🇧


### Objectives

The objectives of the project **JD Tutorials** is to bring helping tools to use JDemetra+ both for using the GUI (Graphical user Interface) and the R packages which are related to JDemetra+.

This project is complementary to the [online documentation](https://jdemetra-new-documentation.netlify.app/) by bringing videos, tutorials and installation guideset for the different tools.

### Structure

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

    rjd3sts --> rjd3highfreq
    rjd3filters --> rjd3x11plus
    rjd3filters --> ggdemetra3
    rjd3x11plus --> ggdemetra3
    rjd3highfreq --> ggdemetra3
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
- 🖥️ GitHub Tanguy : https://github.com/TanguyBarthelemy
- 🖥️ GitHub Anna : https://github.com/annasmyk
