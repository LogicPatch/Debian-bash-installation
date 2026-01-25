

# Inhalt
# firefoxESR                    (vorinstalliert)
# firefox                       (neueste Version über Flatpak)
# chromium
# brave                         (Flatpak)
# google-chrome                 (Flatpak)
# thunderbird
# geary
# telegram
# signal                        (Flatpak)
# viber                         (Flatpak)
# discord
# Microsoft Teams               (2023.03.20 Nur noch die PWA ; Weboberfläche)
# Zoom                          (Flatpak)
# showtime
# vlc
# celluloid
# parole
# rhythmbox
# musicpod
# soundconverter
# eyedropper
# gpick
# gimp
# krita
# simplescreenrecorder
# handbrake
# kdenlive
# openshot
# wine
# steam                         (Flatpak)
# lutris                        (Flatpak)
# anydesk                       (Flatpak)
# rustdesk                      (Flatpak)
# teamviewer                    (Über Webseite)
# ranger
# yazi                          (Flatpak)
# zsh
# ghostty
# kitty
# tilix
# urxvt
# conky
# zim
# xpad
# keepassxc
# gnome-passwordsafe
# pycharm Entwicklungs-IDE      (Flatpak)
# sublime-text Entwicklungs-IDE (Repository musste hinzugefügt werden)
# weechat
# KVM
# virtualbox
# texlive/latex



# Farbige echo-Ausgaben (nur bei echo -e)   https://gist.github.com/lomedil/41b739a74b481c4b0a47fca09f42bea3
KF='\e[0m'			    # Keine Farbe. (Farbe zurücksetzen)
iflil='\e[1;95m'	    # intensives fettes Lila (verschiedene Versionen)
ifgrn='\e[1;92m'	    # intensives fettes Grün (bereits installierte Pakete)
ifblu='\e[1;94m'	    # intensives fettes Blau (neu zu installierende Pakete)
iftks='\e[1;96m'	    # intensives fettes Türkis (Überprüfungsmeldung) 
itks='\e[0;96m'		    # intensives Türkis (Paketnamen)
ifrot='\e[1;91m'	    # intensives fettes Rot (Fehler)
ifyellow='\e[1;93m'     # intensives fettes Gelb

#DISTRO='?????'             # Debian 15 Coming up
#DISTRO='forky'             # Debian 14 Testing
#DISTRO='trixie'            # Debian 13 Stable
#DISTRO='bookworm'  		# Debian 12 Oldstable


#------------------------------------------------------------------------------------------



