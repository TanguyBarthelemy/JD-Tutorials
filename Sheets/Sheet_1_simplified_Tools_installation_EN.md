Tools installation for seasonal adjustment
================
Tanguy BARTHELEMY

# Context

For seasonal adjustment we recommend using JDemetra+ algorithms

Thus, it is helpful to install the following tools:

- JDemetra+ Graphical User Interface (X13-Arima and Tramo-Seats )

⚠️ No assistance in **SAS** language will be given. ⚠️

# Preliminary

On the computers without administrator rights (*professional computer,
for example*), it is recommended to create a folder **Software** under
${\textsf{\color{#006817}{C:\\\\Users\\\\...\\\\Software}}}$ or directly
under ${\textsf{\color{#006817}{C:\\\\Users\\\\Software}}}$ where all
software will be installed.

⚠️ Warning: when we specify an **absolute** path for a software
(JDemetra+, Java, …) in a program, a shortcut, a variable, …, it must be
modified each time any root repository is moved.

# Installation of [JDemetra+](https://github.com/jdemetra/jdemetra-app)

JDemetra+ is a collection of Java programs used for time series analysis
and more specifically for seasonal adjustment. JDemetra+ is delivered in
the form of an GUI (Graphical User Interface) but there is also a
cruncher (executable).

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

- [v3.2.1](https://github.com/jdemetra/jdplus-main/releases/tag/v3.2.1):
  the new JDemetra+ version with new features and a new GUI

JDemetra+ v2.2.4 require Java version $\geq 8$ while v3.2.1 requires
Java version $\geq 17$:

| JDemetra+ version | Java version |
|-------------------|--------------|
| v2.2.4            | $\geq 8$     |
| v3.2.1            | $\geq 17$    |

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
v3.2.1, …), you can rename the unzipped folder in
${\textsf{\color{#006817}{\\\\nbdemetra-2.2.4\\\\}}}$ and
${\textsf{\color{#006817}{\\\\nbdemetra-3.2.1\\\\}}}$.

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

ℹ️ Remark

The version 3.2.1 of JDemetra+ contains a JDemetra+ version 3.2.1
contains a jdk 17 (java 17 version) packaged in
[.zip](https://github.com/jdemetra/jdplus-main/releases/tag/v3.2.1). So
to use the interface, it is not necessary to install Java 17.
