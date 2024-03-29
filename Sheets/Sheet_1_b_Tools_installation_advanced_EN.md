Tools installation for seasonal adjustment
================
Tanguy BARTHELEMY

# Context

For seasonal adjustment we recommend using JDemetra+ algorithms

Thus, it is helpful to install the following tools:

- JDemetra+ Graphical User Interface (X13-Arima and Tramo-Seats )

- **R** and Rstudio (which allow to access even more JDemetra+
  algorithms)

⚠️ No assistance in **SAS** language will be given. ⚠️

# Preliminary

On the computers without administrator rights (*professional computer,
for example*), it is recommended to create a folder **Software** under
${\textsf{\color{#006817}{C:\\\\Users\\\\...\\\\Software}}}$ or directly
under ${\textsf{\color{#006817}{C:\\\\Users\\\\Software}}}$ where all
software will be installed.

⚠️ Warning: when we specify an **absolute** path for a software
(JDemetra+, Java, **R**, …) in a program, a shortcut, a variable, …, it
must be modified each time any root repository is moved.

# Installation of [JDemetra+](https://github.com/jdemetra/jdemetra-app)

JDemetra+ is a collection of Java programs used for time series analysis
and more specifically for seasonal adjustment. JDemetra+ is delivered in
the form of an GUI (Graphical User Interface) but there are **R**
packages developed to be used with **R** as well as a cruncher
(executable).

## Version of JDemetra+ and dependencies

JDemetra+ is downloadable from the [github
link](https://github.com/jdemetra/jdemetra-app/releases) of the
application: <https://github.com/jdemetra/jdemetra-app/releases>.

The last release
([v2.2.4](https://github.com/jdemetra/jdemetra-app/releases/tag/v2.2.3))
dates from January 31, 2023. It is the last **stable** version of
JDemetra+. **This version should be downloaded and must be used in
production.**

There is one more version of JDemetra+ which are only at a **test**
stage:

- [v3.2.2](https://github.com/jdemetra/jdplus-main/releases/tag/v3.2.2):
  the new JDemetra+ version with new features and a new GUI

JDemetra+ v2.2.4 require Java version $\geq 8$ while v3.2.2 requires
Java version $\geq 17$:

| JDemetra+ version | Java version |
|-------------------|--------------|
| v2.2.4            | $\geq 8$     |
| v3.2.2            | $\geq 17$    |

In the following procedure, the installation processes of this 2
versions are the same. You just have to repeat them for each version you
want to install.

## Installation process

There are two possibilities for installing:

- **Download and execute** the `.exe` file which requires administrator
  rights
- **Download** and **unzip** the compressed folder `.zip` that allows to
  get a portable version of the software

⚠️ Warning: for the second option, you need to **download** the
compressed folder `jdemetra+-2.2.4-bin.zip` (for the version 2.2.4 for
example) and **not** the folder `Source code (zip)`.

The Software is in the folder
${\textsf{\color{#006817}{\\\\nbdemetra\\\\bin\\\\}}}$, these are the
file `nbdemetra.exe` (version 32-bit) and `nbdemetra64.exe` (version
64-bit).

ℹ Advice: If you want to use several versions of JDemetra+ (v2.2.4,
v3.2.2, …), you can rename the unzipped folder in
${\textsf{\color{#006817}{\\\\nbdemetra-2.2.4\\\\}}}$ and
${\textsf{\color{#006817}{\\\\nbdemetra-3.2.2\\\\}}}$.

ℹ️ Remark: You can create shortcuts to the executable files if you want
to launch them from another folder (Desktop, project folder…).

## Installation of the cruncher

The cruncher
([**JWSACruncher**](https://github.com/jdemetra/jwsacruncher)) is a tool
to update a workspace of JDemetra+ from the console, without opening
JDemetra+ Graphical User Interface. The update of a workspace can then
be done from another Software (**R** or **SAS** for example).

To use the cruncher, you have to:

- **Download** and **unzip** the file from the **latest stable** version
  v2.2.4 here <https://github.com/jdemetra/jwsacruncher/releases>

If you want to install and use a portable Java version (See section
[Java installation](#install_java)), you have to modify some parameters
to use the cruncher:

- In the unzipped folder, **open** (for example with Notepad++) the file
  `jwsacruncher.bat` present in the subfolder
  ${\textsf{\color{#006817}{\\\\bin\\\\}}}$ (that is under
  ${\textsf{\color{#006817}{jdemetra-cli-2.2.4\\\\bin\\\\}}}$ in the
  version 2.2.3 of the cruncher)
- **Modify** the value of the variable `JAVACMD` at the line **71**
  (currently `JAVACMD=java`) by the address towards the file `java.exe`
  of the portable version. Then, if JPortable is installed under
  ${\textsf{\color{#006817}{C:\\\\Users\\\\Software}}}$, the new line is
  `if "%JAVACMD%"=="" set JAVACMD="C:\\Users\\Software\\Java64\\bin\\java"`
  (for Java 8).

# Installation of Java

ℹ️ On Insee computers, Java is already installed in version 8. Then,
there is no need to install a portable version to use JDemetra+ in
version 2.2.4.

## Java 8

To install Java 8, use the link
<https://portableapps.com/apps/utilities/java_portable>. If you use the
version 64-bit of JDemetra+, you should install the version jPortable
64-bit (at the bottom of the page).

## Java 17

### Remark

The version 3.2.2 of JDemetra+ contains a JDemetra+ version 3.2.2
contains a jdk 17 (java 17 version) packaged in
[.zip](https://github.com/jdemetra/jdplus-main/releases/tag/v3.2.2). So
to use the interface, it is not necessary to install Java 17.

On the other hand, to use R packages in version 3 without downloading
the GUI (in version 3.2.2), it is mandatory to have java \>= 17 and
therefore to install it yourself.

### Installation

To install Java 17, you need to head over to <https://whichjdk.com/>.

- **Download** the version `Compressed Archive` of Windows
  (<https://whichjdk.com/>)
- **Unzip** the folder ${\textsf{\color{#006817}{jdk-17.0.6}}}$ under
  ${\textsf{\color{#006817}{C:\\\\Users\\\\Software}}}$ (for example)

After a Java installation (in version 8, 17 or other), you need to:

- **Modify** the environment variable `PATH` of Rstudio and of Windows
  and `JAVA_HOME` from Rstudio (See section [Environment
  variables](#var_env))

# Installation of **R** and Rstudio

The JDemetra+ features are available on **R** via **R** packages. To use
**R**, it is better to use an IDE like Rstudio. All the executable files
to download are under
<https://posit.co/download/rstudio-desktop/#download>.

## Installation of **R**

To install **R**, you should:

- **Download** the binary file `R-4.3.2-win.exe` under
  <https://cran.rstudio.com/bin/windows/base/>
- **Execute** the executable to parameter and install **R**.

## Installation of Rstudio

**Download** the last Rstudio version (under
<https://posit.co/download/rstudio-desktop/#download>) and the
**installer**.

If the installation via the file `.exe` fails (because it requires
higher rights (administrator, elevation, …), we will get a portable
version of the Software. To do this:

- **Download** and **unzip** the compressed folder `.zip` in a folder
  named “Rstudio” (under
  ${\textsf{\color{#006817}{C:\\\\Users\\\\Software}}}$)
- **Create a shortcut** of the file `rstudio.exe` on the Desktop.

## Installation of **R** packages

To install a **R** package, there are several methods:

- Either it is on CRAN and you can install it directly with the function
  `install.packages()`
- Or it is on Github and you can install it directly with the function
  `install_github()` from the package **remotes**
- Or you have to retrieve the package from a folder (binary format)
  (`.zip`) and then install it with the function `install.packages()`
  with the arguments `repos = NULL, type = "binary"`.

### In version 2

The packages in version 2 are:

| Name          | Available on CRAN | Available on AUS | Github link                                  |
|---------------|-------------------|------------------|----------------------------------------------|
| RJDemetra     | ✔️                | ✔️               | <https://github.com/jdemetra/rjdemetra>      |
| rjdworkspace  | ❌                | ✔️               | <https://github.com/InseeFrLab/rjdworkspace> |
| JDCruncheR    | ❌                | ✔️               | <https://github.com/InseeFr/JDCruncheR>      |
| rjwsacruncher | ✔️                | ✔️               | <https://github.com/AQLT/rjwsacruncher>      |
| rjdmarkdown   | ✔️                | ✔️               | <https://github.com/AQLT/rjdmarkdown>        |

The packages installation code is below:

``` r
# If remotes is not installed
# install.packages("remotes")

install.packages("RJDemetra")
install.packages("rjwsacruncher")
install.packages("rjdmarkdown")

remotes::install_github("InseeFrLab/rjdworkspace")
remotes::install_github("InseeFr/JDCruncheR")

# Under AUS and on Insee computers
install.packages("rjdworkspace", repos = "https://nexus.insee.fr/repository/r-public")
install.packages("JDCruncheR", repos = "https://nexus.insee.fr/repository/r-public")
```

### In version 3

Currently version 3 packages are NOT on CRAN. To install them, you need
to go through Github:

``` r
# If remotes is not installed
# install.packages("remotes")

remotes::install_github("rjdemetra/rjd3toolkit")

remotes::install_github("rjdemetra/rjd3x13")
remotes::install_github("rjdemetra/rjd3tramoseats")

remotes::install_github("rjdemetra/rjd3providers")
remotes::install_github("rjdemetra/rjdemetra3")

remotes::install_github("rjdemetra/rjd3filters")
remotes::install_github("rjdemetra/rjd3x11plus")

remotes::install_github("rjdemetra/rjd3sts")
remotes::install_github("rjdemetra/rjd3highfreq")
remotes::install_github("rjdemetra/rjd3stl")

remotes::install_github("rjdemetra/rjd3revisions")
remotes::install_github("rjdemetra/rjd3bench")
remotes::install_github("rjdemetra/rjd3nowcasting")

remotes::install_github("AQLT/ggdemetra3")
```

### AUS (Insee server) case

### Cas AUS

To install a package on AUS, you can’t use the function
`install_github()`. Therefore:

- either the package is on CRAN or on AUS, it can be installed with the
  function `install.packages()` and with the argument
  `repos = "https://nexus.insee.fr/repository/r-public/"`
- or the package is not available and it must be downloaded at the
  binary format (`.zip`). For this you have to look for the compressed
  folder `.zip` under GitHub.

Example for the package
<span class="RPackages">**{rjd3toolkit}**</span>, you can install the
package:

- on the nexus with the following code:

  ``` r
  install.packages("rjd3toolkit", repos = "https://nexus.insee.fr/repository/r-public/")
  ```

- you need to search under
  <https://github.com/rjdemetra/rjd3toolkit/releases/tag/v3.2.2>
  (*release* Section)

  ``` r
  install.packages("path/.../rjd3toolkit_3.2.2.zip ", repos = NULL, type = "binary")
  ```

- with the binary format `rjd3toolkit_3.2.2.zip` under
  <https://github.com/rjdemetra/rjd3toolkit/releases/tag/v3.2.2>
  (*release* Section), then launch the installation code:

  ``` r
  install.packages("path/to/the/binary/package/.../rjd3toolkit_3.2.2.zip ", repos = NULL, type = "binary")
  ```

# Environment variables

## In Rstudio

To add environment variables in Rstudio, you need to add the variable’s
name and the variable’s value. There are 2 ways to fill it:

- Using the `.Renviron` file:

  - **Launch** the code `file.edit("~/.Renviron")` or
    `usethis::edit_r_environ()` (with the package **usethis** and the
    argument `scope` which egals `"user"` or `"project"` if you are in a
    R project)
  - **Add** the variables to the file (with new lines)
  - **Save** the file

- Using the `.Rprofile` file:

  - **Launch** the code `file.edit("~/.Rprofile")` or
    `usethis::edit_r_profile()` (with the package **usethis** and the
    argument `scope` which egals `"user"` or `"project"` if you are in a
    R project)
  - **Add** the variables with the fonction `Sys.setenv()` (with new
    lines)
  - **Save** the file

### Proxy

ℹ️ On Insee computers, you need to **configure** the proxy and
parameters of Software localisation under Rstudio. The two ways to do
it:

First method (with the `.Renviron`):

- **Launch** the code `file.edit("~/.Renviron")` or
  `usethis::edit_r_environ()` (with the package **usethis** and the
  argument `scope` which egals `"user"` or `"project"` if you are in a R
  project)

- **Add** the parameters (news lines):

  ``` Code
  http_proxy = http://proxy-rie.http.insee.fr:8080/
  https_proxy = http://proxy-rie.http.insee.fr:8080/
  ```

- **Save** and **close** the file

Second method (with the `.Rprofile`) :

- **Launch** the code `file.edit("~/.Rprofile")` or
  `usethis::edit_r_profile()` (with the package **usethis** and the
  argument `scope` which egals `"user"` or `"project"` if you are in a R
  project)

- **Add** the next lines:

  ``` r
  Sys.setenv("http_proxy" = "http://proxy-rie.http.insee.fr:8080/")
  Sys.setenv("https_proxy" = "http://proxy-rie.http.insee.fr:8080/")
  ```

- **Save** the file

### JAVA_HOME

If a new Java version has been installed, you should inform Rstudio of
the Java installation localisation. For this, you should do as to
parameter the proxy. The name of the variable is `JAVA_HOME` and the
value of the variable is `"C:/Users/Software/Java17/jdk17"` (according
to where your java installation is).

## In Windows

In Windows, it could be useful to fill also the environnement variables.

### Proxy

For the environment variables `http_proxy` and `https_proxy` for
Windows, follow these steps:

- Search for “Environment variables”
- Click on the application that appears.
- Add the variables `http_proxy` and `https_proxy` if they don’t exist,
  and modify them if they already do:

![](../img/modify_proxy.png)

### JAVA_HOME

Similarly for the environment variable `JAVA_HOME` for Windows, you have
to:

- Search for “Environment variables”
- Click on the application that appears.
- Add the variable `JAVA_HOME` if it doesn’t exist, and modify is if it
  already does:

![](../img/modify_java_home.png)

### PATH

The environment variable `PATH` in **R** is used to indicate to **R**
where to find the executable files.

When you install a new software (for example JDemetra+, Rtools, Java…)
that Rstudio uses, you have to modify this environment variable:

- **Get** the actual value of the variable `PATH` via the **R** command
  `Sys.getenv("PATH")` (Rstudio returns a succession of addresses as
  `C:/WINDOWS/system32;C:/WINDOWS`)

- **Copy paste** this value after `PATH =` and add the paths towards the
  folder ${\textsf{\color{#006817}{\\\\bin\\\\}}}$ (binary) of the
  software newly installed, by separating them with semicolon (without
  space before or after). For the Rtools installation, the path is
  ${\textsf{\color{#006817}{C:\\\\rtools42\\\\mingw64\\\\bin}}}$
  (depending on where Rtools was installed). You have to add
  `C:\\rtools42\\mingw64\\bin` or `C:/rtools42/mingw64/bin` (In **R**,
  `\` is a special character, so you have to replace the `\` by `/` or
  by `\\`). The path becomes
  `C:/WINDOWS/system32;C:/WINDOWS;C:/rtools42/mingw64/bin`.

- **Modify** the variable with the function `Sys.setenv()`. For Rtools,
  the command to launch is:

  ``` r
  Sys.setenv(PATH = "C:/WINDOWS/system32;C:/WINDOWS;C:/rtools42/mingw64/bin")
  ```

ℹ️ NB: Generally a 32 bits version and a 64 bits version are available
for downloading and installing a software. You need to check your
processor type of your operating system to choose the right folder to
download.

For this, you can launch the command:

``` r
Sys.getenv("R_ARCH")
Sys.info()[["machine"]]
```

According to the result, the version is 32 bits or 64 bits :

| Version | Output |
|---------|--------|
| 64 bits | /x64   |
|         | x86-64 |
|         |        |
| 32 bits | /i386  |
|         | x86_32 |

More information on the variable `PATH` via the page
<https://java.com/fr/download/help/path.xml>.

# Verifications

To ensure that everything works fine, you can launch some example of
**R** code and check that there is no error:

``` r
library("RJDemetra")

myseries <- ipi_c_eu[, "FR"]
x13_model <- x13(myseries) # X-13ARIMA method
ts_model <- tramoseats(myseries) # TRAMO-SEATS method

# Basic plot with the original series, the trend and the SA series
plot(x13_model, type_chart = "sa-trend")
```

To check the Java version we are using on **R**, you can try to install
and use the package **rJava** and launch the command below:

``` r
# If rJava is not installed
install.packages("rJava")
```

If the installation of **rJava** returns an error, it means that Java
was incorrectly installed or incorrectly configured on **R**. You need
to get back to the section [Environment variables](#var_env).

This block of code tests the Java version with which **R** works:

``` r
library("rJava")
.jinit()
.jcall("java/lang/System", "S", "getProperty", "java.runtime.version")
```

Finally, you can consult the Java version installed with which Windows
works (it doesn’t matter to us):

``` r
system("java -version")
```

# Optional installations

Some supplementary installations are optional (that is they are no
mandatory but bring external features):

- [Miktek](https://miktex.org/howto/install-miktex) to produce PDF
  document with Latex
- [Rtools](https://cran.r-project.org/bin/windows/Rtools/rtools42/rtools.html)
  to develop **R** packages and compile the code

# Problems you may encounter

## Problems installing **R** packages

If you get the following error while installing **R** packages:

``` r
install.packages("RJDemetra")
```

    ## Error in eval(expr, envir, enclos): Erreur: the chargement a échoué
    ## Exécution arrêtée
    ## *** arch - x64

The problem doesn’t come from Java but from the **R** package. By
default, the package is installed from a “source” file, it means that
the package is recompiled. For some computing reasons, when compiling by
default, **R** uses the system (Windows) parameters (which doesn’t have
necessarily have the correct Java version).

There are two solutions:

- Compile the package by installing from the binary file:

  ``` r
  install.packages("RJDemetra", type = "binary")
  ```

- Specify that we want to use the local parameters:

  ``` r
  install.packages("RJDemetra", type = "source", INSTALL_opts = "--no-multiarch")
  ```

ℹ️ More information:
<https://github.com/jdemetra/rjdemetra/wiki/Installation-manual>

## The command `library("RJDemetra")` returns an error message

The package <span class="RPackages">\*\*{RJDemetra</span> requires Java
version 8 or higher to work. If another package has been loaded before
<span class="RPackages">**{RJDemetra}**</span> via the function
`library()` and which doesn’t requires an updated Java version, then an
old Java version will be used during all the session (**R** is
refractory to in-session version change). In case of using
<span class="RPackages">**{RJDemetra}**</span> in a program, you have to
specify at the very beginning of the program that **R** must use Java
version 8, via the command:

``` r
# Where Java is installed
Sys.setenv(JAVA_HOME = "C:/Users/Software/Java17/jdk17")
```

or load <span class="RPackages">**{RJDemetra}**</span> first

``` r
# At the beginning of program
library("RJDemetra")
```

Else you have to restart a new **R** session.

## `Error array index = -1`

The message of the type `Error array index = -1` tells that an auxiliary
variable is not found. It can be calendar regressor or other user
defined variables (Easter effect, PSO = pure seasonal outlier…).

## The function `cruncher_and_param(...)` of the <span class="RPackages">**{JDCruncheR}**</span> package returns an error

When you use the function `cruncher_and_param(...)` of the
<span class="RPackages">**{JDCruncheR}**</span> package, you can get the
following error:

    ## Error in eval(expr, envir, enclos): Error in cruncher(workspace = workspace, cruncher_bin_directory = cruncher_bin_directory,  : 
    ##   There is an error in the path to the cruncher bin folder

That means that the path to the cruncher is incorrectly configured. To
solve this, you need to specify to R the path to the cruncher at the
start of the program withe the function `options(...)` :

``` r
options(cruncher_bin_directory = "C:/Users/Software/jwsacruncher-2.2.4-bin/bin")
```

To check that the path is valid, you could use the function
`getOption(...)` :

``` r
getOption("cruncher_bin_directory")
```