echo ""
read -p "Soll statt der ESR-Version, die neueste Version des Webbrowsers Firefox installiert werden? (Y/n): " firefox
read -p "Soll der Webbrowser chromium installiert werden? (Y/n): " chromium
read -p "Soll der Webbrowser brave installiert werden? (Y/n): " brave
read -p "Soll der Webbrowser google-chrome installiert werden? (Y/n): " chrome
read -p "Soll der E-Mailclient thunderbird installiert werden? (Y/n): " thunderbird
read -p "Soll der E-Mailclient geary installiert werden? (Y/n): " geary
read -p "Soll der Messenger telegram installiert werden? (Y/n): " telegram
read -p "Soll der Messenger signal installiert werden? (Y/n): " signal
read -p "Soll der Messenger viber installiert werden? (Y/n): " viber
read -p "Soll der Messenger discord installiert werden? (Y/n): " discord
read -p "Soll der Messenger Zoom installiert werden? (Y/n): " zoom
read -p "Soll der Videoplayer showtime installiert werden? (Y/n): " showtime
read -p "Soll der Videoplayer mpv installiert werden? (Y/n): " mpv
read -p "Soll der Videoplayer vlc installiert werden? (Y/n): " vlc
read -p "Soll der Videoplayer celluloid installiert werden? (Y/n): " celluloid
read -p "Soll der Videoplayer parole installiert werden? (Y/n): " parole
read -p "Soll der Audioplayer rhythmbox installiert werden? (Y/n): " rhythmbox
read -p "Soll der Audioplayer musicpod installiert werden? (Y/n): " musicpod
read -p "Soll das Programm soundconverter installiert werden? (Y/n): " soundconverter
read -p "Soll das Programm eyedropper installiert werden? (Y/n): " eyedropper
read -p "Soll das Programm gpick installiert werden? (Y/n): " gpick
read -p "Soll das Bildbearbeitungsprogramm gimp installiert werden? (Y/n): " gimp
read -p "Soll das Bildbearbeitungsprogramm krita installiert werden? (Y/n): " krita
read -p "Soll der Desktoprecorder simplescreenrecorder installiert werden? (Y/n): " ssrecorder
read -p "Soll das Videobearbeitungs-Programm HandBrake installiert werden? (Y/n): " handbrake
read -p "Soll das Videoschnitt-Programm kdenlive installiert werden? (Y/n): " kdenlive
read -p "Soll das Videoschnitt-Programm openshot installiert werden? (Y/n): " openshot
read -p "Sollen die Emulatoren Wine und playonlinux installiert werden? (Y/n): " wine
read -p "Soll die Spieleplattform lutris installiert werden? (Y/n): " lutris
read -p "Soll die Spieleplattform steam installiert werden? (Y/n): " steam
read -p "Soll die Remotesoftware AnyDesk installiert werden? (Y/n): " anydesk
read -p "Soll die Remotesoftware RustDesk installiert werden? (Y/n): " rustdesk
read -p "Soll die Remotesoftware Teamviewer für den privaten Gebrauch installiert werden? (Y/n): " teamviewer
read -p "Soll der Terminal-Dateimanager ranger installiert werden? (Y/n): " ranger
read -p "Soll der Terminal-Dateimanager yazi installiert werden? (Y/n): " yazi
read -p "Soll die Shell zsh installiert werden? (Y/n): " zsh
read -p "Soll das Terminal ghostty installiert werden? (Y/n): " ghostty
read -p "Soll das Terminal kitty installiert werden? (Y/n): " kitty
read -p "Soll das Terminal tilix installiert werden? (Y/n): " tilix
read -p "Soll das Terminal urxvt installiert werden? (Y/n): " urxvt
read -p "Soll der Systemmonitor conky installiert werden? (Y/n): " conky
read -p "Soll der Markdown-Editor zim installiert werden? (Y/n): " zim
read -p "Soll die Notizzettel-App xpad installiert werden? (Y/n): " xpad
read -p "Soll der Passwortmanager keepassxc installiert werden? (Y/n): " keepassxc
read -p "Soll der Passwortmanager gnome-passwortsafe installiert werden? (Y/n): " gsafe
read -p "Soll die Community-Version der Python-IDE pycharm installiert werden? (Y/n): " pycharm
read -p "Soll die Entwicklungs-IDE Sublime Text installiert werden? (Y/n): " sublime
read -p "Soll der IRC-Chatclient weechat installiert werden? (Y/n): " weechat
read -p "Soll die Virtualisierungsumgebung kvm/qemu/virt-manager installiert werden? (Y/n): " kvm
read -p "Soll die Virtualisierungsumgebung Virtualbox installiert werden? (Y/n): " vbox
read -p "Soll das Textsatzsystem latex/texlive installiert werden? (Y/n): " texlive
echo ""




# Firefox über Flatpak
case $firefox in
    [Yy]*|"")
        echo ''
        if [ -d /var/lib/flatpak/app/org.mozilla.firefox ]; then
            echo -e ${ifrot}'>>>>> Die neueste Version des Firfox wurde bereits installiert, mache nichts.'${KF}
        else
            echo -e ${ifgrn}'>>>>> Die neueste Version des Webbrowsers Firefox wird installiert.'${KF}
            sleep 3
            sudo flatpak install -y org.mozilla.firefox
        fi
esac




# chromium installieren
case $chromium in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/chromium ]; then
            echo -e ${ifrot}'>>>>> Der Webbrowser chromium wurde bereits installiert, mache nichts.'${KF}
        else
            echo -e ${ifgrn}'>>>>> Der Webbrowser chromium wird installiert.'${KF}
            sleep 3
            sudo apt install -y chromium chromium-l10n
        fi
esac




# Brave-Browser über Flatpak
case $brave in
    [Yy]*|"")
        echo ''
        if [ -d /var/lib/flatpak/app/com.brave.Browser ]; then
            echo -e ${ifrot}'>>>>> Der Webbrowser brave wurde bereits installiert, mache nichts.'${KF}
        else
            echo -e ${ifgrn}'>>>>> Der Webbrowser brave wird installiert.'${KF}
            sleep 3
            sudo flatpak install -y com.brave.Browser
        fi
esac




# Google-Chrome über Flatpak
case $chrome in
    [Yy]*|"")
        echo ''
        if [ -d /var/lib/flatpak/app/com.google.Chrome ]; then
            echo -e ${ifrot}'>>>>> Der Webbrowser google-chrome wurde bereits installiert, mache nichts.'${KF}
        else
            echo -e ${ifgrn}'>>>>> Der Webbrowser google-chrome wird installiert.'${KF}
            sleep 3
            sudo flatpak install -y com.google.Chrome
        fi
esac




