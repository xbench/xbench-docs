---
title: "Installing and Uninstalling"
date: 2017-08-06T19:59:39+02:00
weight: 2
draft: true
---

## Installing ApSIC Xbench

ApSIC Xbench 3.0 is available in 32-bit and 64-bit editions.

The 32-bit
edition can be installed on 32-bit and 64-bit Windows machines. The 64-
bit edition can only be installed on 64-bit machines.

ApSIC Xbench is
supported on Windows XP, Windows Vista, Windows 7, Windows 8, and Windows 10.
It is also supported on Windows 2003, Windows 2008, Windows 2012 and Windows 2016.

To install ApSIC Xbench, please do the following:

Run the installation executable (for example,
Setup.Xbench.x64.3.0.1080.exe). The installer welcome screen will
appear.

![Installer: Welcome] (/user-guide/installer-welcome.jpg)

Click **Next**. The license window appears. Please read carefully the license
information to ensure you accept its terms.
If the terms of the license are acceptable to you, please click **I Agree**. If
they are not acceptable, please click **Cancel**.

![Installer: Choose install location] (/user-guide/installer-choose-location.jpg)

Change the destination folder if necessary and click **Install** to continue.

Files are copied to the selected destination and the following window
appears.

![Installer: Finished] (/user-guide/installer-finished.jpg)

Click **Finish** to close the Window and start using ApSIC Xbench.

A link to the ApSIC Xbench executable is installed on the **Start**-
>**Programs**->**ApSIC Tools**->**Xbench** path, together with the
documentation.

## Uninstalling ApSIC Xbench

To uninstall ApSIC Xbench, please do the following:

1. Go to the Windows **Control Panel** and open the **Add/Remove
   Programs** icon.
2. Look for *ApSIC Xbench 3.0* in the list and click the **Change or
   Remove** button.
3. When you receive a confirmation message, click **Yes**.

## Unattended Installation

You can perform an unattended installation of ApSIC Xbench using the
`/S` switch from the command line.

	c:\>Setup.Xbench.x64.3.0.exe /S

If you wish to specify a different installation directory, you can do so
using the `/D` switch.

	c:\>Setup.Xbench.x64.3.0.exe /S /D=[install_directory_path]

Please note that the `/S` and `/D` switches are **case-sensitive**!
