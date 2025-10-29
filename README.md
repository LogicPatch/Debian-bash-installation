
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
* By query: &emsp; Webbrowser firefox &emsp; &emsp; (newest Version with Flatpak)
* By query: &emsp; Webbrowser chromium
* By query: &emsp; Webbrowser brave &emsp; &emsp; (Flatpak-Version)
* By query: &emsp; Webbrowser google-chrome &emsp; &emsp; (Flatpak-Version)
* By query: &emsp; E-Mailclient thunderbird
* By query: &emsp; E-Mailclient geary
* By query: &emsp; Messenger telegram
* By query: &emsp; Messenger signal &emsp; &emsp; (Flatpak-Version)
* By query: &emsp; Messenger viber &emsp; &emsp; (Flatpak-Version)
* By query: &emsp; Messenger & VoIP-App discord
* By query: &emsp; Video-Conferencing-App Zoom &emsp; &emsp; (Flatpak-Version)
* By query: &emsp; Video-Player showtime
* By query: &emsp; Video-Player vlc
* By query: &emsp; Video-Player celluloid
* By query: &emsp; Video-Player parole
* By query: &emsp; Audio-Player rhythmbox
* By query: &emsp; Audio-Player musicpod
* By query: &emsp; Audio-file-Converter soundconverter
* By query: &emsp; Color-Picker eyedropper
* By query: &emsp; Color-Picker gpick
* By query: &emsp; Image-Editor gimp
* By query: &emsp; Image-Editor krita
* By query: &emsp; Screen-Recorder simplescreenrecorder
* By query: &emsp; Video-Editor handbrake
* By query: &emsp; Video-Editor kdenlive
* By query: &emsp; Video-Editor openshot
* By query: &emsp; Emulator wine
* By query: &emsp; Gaming-Platform steam &emsp; &emsp; (Flatpak-Version)
* By query: &emsp; Gaming-Platform lutris &emsp; &emsp; (Flatpak-Version)
* By query: &emsp; Remote-Desktop-Software anydesk &emsp; &emsp; (Flatpak-Version)
* By query: &emsp; Remote-Desktop-Software rustdesk &emsp; &emsp; (Flatpak-Version)
* By query: &emsp; Remote-Desktop-Software teamviewer &emsp; &emsp; (By Webseite)
* By query: &emsp; Teminal-File-Manager ranger
* By query: &emsp; Terminal-File-Manager yazi &emsp; &emsp; (Flatpak-Version)
* By query: &emsp; Shell zsh
* By query: &emsp; Shell-Terminal ghostty
* By query: &emsp; Shell-Terminal kitty
* By query: &emsp; Shell-Terminal tilix
* By query: &emsp; Shell-Terminal urxvt
* By query: &emsp; Systemmonitor conky
* By query: &emsp; Desktop-Wiki zim
* By query: &emsp; Notes xpad
* By query: &emsp; Password-Manager keepassxc
* By query: &emsp; Password-Manager gnome-passwordsafe
* By query: &emsp; IDE pycharm &emsp; &emsp; (Flatpak-Version)
* By query: &emsp; IDE sublime-text &emsp; &emsp; (By external Repository)
* By query: &emsp; Chat-Client weechat
* By query: &emsp; Virtualization-Platform KVM
* By query: &emsp; Virtualization-Platform virtualbox
* By query: &emsp; Typesetting-System texlive/latex