# thunderbird installieren
case $thunderbird in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/thunderbird ]; then
            echo -e ${ifrot}'>>>>> Der E-Mailclient thunderbird wurde bereits installiert, mache nichts.'${KF}
        else
            echo -e ${ifgrn}'>>>>> Der E-Mailclient thunderbird wird installiert.'${KF}
            sleep 3
            sudo apt install -y thunderbird thunderbird-l10n-de
        fi
esac




# geary installieren
case $geary in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/geary ]; then
            echo -e ${ifrot}'>>>>> Der E-Mailclient geary wurde bereits installiert, mache nichts.'${KF}
        else
            echo -e ${ifgrn}'>>>>> Der E-Mailclient geary wird installiert.'${KF}
            sleep 3
            sudo apt install -y geary
        fi
esac




# Telegram-Desktop
case $telegram in
    [Yy]*|"")
        echo ''
        if [ -d /var/lib/flatpak/app/org.telegram.desktop ]; then
            echo -e ${ifrot}'>>>>> Der Messenger telegram wurde bereits installiert, mache nichts.'${KF}
        else
            echo -e ${ifgrn}'>>>>> Der Messenger telegram wird installiert.'${KF}
            sleep 3
            sudo flatpak install -y org.telegram.desktop
        fi
esac




# signal-desktop (Flatpak)
case $signal in
    [Yy]*|"")
        echo ''
        if [ -d /var/lib/flatpak/app/org.signal.Signal ]; then
            echo -e ${ifrot}'>>>>> Der Messenger signal wurde bereits installiert, mache nichts.'${KF}
        else
            echo -e ${ifgrn}'>>>>> Der Messenger signal wird installiert.'${KF}
            sleep 3
            sudo flatpak install -y org.signal.Signal
        fi
esac




# viber über Flatpak
case $viber in
    [Yy]*|"")
        echo ''
        if [ -d /var/lib/flatpak/app/com.viber.Viber ]; then
            echo -e ${ifrot}'>>>>> Der Messenger viber wurde bereits installiert, mache nichts.'${KF}
        else
            echo -e ${ifgrn}'>>>>> Der Messenger viber wird installiert.'${KF}
            sleep 3
            sudo flatpak install -y com.viber.Viber
        fi
esac




# discord über Flatpak
case $discord in
    [Yy]*|"")
        echo ''
        if [ -d /var/lib/flatpak/app/com.discordapp.Discord ]; then
            echo -e ${ifrot}'>>>>> Der Messenger discord wurde bereits installiert, mache nichts.'${KF}
        else
            echo -e ${ifgrn}'>>>>> Der Messenger discord wird installiert.'${KF}
            sleep 3
            sudo flatpak install -y com.discordapp.Discord
        fi
esac




# Zoom installieren
case $zoom in
    [Yy]*|"")
        echo ''
        if [ -d /var/lib/flatpak/app/us.zoom.Zoom ]; then
            echo -e ${ifrot}'>>>>> Der Messenger Zoom wurde bereits installiert, mache nichts.'${KF}
        else
            echo -e ${ifgrn}'>>>>> Der Messenger Zoom wird installiert.'${KF}
            sleep 3
            sudo flatpak install -y us.zoom.Zoom
        fi
esac




# showtime-Videoplayer installieren
case $showtime in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/showtime ]; then
            echo -e ${ifrot}'>>>>> Der Videoplayer showtime wurde bereits installiert, mache nichts.'${KF}
        else
            echo -e ${ifgrn}'>>>>> Der Videoplayer showtime wird installiert.'${KF}
            sleep 3
            sudo apt install -y showtime
        fi
esac




# mpv-Videoplayer installieren
case $mpv in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/mpv ]; then
            echo -e ${ifrot}'>>>>> Der Videoplayer mpv wurde bereits installiert, mache nichts.'${KF}
        else
            echo -e ${ifgrn}'>>>>> Der Videoplayer mpv wird installiert.'${KF}
            sleep 3
            sudo apt install -y mpv
        fi
esac




# vlc-Videoplayer installieren
case $vlc in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/vlc ]; then
            echo -e ${ifrot}'>>>>> Der Videoplayer vlc wurde bereits installiert, mache nichts.'${KF}
        else
            echo -e ${ifgrn}'>>>>> Der Videoplayer vlc wird installiert.'${KF}
            sleep 3
            sudo apt install -y vlc vlc-plugin-base vlc-plugin-access-extra vlc-plugin-qt vlc-plugin-skins2 vlc-plugin-video-output vlc-l10n vlc-data
        fi
esac




# celluloid installieren
case $celluloid in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/celluloid ]; then
            echo -e ${ifrot}'>>>>> Der Videoplayer celluloid wurde bereits installiert, mache nichts.'${KF}
        else
            echo -e ${ifgrn}'>>>>> Der Videoplayer celluloid wird installiert.'${KF}
            sleep 3
            sudo apt install -y celluloid
        fi
