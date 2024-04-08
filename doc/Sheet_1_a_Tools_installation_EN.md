Installing JDemetra+
================
Tanguy BARTHELEMY

## Context

This is a quick guide on how to install
[JDemetra+](https://jdemetra-new-documentation.netlify.app/) Graphical
User Interface, Cruncher and related R packages.

If you need more information on how to configure your computer, you
should read this more [detailed
guide](https://github.com/TanguyBarthelemy/JD-Tutorials/blob/master/Sheets/Sheet_1_b_Tools_installation_advanced_EN.pdf)

## Installing the Graphical User Interface (GUI)

You can find the latest releases

- in the v2.x family:
  [here](https://github.com/jdemetra/jdemetra-app/releases)

As of April 2024, the latest version is
[v2.2.4](https://github.com/jdemetra/jdemetra-app/releases/tag/v2.2.4)

Scroll down the page, download and unzip the file
*jdemetra-2.2.4-bin.zip*.

To start the application, run the file **nbdemetra64.exe** located in
the following subfolder “… .4-bin”

- in the v3.x family:
  [here](https://github.com/jdemetra/jdplus-main/releases)

As of April 2024, the latest version is
([v3.2.2](https://github.com/jdemetra/jdplus-main/releases/tag/v3.2.2))

Scroll down the page, download and unzip the file if you use Windows
*jdemetra-standalone-3.2.2-windows-x86_64.zip*.

To start the application, run the file **nbdemetra64.exe** located in
the following subfolder “… -standalone-3.2.2-windows-x86_64”

Version 3.x requires Java 17 or higher,
*jdemetra-standalone-3.2.2-windows-x86_64.zip* contains a portable
version of Java 21, so you don’t have to deal with this issue on your
computer.

R packages related to version 3.x (rjd3…) also require Java 17 or
higher, you can (and should) use the portable version provided with the
graphical user interface to run them, this is explained
[here](#Rconfig).

## Installing additional plugins

To benefit from extended features of the graphical user interface
installing plug-ins can be required. This procedure is detailed
[here](https://jdemetra-new-documentation.netlify.app/t-plug-ins) and
[here](https://jdemetra-new-documentation.netlify.app/t-gui-sa-modelling-features)
in the online documentation.

In the **v2.x family** some of the additional features are: -
Benchmarking and Temporal disaggregation - Nowcasting

In the **v3.x family** some of the additional features are: -
Benchmarking and Temporal disaggregation - Seasonal adjustment of high
frequency data - Additional algorithms for seasonal adjustment

## Installing the cruncher

To install the
[Cruncher](https://jdemetra-new-documentation.netlify.app/t-production-tools-cruncher-qr)
:

- in v2, go to the \[**JWSACruncher**\]
  page(<https://github.com/jdemetra/jwsacruncher>) and **download** and
  **unzip** the compressed folder `jwsacruncher-2.2.4-bin.zip`.

- in v3, go to the
  [**jdplus-main**](https://github.com/jdemetra/jdplus-main) page and
  **download** and **unzip** the compressed folder
  `jwsacruncher-standalone-3.2.2-windows-x86_64.zip`.

## Configuration to run rjd3 packages

rjd3 suite of packages is available \[here\]

Installation procedure and exemple are provided in the readme files.

To use the v3 packages in R, you need to specify the path to Java 17 or
higher.

You can use the version of Java that comes with the graphical user
interface, as shown in the example below.

- Run this line at the beginning of your programs (with the correct path
  where you installed JDemetra+) or configure your Renviron file as
  explained [here]():

``` r
Sys.setenv("JAVA_HOME" = ".../jdemetra-standalone-3.2.2-windows-x86_64/nbdemetra/jdk-21.0.2+13-jre")
``
```
