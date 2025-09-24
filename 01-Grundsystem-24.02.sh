#!/bin/bash




# Farbige echo-Ausgaben (nur bei echo -e)   https://gist.github.com/lomedil/41b739a74b481c4b0a47fca09f42bea3
KF='\e[0m'			    # Keine Farbe. (Farbe zurücksetzen)
iflil='\e[1;95m'	    # intensives fettes Lila (verschiedene Versionen)
ifgrn='\e[1;92m'	    # intensives fettes Grün (bereits installierte Pakete)
ifblu='\e[1;94m'	    # intensives fettes Blau (neu zu installierende Pakete)
iftks='\e[1;96m'	    # intensives fettes Türkis (Überprüfungsmeldung) 
itks='\e[0;96m'		    # intensives Türkis (Paketnamen)
ifrot='\e[1;91m'	    # intensives fettes Rot (Fehler)
ifyellow='\e[1;93m'     # intensives fettes Gelb

#DISTRO='?????'             # Debian 16 Coming up
#DISTRO='duke'              # Debian 15 Unstable/sid
#DISTRO='forky'             # Debian 14 Testing
#DISTRO='trixie'            # Debian 13 Stable
#DISTRO='bookworm'  		# Debian 12 Oldstable

# ----------------------------------------------------------------------------------


# Benutzername
user=$USER
# Home-Verzeichnis
home=$HOME
# Name des Login-Users
loginuser=$LOGNAME


#=========================   ToDo: NVidia-Treiber    ================================
read -p "Sollen die Grundlegenden Programme installiert werden (Y/n)?: " basic
read -p "Sollen Codecs für Spiel-, Bild- und Videoformate (mkv,mp4 usw.) installiert werden (Y/n)?: " codecs
read -p "Sollen Basistools für die Nutzung von Druckern bzw. Scannern installiert werden) (Y/n)?: " cups
read -p "Sollen Basistools für das WLAN installiert werden (nötig falls der PC WLAN-fähig sein soll) (Y/n)?: " wlan
read -p "Soll Debian für die Nutzung auf dem Laptop bereit gemacht werden (Akkulaufzeit, Schnellere Zugriffszeiten/Boot?) (Y/n)?: " tlp
read -p "Soll der Editor vim/neovim installiert werden (Y/n)?: " vim
read -p "Soll die Entwicklungs-IDE Visual Studio Code installiert werden (Y/n)?: " visualstudio
read -p "Soll der Editor emacs installiert werden (Y/n)?: " emacs
if [[ $emacs == @(Y|y|'') ]] ; then
    read -p "Soll zusätzlich zu emacs noch doom-emacs installiert werden? (Y/n): " doom
echo ''
read -p "Welcher Grafiktreiber soll installiert werden?\n 1 NVidia     - Für NVidia muss noch getestet werden, welche Pakete notwendig sind.\n 2 AMD        - Grafikkarten und APUs von AMD\n 3 Intel      - APUs von Intel\n 4 VirtualBox - Die GuestAdditions für den Einsatz in der VirtualBox\n 5 Gnome-Boxes - Für einen Einsatz als Gast in Gnome-Boxes\n 6 Keine Treiber für die Grafik installieren\n\n 1, 2, 3, 4, 5 oder 6? " grafik



#basic = input(yellow + 'Sollen die Grundlegenden Programme installiert werden (Y/n)?: ' + reset)
#codecs = input(yellow + 'Sollen Codecs für Spiel-, Bild- und Videoformate (mkv,mp4 usw.) installiert werden (Y/n)?: ' + reset)
#cups = input(yellow + 'Sollen Basistools für die Nutzung von Druckern bzw. Scannern installiert werden)? (Y/n): ' + reset)
#wlan = input(yellow + 'Sollen Basistools für das WLAN installiert werden (nötig falls der PC WLAN-fähig sein soll)? (Y/n): ' + reset)
#tlp = input(yellow + 'Soll Debian für die Nutzung auf dem Laptop bereit gemacht werden? (Akkulaufzeit, Schnellere Zugriffszeiten/Boot?) (Y/n): ' + reset)
#vim = input(yellow + 'Soll der Editor vim/neovim installiert werden? (Y/n): ' + reset)
#visualstudio = input(yellow + 'Soll die Entwicklungs-IDE Visual Studio Code installiert werden? (Y/n): ' + reset)
#emacs = input(yellow + 'Soll der Editor emacs installiert werden? (Y/n): ' + reset)
#if emacs in ('Y', 'y', ''):
#    doom = input(yellow + 'Soll zusätzlich zu emacs noch doom-emacs installiert werden? (Y/n): ' + reset)
#print()
#grafik = input(yellow + 'Welcher Grafiktreiber soll installiert werden?\n 1 NVidia     - Für NVidia muss noch getestet werden, welche Pakete notwendig sind.\n 2 AMD        - Grafikkarten und APUs von AMD\n 3 Intel      - APUs von Intel\n 4 VirtualBox - Die GuestAdditions für den Einsatz in der VirtualBox\n 5 Gnome-Boxes - Für einen Einsatz als Gast in Gnome-Boxes\n 6 Keine Treiber für die Grafik installieren\n\n 1, 2, 3, 4, 5 oder 6? ' + reset)