esac




# Parole-Videoplayer installieren
case $parole in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/parole ]; then
            echo -e ${ifrot}'>>>>> Der Videoplayer parole wurde bereits installiert, mache nichts.'${KF}
        else
            echo -e ${ifgrn}'>>>>> Der Videoplayer parole wird installiert.'${KF}
            sleep 3
            sudo apt install -y parole libxfce4util-bin libxfce4ui-utils
        fi
esac




# Rhythmbox-Audioplayer installieren
case $rhythmbox in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/rhythmbox ]; then
            echo -e ${ifrot}'>>>>> Der Audioplayer rhythmbox wurde bereits installiert, mache nichts.'${KF}
        else
            echo -e ${ifgrn}'>>>>> Der Audioplayer rhythmbox wird installiert.'${KF}
            sleep 3
            sudo apt install -y rhythmbox rhythmbox-plugins
        fi
esac




# musicpod-Audioplayer installieren
case $musicpod in
    [Yy]*|"")
        echo ''
        if [ -d /var/lib/flatpak/app/org.feichtmeier.Musicpod ]; then
            echo -e ${ifrot}'>>>>> Der Audioplayer musicpod wurde bereits installiert, mache nichts.'${KF}
        else
            echo -e ${ifgrn}'>>>>> Der Audioplayer musicpod wird installiert.'${KF}
            sleep 3
            sudo flatpak install -y org.feichtmeier.Musicpod
        fi
esac




# soundconverter installieren
case $soundconverter in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/soundconverter ]; then
            echo -e ${ifrot}'>>>>> Der Programm soundconverter wurde bereits installiert, mache nichts.'${KF}
        else
            echo -e ${ifgrn}'>>>>> Der Programm soundconverter wird installiert.'${KF}
            sleep 3
            sudo apt install -y soundconverter
        fi
esac




# eyedropper installieren
case $eyedropper in
    [Yy]*|"")
        echo ''
        if [ -d /var/lib/flatpak/app/com.github.finefindus.eyedropper ]; then
            echo -e ${ifrot}'>>>>> Das Programm eyedropper wurde bereits installiert, mache nichts.'${KF}
        else
            echo -e ${ifgrn}'>>>>> Das Programm eyedropper wird installiert.'${KF}
            sleep 3
            sudo flatpak install -y com.github.finefindus.eyedropper
        fi
esac




# gpick installieren
case $gpick in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/gpick ]; then
            echo -e ${ifrot}'>>>>> Der Programm gpick wurde bereits installiert, mache nichts.'${KF}
        else
            echo -e ${ifgrn}'>>>>> Der Programm gpick wird installiert.'${KF}
            sleep 3
            sudo apt install -y gpick
        fi
esac




# gimp installieren
case $gimp in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/gimp ]; then
            echo -e ${ifrot}'>>>>> Der Bildbearbeitungsprogramm gimp wurde bereits installiert, mache nichts.'${KF}
        else
            echo -e ${ifgrn}'>>>>> Der Bildbearbeitungsprogramm gimp wird installiert.'${KF}
            sleep 3
            sudo apt install -y gimp gimp-help-de
        fi
esac




# krita installieren
case $krita in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/krita ]; then
            echo -e ${ifrot}'>>>>> Der Bildbearbeitungsprogramm krita wurde bereits installiert, mache nichts.'${KF}
        else
            echo -e ${ifgrn}'>>>>> Der Bildbearbeitungsprogramm krita wird installiert.'${KF}
            sleep 3
            sudo apt install -y krita krita-gmic krita-l10n
        fi
esac




# simplescreenrecorder installieren
case $ssrecorder in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/simplescreenrecorder ]; then
            echo -e ${ifrot}'>>>>> Der Desktoprecorder simplescreenrecorder wurde bereits installiert, mache nichts.'${KF}
        else
            echo -e ${ifgrn}'>>>>> Der Desktoprecorder simplescreenrecorder wird installiert.'${KF}
            sleep 3
            sudo apt install -y simplescreenrecorder
        fi
esac




# handbrake installieren
case $handbrake in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/handbrake-gtk ]; then
            echo -e ${ifrot}'>>>>> Das Videobearbeitungs-Programm HandBrake wurde bereits installiert, mache nichts.'${KF}
        else
            echo -e ${ifgrn}'>>>>> Das Videobearbeitungs-Programm HandBrake wird installiert.'${KF}
            sleep 3
            sudo apt install -y handbrake handbrake-cli handbrake-gtk
        fi
esac




