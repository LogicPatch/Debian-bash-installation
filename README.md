
![](../debian-logo.gif)   

# Debian 13 (trixie) customizations via bash scripts  

The scripts are intended to help with various customizations such as adding the most important repositories, various desktop environments or programs.

## Flexibility
The individual scripts contain several of the most important tools and ask you which ones should be installed. This allows you to simply skip unwanted programs.

## Reproducibility
If you always install the same tools on multiple PCs, you can ensure that all PCs have been configured and installed identically.

## How to use  
After cloning the Git repo, the scripts are in the directory.
The scripts themselves can easily be executed using  
```./<respective.script.sh>```  
The individual scripts serve the following functions

### 00-root.Softwarequellen.sh &emsp; (00-root.Softwaresources.sh) 
**Note: This script must be run as root via the su-Command.**  

* Automatically: &emsp; Add the user with admin rights to the /etc/sudoers file
* Automatically: &emsp; Add Software repositories &emsp; *non-free-firmware &emsp; contrib &emsp; non-free*
* By query: &emsp; &emsp; &ensp; Add Debian Multimedia Repository
* Automatically: &emsp; Install Multilib (i386)
* By query: &emsp; &emsp; &ensp; Install Flatpak-Package-Manager
* Automatically: &emsp; Update Debian-OS

### 01-Grundsystem.sh &emsp; (english: 01-Basicsystem.sh)
* By query: &emsp;	Install Basic-Programms (like linux-headers, ssh, apt-transport-https etc.)
* By query: &emsp; Install codecs for game, image and video formats
* By query: &emsp; Install Printer-Tools for HP-Printer
* By query: &emsp; Laptop Usage - Increase battery life with pre-charging and faster boot
* By query: &emsp; Install an Editor vim, Visual Studio Code or/and emacs
* By query: &emsp; Basic-tools for WLAN
* By query: &emsp; Install Support for Grafik (nvidia- or amd-drivers, virtualbox-guest-addition etc. )

### 02-gnome.sh  
* By query: &emsp; Additionally, a complete installation of the gnome desktop or a reinstallation after an error
* By query: &emsp; More applications specifically for gnome
* By query: &emsp; Install Themes, Icons and Fonts for Gnome
* By query: &emsp; Choosing a display manager (LightDM, GDM, SDDM or perhaps none)
* By query: &emsp; Choosing a File-manager (Thunar, Nautilus, Dolphin or perhaps none)
* By query: &emsp; Choosing a Calendar-application (gnome-calendar, korganizer, calindori or perhaps none)
* By query: &emsp; Choosing an Editor (gedit, kate, geany or perhaps none)
* By query: &emsp; Choosing a Image-viewer (eog, gwenview, lximage, sxiv or perhaps none)
* By query: &emsp; Choosing a PDF-Reader (papers, okular, mupdf or perhaps none)
* By query: &emsp; Choosing a Screenshot-tool (flameshot, spectacle, scrot, xfce4-screenshooter or perhaps none)

### 03-Anwendungen.sh &emsp; (english: 03-Applications.sh)
* 