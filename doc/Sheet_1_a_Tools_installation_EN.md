Installing JDemetra+
================
Tanguy BARTHELEMY

## Installating the Graphical User Interface (GUI)

You can find the latest releases

- in v2.x family:
  [here](https://github.com/jdemetra/jdemetra-app/releases)

In April 2024, the latest version is
[v2.2.4](https://github.com/jdemetra/jdemetra-app/releases/tag/v2.2.4)

Scroll down on the page, download and unzip the file
*jdemetra-2.2.4-bin.zip*

To launch the application execute the file **nbdemetra64.exe** located
in the following sub folder: “… .4-bin”

- in v3.x family:
  \[here\]<https://github.com/jdemetra/jdplus-main/releases>)

In April 2024, the latest version is
([v3.2.2](https://github.com/jdemetra/jdplus-main/releases/tag/v3.2.2))

Scroll down on the page, download and unzip the file if you use windows
*jdemetra-standalone-3.2.2-windows-x86_64.zip*

To launch the application execute the file **nbdemetra64.exe** located
in the following sub folder: “… -standalone-3.2.2-windows-x86_64”

Version 3.x requires Java 17 or superior,
*jdemetra-standalone-3.2.2-windows-x86_64.zip* contains a portable
version of java 21, so you don’t have to tackle this issue on your
computer.

R packages related to version 3.x (rjd3…) also require Java 17 or
superior, you can (and should) use the portable version provided with
the Graphical user interface to run them, this is explained
[here](#Rconfig)

## Installing additionnal plug-ins

Extending…

## Installing the cruncher

To install the installer the cruncher :

- in v2, go on the page of
  [**JWSACruncher**](https://github.com/jdemetra/jwsacruncher) and
  **Download** and **unzip** the compressed folder
  `jwsacruncher-2.2.4-bin.zip`
- in v3, go on the page of
  [**jdplus-main**](https://github.com/jdemetra/jdplus-main) and
  **Download** and **unzip** the compressed folder
  `jwsacruncher-standalone-3.2.2-windows-x86_64.zip`

## Configaration to run rjd3 packages

Configuration of R and Rstudio

To use the packages in v3 in R, you need to specify the path to Java 17.

You need to execute this line at the beginning of your programs (with
the correct path where you installed JDemetra+):

``` r
Sys.setenv("JAVA_HOME" = "path/to/nbdemetra-3.2.2/jdk-21.0.2+13-jre")
```