# kdenlive installieren
case $kdenlive in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/kdenlive ]; then
            echo -e ${ifrot}'>>>>> Das Videoschnitt-Programm kdenlive wurde bereits installiert, mache nichts.'${KF}
        else
            echo -e ${ifgrn}'>>>>> Das Videoschnitt-Programm kdenlive wird installiert.'${KF}
            sleep 3
            sudo apt install -y kdenlive
        fi
esac




# openshot installieren
case $openshot in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/openshot-qt ]; then
            echo -e ${ifrot}'>>>>> Das Videoschnitt-Programm openshot wurde bereits installiert, mache nichts.'${KF}
        else
            echo -e ${ifgrn}'>>>>> Das Videoschnitt-Programm openshot wird installiert.'${KF}
            sleep 3
            sudo apt install -y openshot-qt
        fi
esac




# wine und playonlinux
case $wine in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/wine ]; then
            echo -e ${ifrot}'>>>>> Die Emulatoren wine und PlayOnLinux wurden bereits installiert, mache nichts.'${KF}
        else
            if [ -f /etc/apt/sources.list.d/winehq.list ]; then
                echo -e ${ifrot}'Das winehq-Repository wurde bereits hinzugefügt, mache nichts.'${KF}
            else
                echo -e ${ifgrn}'>>>>> Die Emulatoren wine und PlayOnLinux werden installiert.'${KF}
                sleep 3

                #===== apt-secure key Installation
                sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
                ##########os.system('wget -O- https://dl.winehq.org/wine-builds/winehq.key | gpg --dearmor | sudo tee /usr/share/keyrings/winehq.gpg')

                #===== Repository hinzufügen (Da ein direktes echo in /etc/ wegen Dateirechten scheiterte, wurde die Datei lokal angelegt, dann verschoben und dann ein chown ausgeführt.)
                sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/debian/dists/trixie/winehq-trixie.sources
                #sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/debian/dists/bookworm/winehq-bookworm.sources
                ##########os.system('echo "# Debian Winehq Repository" > winehq.list')
                ##########os.system('echo "deb [signed-by=/usr/share/keyrings/winehq.gpg] http://dl.winehq.org/wine-builds/debian/ bullseye main" >> winehq.list')
                ##########os.system('sudo mv winehq.list /etc/apt/sources.list.d/')
                ##########os.system('sudo chown root:root /etc/apt/sources.list.d/winehq.list')
                
                #===== Installation von wine
                sudo apt update
                sudo apt install --install-recommends -y winehq-staging playonlinux fonts-liberation glx-alternative-mesa libc6-dev-i386 libedit-dev libfreetype-dev libfreetype6 libfreetype6-dev libgl1-mesa-dev libgnutls28-dev libgphoto2-dev libice-dev libjson-c-dev liblcms2-dev libldap2-dev libogg-dev libosmesa6 libosmesa6-dev libpcap-dev libpng16-16 libpng-dev libpng++-dev libpng-tools libsm-dev libsndfile1-dev libv4l-dev libvorbis-dev libwayland-client++1 libwayland-client-extra++1 libwayland-dev libx11-dev libxcursor-dev libxext-dev libxi-dev libxinerama-dev libxml2-dev libxrandr-dev libxrender-dev libxslt1-dev libxtst-dev libxxf86vm-dev ncurses-examples ocl-icd-dev ocl-icd-opencl-dev uuid-dev zlib1g zlib1g-dev
            fi
        fi
esac




# steam über Flatpak
case $steam in
    [Yy]*|"")
        echo ''
        if [ -d /var/lib/flatpak/app/com.valvesoftware.Steam ]; then
            echo -e ${ifrot}'>>>>> Die Spieleplattform steam wurde bereits installiert, mache nichts.'${KF}
        else
            echo -e ${ifgrn}'>>>>> Die Spieleplattform steam wird installiert.'${KF}
            sleep 3
            sudo flatpak install -y com.valvesoftware.Steam
        fi
esac




# lutris über flatpak
case $lutris in
    [Yy]*|"")
        echo ''
        if [ -d /var/lib/flatpak/app/net.lutris.Lutris ]; then
            echo -e ${ifrot}'>>>>> Die Spieleplattform lutris wurde bereits installiert, mache nichts.'${KF}
        else
            echo -e ${ifgrn}'>>>>> Die Spieleplattform lutris wird installiert.'${KF}
            sleep 3
            sudo flatpak install -y net.lutris.Lutris
        fi
esac




