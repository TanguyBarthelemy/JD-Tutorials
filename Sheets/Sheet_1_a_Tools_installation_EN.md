Tools installation for seasonal adjustment
================
Tanguy BARTHELEMY

## Installation of JDemetra+

You can find the two current versions of JDemetra3 (v2 and v3):

- in v2 : the last release
  ([v2.2.4](https://github.com/jdemetra/jdemetra-app/releases/tag/v2.2.4))
- in v3 : the last release
  ([v3.2.2](https://github.com/jdemetra/jdplus-main/releases/tag/v3.2.2))

You just have to **Download** and **unzip** the compressed folder
`jdemetra-standalone-3.2.2-windows-x86_64.zip` that allows to get a
portable version of the software.

## Installation of the cruncher

To install the installer the cruncher :

- in v2, go on the page of
  [**JWSACruncher**](https://github.com/jdemetra/jwsacruncher) and
  **Download** and **unzip** the compressed folder
  `jwsacruncher-2.2.4-bin.zip`
- in v3, go on the page of
  [**jdplus-main**](https://github.com/jdemetra/jdplus-main) and
  **Download** and **unzip** the compressed folder
  `jwsacruncher-standalone-3.2.2-windows-x86_64.zip`

## Configuration of R and Rstudio

To use the packages in v3 in R, you need to specify the path to Java 17.

You need to execute this line at the beginning of your programs (with
the correct path where you installed JDemetra+):

``` r
Sys.setenv("JAVA_HOME" = "path/to/nbdemetra-3.2.2/jdk-21.0.2+13-jre")
```