# Grundlegende Programme installieren      [git, gparted, htop, ncdu, nmap] Schnon vorinstalliert: efibootmgr, imagemagick, rsync
if [[ $basic == @(Y|y|'') ]] ; then
    echo -e ${ifgrn}'>>>>> Grundlegende Programme werden installiert.'${KF}
        sleep 3
        sudo apt install -y apt-transport-https git gparted htop hunspell hunspell-de-de linux-headers-$(uname -r) module-assistant ncdu nmap openssh-server python3-pip software-properties-common wget xinput xterm zvbi
        # Starten von daemons
        sudo systemctl enable ssh.service
        # ERROR:  libavcodec-extra
fi
#if basic in ('Y', 'y', ''):
#    print()
#    print(green + '>>>>> Grundlegende Programme werden installiert.' + reset)
#    time.sleep(3)
#    os.system('sudo apt-get install -y apt-transport-https git gparted htop hunspell hunspell-de-de linux-headers-$(uname -r) module-assistant ncdu nmap openssh-server python3-pip software-properties-common wget xinput xterm zvbi')
#    # Starten von daemons
#    os.system('sudo systemctl enable ssh.service')
## ERROR:  libavcodec-extra




# Codecs für Spiel- Bild- und Videoformate installieren             [ffmpeg, gstreamer..., libdvdcss2, libdvdread]
if codecs in ('Y', 'y', ''):
    print()
    print(green + '>>>>> Codecs für die einzelnen Spiel-, Bild- und Videoformate werden installiert ' + reset)
    os.system('sudo apt-cache search videostab')
    VIDEOSTAB = input(yellow + 'Welche libopencv-videostab-Version wird aktuell verwendet? (406 von 10.06.2023?) ' + reset)
    os.system('sudo apt-get install -y ffmpeg ffmpegthumbnailer ffmpegthumbs flite gnome-video-effects gstreamer1.0-qt5 gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-libav libavc1394-tools libdvdcss2 libdvdread8 libgstreamer-opencv1.0-0 libopencv-videostab' + VIDEOSTAB + ' libopus0 opencv-data opus-tools speex')




# Basistools für Druckernutzung       [hplip, openprinting-ppds, printer-driver-gutenprint, system-config-printer]   n/v:  gutenprint, openprint
if cups in ('Y', 'y', ''):
    print()
    print(green + '>>>>> Basistools fuer die Drucker- bzw. Scannernutzung werden installiert.' + reset)
    time.sleep(3)
    os.system('sudo apt-get install -y hplip foomatic-db foomatic-db-engine openprinting-ppds printer-driver-gutenprint printer-driver-hpijs printer-driver-all sane sane-airscan system-config-printer xsane')




# Laptop-Nutzung - Akkulaufzeit erhöhen Vorausladen und schnellerer Boot   [preload, tlp, zram-tools]  vorinstalliert: powertop     n/v: zram-generator
if tlp in ('Y', 'y', ''):
    print()
    print(green + '>>>>> Notebook-Tools werden installiert.' + reset)
    time.sleep(3)
    os.system('sudo apt-get install -y acpi acpid acpi-support preload tlp zram-tools')




# vim installieren                                  [vim, vim-python-jedi, vim-syntastic, vim-syntax-gtk]
if vim in ('Y', 'y', ''):
    print()
    fileName1=r'/usr/bin/vim'
    fileName2=r'/usr/share/vim/vimfiles/spell/de.utf-8.spl'
    if os.path.exists(fileName1 and fileName2):
        print(rot + '>>>>> Der Editor vim wurde bereits installiert, mache nichts.' + reset)
    else:
        print(green + '>>>>> Der Editor vim wird installiert.' + reset)
        time.sleep(3)
        os.system('sudo apt-get install -y neovim vim vim-python-jedi vim-syntastic vim-syntax-gtk')




# Visual Studio Code installieren
if visualstudio in ('Y', 'y', ''):
    print()
    fileName=r'/var/lib/flatpak/app/com.visualstudio.code'
    if os.path.exists(fileName):
        print(rot + '>>>>> Visual Studio Code wurde bereits installiert, mache nichts.' + reset)
    else:
        print(green + '>>>>> Visual Studio Code wird installiert.' + reset)
        time.sleep(3)
        os.system('sudo flatpak install -y com.visualstudio.code')