# anydesk über Flatpak
case $anydesk in
    [Yy]*|"")
        echo ''
        if [ -d /var/lib/flatpak/app/com.anydesk.Anydesk ]; then
            echo -e ${ifrot}'>>>>> Die Remotesoftware anydesk wurde bereits installiert, mache nichts.'${KF}
        else
            echo -e ${ifgrn}'>>>>> Die Remotesoftware anydesk wird installiert.'${KF}
            sleep 3
            sudo flatpak install -y com.anydesk.Anydesk
        fi
esac




# rustdesk über Flatpak
case $rustdesk in
    [Yy]*|"")
        echo ''
        if [ -d /var/lib/flatpak/app/com.rustdesk.RustDesk ]; then
            echo -e ${ifrot}'>>>>> Die Remotesoftware rustdesk wurde bereits installiert, mache nichts.'${KF}
        else
            echo -e ${ifgrn}'>>>>> Die Remotesoftware rustdesk wwird installiert.'${KF}
            sleep 3
            sudo flatpak install -y com.rustdesk.RustDesk
        fi
esac




# teamviewer über Webseite installieren
case $teamviewer in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/teamviewer ]; then
            echo -e ${ifrot}'>>>>> Die Remotesoftware teamviewer wurde bereits installiert, mache nichts.'${KF}
        else
            echo -e ${ifgrn}'>>>>> Die Remotesoftware teamviewer wird installiert.'${KF}
            sleep 3
            wget -q https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
            sudo apt install -y ./teamviewer*.deb
            rm teamviewer*.deb
        fi
esac




# ranger installieren
case $ranger in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/ranger ]; then
            echo -e ${ifrot}'>>>>> Der Terminal-Dateimanager ranger wurde bereits installiert, mache nichts.'${KF}
        else
            echo ${ifgrn}'>>>>> Der Terminal-Dateimanager ranger wird installiert.'${KF}
            sleep 3
            apt-cache pkgnames libpoppler | grep -v dev
            read -p "Welche libpoppler-Version wird aktuell verwendet? (147 von 10.2025?) " LIBPOPPLERVER
            sudo apt install -y highlight atool w3m libpoppler${LIBPOPPLERVER} poppler-utils mediainfo ranger xfce4-terminal
            echo -e ${ifyellow}'Für die Konfiguration von Ranger siehe zim-Wiki Dateimanager.ranger'${KF}
            sleep 3
        fi
esac




# yazi über Flatpak
case $yazi in
    [Yy]*|"")
        echo ''
        if [ -d /var/lib/flatpak/app/io.github.sxyazi.yazi ]; then
            echo -e ${ifgrn}'>>>>> Der Terminal-Dateimanager yazi wurde bereits installiert, mache nichts.'${KF}
        else
            echo ${ifgrn}'>>>>> Der Terminal-Dateimanager yazi wird installiert.'${KF}
            sleep 3
            sudo flatpak install -y io.github.sxyazi.yazi
        fi
esac




# zsh installieren
case $zsh in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/zsh ]; then
            echo -e ${ifrot}'>>>>> Die Shell zsh wurde bereits installiert, mache nichts.'${KF}
        else
            echo -e ${ifgrn}'>>>>> Die Shell zsh wird installiert.'${KF}
            sleep 3
            sudo apt install -y zsh zsh-autosuggestions zsh-syntax-highlighting
            sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
            # zsh-syntax-highlighting
            echo -e ${ifyellow}'>>>>> Um syntax-highlighting in zsh zu Aktivieren muss am Ende der .zshrc-Datei folgende Zeile hinzugefügt werden:    source ~/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh'${KF}
            echo -e ${ifyellow}'>>>>> Um die Login-Shell auf zsh zu ändern nutzt man als NORMALER Benutzer den Befehl:    $ chsh -s /bin/zsh'${KF}
        fi
esac




# ghostty installieren (Webseite)
case $ghostty in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/ghostty ]; then
            echo -e ${ifrot}'>>>>> Das Terminal ghostty wurde bereits installiert, mache nichts.'${KF}
        else
            echo -e ${ifgrn}'>>>>> Das Terminal ghostty wird installiert.'${KF}
            sleep 3
            # Downloadlink über https://github.com/dariogriffo/ghostty-debian/releases 
            wget -c https://github.com/dariogriffo/ghostty-debian/releases/download/1.2.2%2B1/ghostty_1.2.2-1+trixie_amd64.deb
            sudo apt install -y libgtk-layer-shell-dev libgtk4-layer-shell-dev libgtk4-layer-shell0 gir1.2-gtk4layershell-1.0 libxml2-utils
            sudo dpkg -i ghostty_1.2.2-1+trixie_amd64.deb
            sudo rm -rf ghostty_*.deb
        fi
esac




# kitty installieren
case $kitty in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/kitty ]; then
            echo -e ${ifrot}'>>>>> Das Terminal kitty wurde bereits installiert, mache nichts.'${KF}
        else
            echo -e ${ifgrn}'>>>>> Das Terminal kitty wird installiert.'${KF}
            sleep 3
            sudo apt install -y kitty kitty-shell-integration kitty-terminfo libxml2-utils
        fi
esac




# tilix installieren
case $tilix in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/tilix ]; then
            echo -e ${ifrot}'>>>>> Das Terminal tilix wurde bereits installiert, mache nichts.'${KF}
        else
            echo -e ${ifgrn}'>>>>> Das Terminal tilix wird installiert.'${KF}
            sleep 3
            sudo apt install -y tilix
        fi
esac




# urxvt installieren
case $urxvt in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/urxvt ]; then
            echo -e ${ifrot}'>>>>> Das Terminal urxvt wurde bereits installiert, mache nichts.'${KF}
        else
            echo -e ${ifgrn}'>>>>> Das Terminal urxvt wird installiert.'${KF}
            sleep 3
            sudo apt install -y rxvt-unicode xclip
            echo -e ${ifyellow}'>>>>> Zum konfigurieren benötigt man eine ~/.Xresources oder ~/.Xdefaults  Datei.\n      Nach ändern dieser Datei muss man ein $ xrdb -merge ~/.Xresources ausführen:'${KF}
            sleep 3
        fi
esac




# conky installieren
case $conky in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/conky ]; then
            echo -e ${ifrot}'>>>>> Der Systemmonitor conky wurde bereits installiert, mache nichts.'${KF}
        else
            echo -e ${ifgrn}'>>>>> Der Systemmonitor conky wird installiert.'${KF}
            sleep 3
            sudo apt install -y --allow-unauthenticated conky-all lm-sensors
        fi
esac




# Zim-Desktop Wiki installieren
case $zim in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/zim ]; then
            echo -e ${ifrot}'>>>>> Das Desktop-Wiki zim wurde bereits installiert, mache nichts.'${KF}
        else
            echo -e ${ifgrn}'>>>>> Das Desktop-Wiki zim wird installiert.'${KF}
            sleep 3
            sudo apt install -y zim
        fi
esac




# xpad installieren
case $xpad in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/xpad ]; then
            echo -e ${ifrot}'>>>>> Die Notizzettel-App xpad wurde bereits installiert, mache nichts.'${KF}
        else
            echo -e ${ifgrn}'>>>>> Die Notizzettel-App xpad wird installiert.'${KF}
            sleep 3
            sudo apt install -y xpad
        fi
esac




# keepassxc Passwortmanager installieren
case $keepassxc in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/keepassxc ]; then
            echo -e ${ifrot}'>>>>> Der Passwortmanager keepassxc wurde bereits installiert, mache nichts.'${KF}
        else
            echo -e ${ifgrn}'>>>>> Der Passwortmanager keepassxc wird installiert.'${KF}
            sleep 3
            sudo apt install -y keepassxc
        fi
esac




# gnome-passwordsafe Passwortmanager installieren
case $gsafe in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/secrets ]; then
            echo -e ${ifrot}'>>>>> Der Passwortmanager gnome-passwordsafe wurde bereits installiert, mache nichts.'${KF}
        else
            echo -e ${ifgrn}'>>>>> Der Passwortmanager gnome-passwordsafe wird installiert.'${KF}
            sleep 3
            sudo apt install -y secrets     # gnome-passwordsafe
        fi
esac




# Enwicklungs-IDE pycharm installieren
case $pycharm in
    [Yy]*|"")
        echo ''
        if [ -d /var/lib/flatpak/app/com.jetbrains.PyCharm-Professional ]; then
            echo -e ${ifrot}'>>>>> Die Community-Version der Python-IDE pycharm wurde bereits installiert, mache nichts.'${KF}
        else
            echo -e ${ifgrn}'>>>>> Die Community-Version der Python-IDE pycharm wird installiert.'${KF}
            sleep 3
            sudo flatpak install -y com.jetbrains.PyCharm-Professional
        fi
esac