# emacs installieren
if emacs in ('Y', 'y', ''):
    print()
    fileName=r'/usr/bin/emacs'
    if os.path.exists(fileName):
        print(rot + '>>>>> Der Editor emacs wurde bereits installiert, mache nichts.' + reset)
    else:
        print(green + '>>>>> Der Editor emacs wird installiert.' + reset)
        time.sleep(3)
        os.system('sudo apt-get install -y emacs emacs-el emacs-goodies-el elpa-python-environment')
        # Doom-emacs
        if doom in ('Y', 'y', ''):
            print(green + '>>>>> doom für emacs wird installiert' + reset)
            #fileName='"/home/" + doomemacs + "/.emacs.d/"'
            fileName='.emacs.d'
            if os.path.exists(fileName):
                #os.system('rm -rf /home/' + doomemacs + '/.emacs.d/')
                os.system('cd && rm -rf .emacs.d/')
            os.system('cd && git clone --depth 1 https://github.com/hlissner/doom-emacs .emacs.d')
            print(yellow + '>>>>> Alle Fragen fuer die Installation von doom mit Ja bestätigen: ' + reset)
            os.system('~/.emacs.d/bin/doom install')
            print(yellow + '>>>>> Der Pfad zu .emacs/bin soll noch den Pfadvariablen hinzugefügt werden.\n Dies geschieht durch Eintragen folgender Zeile entweder in ~/.bashrc oder  ~/.zshrc:\n    export PATH=$HOME/.emacs.d/bin:$PATH ')




# Grafkkarte bzw. Grafikchip installieren
print()
##### NVIDIA
if grafik=='1':
    print(green + '>>>>> Für NVidia muss noch getestet werden, welche Pakete notwendig sind.' + reset)
    time.sleep(3)
    print(green + 'Falls man sich anschauen möchte, welcher Grafikkartentreiber notwendig ist.' + reset)
    os.system('lspci -nn | egrep -i "3d|display|vga"')
    print()
    time.sleep(3)
    os.system('sudo apt-get install -y autoconf automake bison build-essential flex gcc-12-locales gcc-multilib libtool linux-headers-$(uname -r) make')
    os.system('sudo apt-get install -y nvidia-driver nvidia-opencl-common nvidia-settings nvidia-vdpau-driver primus primus-nvidia')

##### AMD
elif grafik=='2':
    print(green + '>>>>> AMD - Treiber für die Grafikkarten und APUs werden installiert.' + reset)
    time.sleep(3)
    os.system('sudo apt-get install -y mesa-opencl-icd xserver-xorg-video-ati xserver-xorg-video-radeon xserver-xorg-video-amdgpu')

##### INTEL
elif grafik=='3':
    print(green + '>>>>> Intel - Treiber für APUs von Intel werden installiert' + reset)
    time.sleep(3)
    os.system('sudo apt-get install -y mesa-opencl-icd xserver-xorg-video-intel')

##### VIRTUALBOX
elif grafik=='4':
    print(green + '>>>>> VirtualBox - GuestAdditions für den Einsatz in der VirtualBox werden installiert' + reset)
    time.sleep(3)
    os.system('sudo apt-get install -y dkms virtualbox-guest-additions-iso')
    print(yellow + '>>>>> Nach dem Einlegen der Gasterweiterungen muss noch ein    cd /media/cdrom/   und     sudo sh VBoxLinuxAdditions.run     ausgeführt werden.' + reset)
    # Pakete   virtualbox-guest-utils virtualbox-guest-x11   waren nicht vorhanden

##### GNOME-BOXES
elif grafik=='5':
    print(green + '>>>>> Gnome-Boxes - Es wird alles für einen Einsatz als Gast-System in Gnome-Boxes bereit gemacht. ' + reset)
    time.sleep(3)
    os.system('sudo apt-get install -y spice-vdagent spice-webdavd xserver-xorg-video-qxl xserver-xspice')

else:
    pass




# Basistools fuer WLAN              [netctl wpagui]        vorinstalliert: wireless-regdb, wireless_tools, wpasupplicant           n/v: wpa_supplicant, wpa_supplicant-gui
# !!!!!!!!!!!!!!!!!!!!!!!!!!! Tools für das WLAN werden am Ende des Scripts ausgeführt, da sonst kein WLAN mehr zur Verfügung steht   !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
if wlan in ('Y', 'y', ''):
    print()
    print(green + '>>>>> Basistools für das WLAN werden installiert.' + reset)
    time.sleep(3)
    os.system('sudo apt-get install -y netctl wpagui')
    #os.system('systemctl enable NetworkManager')