# sublime-text installieren
case $sublime in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/subl ]; then
            echo -e ${ifrot}'>>>>> Die Entwicklungs-IDE sublime-text wurde bereits installiert, mache nichts.'${KF}
        else
            echo -e ${ifgrn}'>>>>> Die Entwicklungs-IDE sublime-text wird installiert.'${KF}
            sleep 3
            echo -e ${ifyellow}'>>>>> Das Repository /etc/apt/sources.list.d/sublime.list wird hinzugefügt.'${KF}

            # apt-secure key Installation 
            wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo tee /etc/apt/keyrings/sublimehq-pub.asc > /dev/null
            #wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg > /dev/null
            #wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -

            # Repository hinzufügen (Da ein direktes echo in /etc/ wegen Dateirechten scheiterte, wurde die Datei lokal angelegt, dann verschoben und dann ein chown ausgeführt.)
            echo 'Types: deb\nURIs: https://download.sublimetext.com/\nSuites: apt/stable/\nSigned-By: /etc/apt/keyrings/sublimehq-pub.asc' | sudo tee /etc/apt/sources.list.d/sublime-text.sources
            #echo "# Debian Sublime-Text Repository" > sublime.list
            #echo "deb https://download.sublimetext.com/ apt/stable/" >> sublime.list
            #sudo mv sublime.list /etc/apt/sources.list.d/
            #sudo chown root:root /etc/apt/sources.list.d/sublime.list

            # Sublime-Text installation
            sudo apt update
            sudo apt install -y sublime-text
        fi
esac




# weechat-IRC-Client installieren
case $weechat in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/weechat ]; then
            echo -e ${ifrot}'>>>>> Der IRC-Client weechat wurde bereits installiert, mache nichts.'${KF}
        else
            echo -e ${ifgrn}'>>>>> Der IRC-Client weechat wird installiert.'${KF}
            sleep 3
            sudo apt install -y weechat weechat-scripts
        fi
esac




# kvm/qemu/virt-manager installieren
case $kvm in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/virt-manager ]; then
            echo -e ${ifrot}'>>>>> Die Virtualisierungsumgebung kvm/qemu/virt-manager wurde bereits installiert, mache nichts.'${KF}
        else
            echo -e ${ifgrn}'>>>>> Die Virtualisierungsumgebung kvm/qemu/virt-manager wird installiert.'${KF}
            sleep 3
            ### Installation von KVM
            sudo apt install -y bridge-utils libvirt-clients libvirt-daemon libvirt-daemon-system python3 python3-pip qemu-kvm qemu-system qemu-utils virtinst
            sudo apt-get install -y virt-manager
            ### Benutzer zur Gruppe libvirt hinzufügen
            # OBSOLET?? read -p "Wie lautet der Benutzername welcher der Gruppe libvirt hinzugefügt werden soll? " kvmuser
            sudo usermod -aG libvirt ${USER}
            sudo usermod -aG kvm ${USER}
            ### Netzwerk verfügbar machen
            sudo virsh net-start default
            sudo virsh net-autostart default
            ### Kernel Modul für virtuelle Netzwerke laden
            sudo modprobe vhost_net

        fi
esac




# VirtualBox installieren
case $vbox in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/virtualbox ]; then
            echo -e ${ifrot}'>>>>> Die Virtualisierungsumgebung Virtualbox wurde bereits installiert, mache nichts.'${KF}
        else
            echo -e ${ifgrn}'>>>>> Die Virtualisierungsumgebung Virtualbox wird installiert.'${KF}
            sleep 3

            ### apt-secure key Installation
            wget -O- https://www.virtualbox.org/download/oracle_vbox_2016.asc | sudo gpg --dearmor --yes --output /usr/share/keyrings/oracle-virtualbox-2016.gpg
            rm oracle_vbox_2016.asc

            ### Repository hinzufügen (Da ein direktes echo in /etc/ wegen Dateirechten scheiterte, wurde die Datei lokal angelegt, dann verschoben und dann ein chown ausgeführt.)
            echo "# Debian Virtualbox Repository" > virtualbox.list
            echo -e "deb [arch=amd64 signed-by=/usr/share/keyrings/oracle-virtualbox-2016.gpg] https://download.virtualbox.org/virtualbox/debian trixie contrib\n" >> virtualbox.list
            sudo mv virtualbox.list /etc/apt/sources.list.d/
            sudo chown root:root /etc/apt/sources.list.d/virtualbox.list

            ### Installation der Virtualbox
            sudo apt update
            sudo apt install -y dkms gnupg2 libsdl-ttf2.0-0 virtualbox-7.2
            sudo usermod -aG vboxusers ${USER}
            echo -e ${ifyellow}'>>>>> Jetzt noch ein Reboot durchführen'${KF}
            sleep 3
        fi
esac




# texlive installieren
case $texlive in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/latex ]; then
            echo -e ${ifrot}'>>>>> Das Textsatzsystem latex/texlive wurde bereits installiert, mache nichts.'${KF}
        else
            echo -e ${ifgrn}'>>>>> Das Textsatzsystem latex/texlive wird installiert.'${KF}
            sleep 3
            sudo apt install -y texlive-full context-nonfree asymptote biber dblatex fontforge fonts-freefont-ttf latexdiff latex-make latex-mk openjade psutils t1utils tex-gyre texmaker texstudio
        fi
esac
