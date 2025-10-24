

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



# Farbige print-Ausgaben
reset='\33[0m'          # Keine Farbe. (Farbe zurücksetzen)
lila='\33[35m'          # Lila (Installationsfragen)
flila='\33[1;35m'       # fettes Lila (Installationsfragen)
green='\33[32m'         # Grün (Alles O.K.)
fgreen='\33[1;32m'      # fettes Grün (Alles O.K.)
yellow='\33[1;33m'      # Gelb (Hinweismeldungen)
gray='\33[1;30m'        #
blue='\33[34m'          # Blau (Alternativ: Informationsausgaben)
fblue='\33[1;34m'       # fettes Blau (Informationsausgaben)
cyan='\33[36m'          # Cyan ()
fcyan='\33[1;36m'       # fettes Cyan ()
rot='\33[31m'           # Rot (Alternative: Fehler)
frot='\33[1;31m'        # fettes Rot (Fehler)

#DISTRO='?????'             # Debian 15 Coming up
#DISTRO='forky'             # Debian 14 Testing
#DISTRO='trixie'            # Debian 13 Stable
#DISTRO='bookworm'  		# Debian 12 Oldstable


#LIBPOPPLER='libpoppler102'          # Bibliothek zur PDF-Darstellung (für ranger)  Version vom 2021.03
# Homeverzeichnis des aktuellen Benutzers auslesen lassen (ohne endendes /)
user = os.environ['HOME']
# Nur den Benutzernamen des aktuellen Benutzers auslesen lassen
username = getpass.getuser()

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
#firefox = input(fcyan + 'Soll statt der ESR-Version, die neueste Version des Webbrowsers Firefox installiert werden? (Y/n): ' + reset)
#chromium = input(fcyan + 'Soll der Webbrowser chromium installiert werden? (Y/n): ' + reset)
#brave = input(fcyan + 'Soll der Webbrowser brave installiert werden? (Y/n): ' + reset)
#chrome = input(fcyan + 'Soll der Webbrowser google-chrome installiert werden? (Y/n): ' + reset)
#thunderbird = input(fcyan + 'Soll der E-Mailclient thunderbird installiert werden? (Y/n): ' + reset)
#geary = input(fcyan + 'Soll der E-Mailclient geary installiert werden? (Y/n): ' + reset)
#signal = input(fcyan + 'Soll der Messenger signal installiert werden? (Y/n): ' + reset)
#telegram = input(fcyan + 'Soll der Messenger telegram installiert werden? (Y/n): ' + reset)
#viber = input(fcyan + 'Soll der Messenger viber installiert werden? (Y/n): ' + reset)
#discord = input(fcyan + 'Soll der Messenger discord installiert werden? (Y/n): ' + reset)
#teams = input(fcyan + 'Soll der Messenger Microsoft Teams installiert werden? (Y/n): ' + reset)
#zoom = input(fcyan + 'Soll der Messenger Zoom installiert werden? (Y/n): ' + reset)
#mpv = input(fcyan + 'Soll der Videoplayer mpv installiert werden? (Y/n): ' + reset)
#totem = input(fcyan + 'Soll der Videoplayer totem installiert werden? (Y/n): ' + reset)
#vlc = input(fcyan + 'Soll der Videoplayer vlc installiert werden? (Y/n): ' + reset)
#celluloid = input(fcyan + 'Soll der Videoplayer celluloid installiert werden? (Y/n): ' + reset)
#parole = input(fcyan + 'Soll der Videoplayer parole installiert werden? (Y/n): ' + reset)
#rhythmbox = input(fcyan + 'Soll der Audioplayer rhythmbox installiert werden? (Y/n): ' + reset)
#soundconverter = input(fcyan + 'Soll das Programm soundconverter installiert werden? (Y/n): ' + reset)
#gpick = input(fcyan + 'Soll das Programm gpick installiert werden? (Y/n): ' + reset)
#gcolor3 = input(fcyan + 'Soll das Programm gcolor3 installiert werden? (Y/n): ' + reset)
#gimp = input(fcyan + 'Soll das Bildbearbeitungsprogramm gimp installiert werden? (Y/n): ' + reset)
#ssrecorder = input(fcyan + 'Soll der Desktoprecorder simplescreenrecorder installiert werden? (Y/n): ' + reset)
#handbrake = input(fcyan + 'Soll das Videobearbeitungs-Programm HandBrake installiert werden? (Y/n): ' + reset)
#kdenlive = input(fcyan + 'Soll das Videoschnitt-Programm kdenlive installiert werden? (Y/n): ' + reset)
#openshot = input(fcyan + 'Soll das Videoschnitt-Programm openshot installiert werden? (Y/n): ' + reset)
#wine = input(fcyan + 'Sollen die Emulatoren Wine und playonlinux installiert werden? (Y/n) ' + reset)
#steam = input(fcyan + 'Soll die Spieleplattform steam installiert werden? (Y/n): ' + reset)
#lutris = input(fcyan + 'Soll die Spieleplattform lutris installiert werden? (Y/n): ' + reset)
#anydesk = input(fcyan + 'Soll die Remotesoftware AnyDesk installiert werden? (Y/n): ' + reset)
#teamviewer = input(fcyan + 'Soll die Remotesoftware Teamviewer für den privaten Gebrauch installiert werden? (Y/n) ' + reset)
#ranger = input(fcyan + 'Soll der Terminal-Dateimanager ranger installiert werden? (Y/n): ' + reset)
#zsh = input(fcyan + 'Soll die Shell zsh installiert werden? (Y/n): ' + reset)
#urxvt = input(fcyan + 'Soll das Terminal urxvt installiert werden? (Y/n): ' + reset)
#tilix = input(fcyan + 'Soll das Terminal tilix installiert werden? (Y/n): ' + reset)
#conky = input(fcyan + 'Soll der Systemmonitor conky installiert werden? (Y/n): ' + reset)
#zim = input(fcyan + 'Soll das Desktop-Wiki zim installiert werden? (Y/n): ' + reset)
#xpad = input(fcyan + 'Soll die Notizzettel-App xpad installiert werden? (Y/n): ' + reset)
#keepassxc = input(fcyan + 'Soll der Passwortmanager keepassxc installiert werden? (Y/n): ' + reset)
#gsafe = input(fcyan + 'Soll der Passwortmanager gnome-passwortsafe installiert werden? (Y/n): ' + reset)
#pycharm = input(fcyan + 'Soll die Community-Version der Python-IDE pycharm installiert werden? (Y/n): ' + reset)
#sublime = input(fcyan + 'Soll die Entwicklungs-IDE Sublime Text installiert werden? (Y/n): ' + reset)
#clementine = input(fcyan + 'Soll der Musik-Player clementine installiert werden? (Y/n): ' + reset)
#weechat = input(fcyan + 'Soll der IRC-Chatclient weechat installiert werden? (Y/n): ' + reset)
#kvm = input(fcyan + 'Soll die Virtualisierungsumgebung kvm/qemu/virt-manager installiert werden? (Y/n): ' + reset)
#vbox = input(fcyan + 'Soll die Virtualisierungsumgebung Virtualbox installiert werden? (Y/n): ' + reset)
#texlive = input(fcyan + 'Soll das Textsatzsystem latex/texlive installiert werden? (Y/n): ' + reset)
#print()




# Firefox über Flatpak
case $firefox in
    [Yy]*|"")
        echo ''
        if [ -d /var/lib/flatpak/app/org.mozilla.firefox ]; then
            echo ${frot}'>>>>> Die neueste Version des Firfox wurde bereits installiert, mache nichts.'${KF}
        else
            echo ${fgreen}'>>>>> Die neueste Version des Webbrowsers Firefox wird installiert.'${KF}
            sleep 3
            sudo flatpak install -y org.mozilla.firefox
        fi
esac
#if firefox in ('Y', 'y', ''):
#    print()
#    fileName=r'/var/lib/flatpak/app/org.mozilla.firefox'
#    if os.path.exists(fileName):
#        print(rot + '>>>>> Die neueste Version des Firfox wurde bereits hinzugefügt, mache nichts.' + reset)
#    else:
#        print(green + '>>>>> Die neueste Version des Webbrowsers Firefox wird installiert.' + reset)
#        time.sleep(3)
#        os.system('sudo flatpak install -y flathub org.mozilla.firefox')




# chromium installieren
case $chromium in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/chromium ]; then
            echo ${frot}'>>>>> Der Webbrowser chromium wurde bereits installiert, mache nichts.'${KF}
        else
            echo ${fgreen}'>>>>> Der Webbrowser chromium wird installiert.'${KF}
            sleep 3
            sudo apt install -y chromium chromium-l10n flashplayer-chromium
        fi
esac
#if chromium in ('Y', 'y', ''):
#    print()
#    fileName=r'/usr/bin/chromium'
#    if os.path.exists(fileName):
#        print(rot + '>>>>> Der Webbrowser chromium wurde bereits installiert, mache nichts.' + reset)
#    else:
#        print(green + '>>>>> Der Webbrowser chromium wird installiert.' + reset)
#        time.sleep(3)
#        os.system('sudo apt-get install -y chromium chromium-l10n flashplayer-chromium')




# Brave-Browser über Flatpak
case $brave in
    [Yy]*|"")
        echo ''
        if [ -d /var/lib/flatpak/app/com.brave.Browser ]; then
            echo ${frot}'>>>>> Der Webbrowser brave wurde bereits installiert, mache nichts.'${KF}
        else
            echo ${fgreen}'>>>>> Der Webbrowser brave wird installiert.'${KF}
            sleep 3
            sudo flatpak install -y com.brave.Browser
        fi
esac
#if brave in ('Y', 'y', ''):
#    print()
#    fileName=r'/var/lib/flatpak/app/com.brave.Browser'
#    if os.path.exists(fileName):
#        print(rot + '>>>>> Der Webbrowser brave wurde bereits installiert, mache nichts.' + reset)
#    else:
#        print(green + '>>>>> Der Webbrowser brave wird installiert.' + reset)
#        time.sleep(3)
#        os.system('sudo flatpak install -y com.brave.Browser')




# Google-Chrome über Flatpak
case $chrome in
    [Yy]*|"")
        echo ''
        if [ -d /var/lib/flatpak/app/com.google.Chrome ]; then
            echo ${frot}'>>>>> Der Webbrowser google-chrome wurde bereits installiert, mache nichts.'${KF}
        else
            echo ${fgreen}'>>>>> Der Webbrowser google-chrome wird installiert.'${KF}
            sleep 3
            sudo flatpak install -y com.google.Chrome
        fi
esac
#if chrome in ('Y', 'y', ''):
#    print()
#    fileName=r'/var/lib/flatpak/app/com.google.Chrome'
#    if os.path.exists(fileName):
#        print(rot + '>>>>> Der Webbrowser google-chrome wurde bereits installiert, mache nichts..' + reset)
#    else:
#        print(green + '>>>>> Der Webbrowser google-chrome wird installiert.' + reset)
#        time.sleep(3)
#        os.system('sudo flatpak install -y flathub com.google.Chrome')




# thunderbird installieren
case $thunderbird in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/thunderbird ]; then
            echo ${frot}'>>>>> Der E-Mailclient thunderbird wurde bereits installiert, mache nichts.'${KF}
        else
            echo ${fgreen}'>>>>> Der E-Mailclient thunderbird wird installiert.'${KF}
            sleep 3
            sudo apt install -y thunderbird thunderbird-l10n-de
        fi
esac
#if thunderbird in ('Y', 'y', ''):
#    print()
#    fileName=r'/usr/bin/thunderbird'
#    if os.path.exists(fileName):
#        print(rot + '>>>>> Der E-Mailclient thunderbird wurde bereits installiert, mache nichts.' + reset)
#    else:
#        print(green + '>>>>> Der E-Mailclient thunderbird wird installiert.' + reset)
#        time.sleep(3)
#        os.system('sudo apt-get install -y thunderbird thunderbird-l10n-de')




# geary installieren
case $geary in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/geary ]; then
            echo ${frot}'>>>>> Der E-Mailclient geary wurde bereits installiert, mache nichts.'${KF}
        else
            echo ${fgreen}'>>>>> Der E-Mailclient geary wird installiert.'${KF}
            sleep 3
            sudo apt install -y geary
        fi
esac
#if geary in ('Y', 'y', ''):
#    print()
#    fileName=r'/usr/bin/geary'
#    if os.path.exists(fileName):
#        print(rot + '>>>>> Der E-Mailclient geary wurde bereits installiert, mache nichts.' + reset)
#    else:
#        print(green + '>>>>> Der E-Mailclient geary wird installiert.' + reset)
#        time.sleep(3)
#        os.system('sudo apt-get install -y geary')




# Telegram-Desktop
case $telegram in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/telegram-desktop ]; then
            echo ${frot}'>>>>> Der Messenger telegram wurde bereits installiert, mache nichts.'${KF}
        else
            echo ${fgreen}'>>>>> Der Messenger telegram wird installiert.'${KF}
            sleep 3
            sudo apt install -y telegram-desktop
        fi
esac
#if telegram in ('Y', 'y', ''):
#    print()
#    fileName=r'/usr/bin/telegram-desktop'
#    if os.path.exists(fileName):
#        print(rot + '>>>>> Der Messenger telegram wurde bereits installiert, mache nichts.' + reset)
#    else:
#        print(green + '>>>>> Der Messenger telegram wird installiert.' + reset)
#        time.sleep(3)
#        os.system('sudo apt-get install -y telegram-desktop')




# signal-desktop (Flatpak)
case $signal in
    [Yy]*|"")
        echo ''
        if [ -d /var/lib/flatpak/app/org.signal.Signal ]; then
            echo ${frot}'>>>>> Der Messenger signal wurde bereits installiert, mache nichts.'${KF}
        else
            echo ${fgreen}'>>>>> Der Messenger signal wird installiert.'${KF}
            sleep 3
            sudo flatpak install -y org.signal.Signal
        fi
esac
#if signal in ('Y', 'y', ''):
#    print()
#    fileName=r'/var/lib/flatpak/app/org.signal.Signal'
#    if os.path.exists(fileName):
#        print(rot + '>>>>> Der Messenger signal wurde bereits installiert, mache nichts.' + reset)
#    else:
#        print(green + '>>>>> Der Messenger signal wird installiert.' + reset)
#        time.sleep(3)
#        os.system('sudo flatpak install -y org.signal.Signal')




# viber über Flatpak
case $viber in
    [Yy]*|"")
        echo ''
        if [ -d /var/lib/flatpak/app/com.viber.Viber ]; then
            echo ${frot}'>>>>> Der Messenger viber wurde bereits installiert, mache nichts.'${KF}
        else
            echo ${fgreen}'>>>>> Der Messenger viber wird installiert.'${KF}
            sleep 3
            sudo flatpak install -y com.viber.Viber
        fi
esac
#if viber in ('Y', 'y', ''):
#    print()
#    fileName=r'/var/lib/flatpak/app/com.viber.Viber'
#    if os.path.exists(fileName):
#        print(rot + '>>>>> Der Messenger viber wurde bereits installiert, mache nichts.' + reset)
#    else:
#        print(green + '>>>>> Der Messenger viber wird installiert.' + reset)
#        time.sleep(3)
#        os.system('sudo flatpak install -y com.viber.Viber')




# discord über Flatpak
case $discord in
    [Yy]*|"")
        echo ''
        if [ -d /var/lib/flatpak/app/com.discordapp.Discord ]; then
            echo ${frot}'>>>>> Der Messenger discord wurde bereits installiert, mache nichts.'${KF}
        else
            echo ${fgreen}'>>>>> Der Messenger discord wird installiert.'${KF}
            sleep 3
            sudo flatpak install -y com.discordapp.Discord
        fi
esac
#if discord in ('Y', 'y', ''):
#    print()
#    fileName=r'/var/lib/flatpak/app/com.discordapp.Discord'
#    if os.path.exists(fileName):
#        print(rot + '>>>>> Der Messenger discord wurde bereits installiert, mache nichts.' + reset)
#    else:
#        print(green + '>>>>> Der Messenger discord wird installiert.' + reset)
#        time.sleep(3)
#        os.system('sudo flatpak install -y com.discordapp.Discord')




# Zoom installieren
case $zoom in
    [Yy]*|"")
        echo ''
        if [ -d /var/lib/flatpak/app/us.zoom.Zoom ]; then
            echo ${frot}'>>>>> Der Messenger Zoom wurde bereits installiert, mache nichts.'${KF}
        else
            echo ${fgreen}'>>>>> Der Messenger Zoom wird installiert.'${KF}
            sleep 3
            sudo flatpak install -y us.zoom.Zoom
        fi
esac
#if zoom in ('Y', 'y', ''):
#    print()
#    fileName=r'/var/lib/flatpak/app/us.zoom.Zoom'
#    if os.path.exists(fileName):
#        print(rot + '>>>>> Der Messenger Zoom wurde bereits installiert, mache nichts.' + reset)
#    else:
#        print(green + '>>>>> Der Messenger Zoom wird installiert.' + reset)
#        time.sleep(3)
#        os.system('sudo flatpak install -y us.zoom.Zoom')




# showtime-Videoplayer installieren
case $showtime in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/showtime ]; then
            echo ${frot}'>>>>> Der Videoplayer showtime wurde bereits installiert, mache nichts.'${KF}
        else
            echo ${fgreen}'>>>>> Der Videoplayer showtime wird installiert.'${KF}
            sleep 3
            sudo apt install -y showtime
        fi
esac




# mpv-Videoplayer installieren
case $mpv in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/mpv ]; then
            echo ${frot}'>>>>> Der Videoplayer mpv wurde bereits installiert, mache nichts.'${KF}
        else
            echo ${fgreen}'>>>>> Der Videoplayer mpv wird installiert.'${KF}
            sleep 3
            sudo apt install -y mpv
        fi
esac
#if mpv in ('Y', 'y', ''):
#    print()
#    fileName=r'/usr/bin/mpv'
#    if os.path.exists(fileName):
#        print(rot + '>>>>> Der Videoplayer mpv wurde bereits installiert, mache nichts.' + reset)
#    else:
#        print(green + '>>>>> Der Videoplayer mpv wird installiert.' + reset)
#        time.sleep(3)
#        os.system('sudo apt-get install -y mpv')




# vlc-Videoplayer installieren
case $vlc in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/vlc ]; then
            echo ${frot}'>>>>> Der Videoplayer vlc wurde bereits installiert, mache nichts.'${KF}
        else
            echo ${fgreen}'>>>>> Der Videoplayer vlc wird installiert.'${KF}
            sleep 3
            sudo apt install -y vlc vlc-plugin-base vlc-plugin-access-extra vlc-plugin-qt vlc-plugin-skins2 vlc-plugin-video-output vlc-l10n vlc-data
        fi
esac
#if vlc in ('Y', 'y', ''):
#    print()
#    fileName=r'/usr/bin/vlc'
#    if os.path.exists(fileName):
#        print(rot + '>>>>> Der Videoplayer vlc wurde bereits installiert, mache nichts.' + reset)
#    else:
#        print(green + '>>>>> Der Videoplayer vlc wird installiert.' + reset)
#        time.sleep(3)
#        os.system('sudo apt-get install -y vlc vlc-plugin-base vlc-plugin-access-extra vlc-plugin-qt vlc-plugin-skins2 vlc-plugin-video-output vlc-l10n vlc-data')




# celluloid installieren
case $celluloid in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/celluloid ]; then
            echo ${frot}'>>>>> Der Videoplayer celluloid wurde bereits installiert, mache nichts.'${KF}
        else
            echo ${fgreen}'>>>>> Der Videoplayer celluloid wird installiert.'${KF}
            sleep 3
            sudo apt install -y celluloid
        fi
esac
#if celluloid in ('Y', 'y', ''):
#    print()
#    fileName=r'/usr/bin/celluloid'
#    if os.path.exists(fileName):
#        print(rot + '>>>>> Der Videoplayer celluloid wurde bereits installiert, mache nichts.' + reset)
#    else:
#        print(green + '>>>>> Der Videoplayer celluloid wird installiert.' + reset)
#        time.sleep(3)
#        os.system('sudo apt-get install -y celluloid')




# Parole-Videoplayer installieren
case $parole in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/parole ]; then
            echo ${frot}'>>>>> Der Videoplayer parole wurde bereits installiert, mache nichts.'${KF}
        else
            echo ${fgreen}'>>>>> Der Videoplayer parole wird installiert.'${KF}
            sleep 3
            sudo apt install -y parole libxfce4util-bin libxfce4ui-utils
        fi
esac
#if parole in ('Y', 'y', ''):
#    print()
#    fileName=r'/usr/bin/parole'
#    if os.path.exists(fileName):
#        print(rot + '>>>>> Der Videoplayer parole wurde bereits installiert, mache nichts.' + reset)
#    else:
#        print(green + '>>>>> Der Videoplayer parole wird installiert.' + reset)
#        time.sleep(3)
#        os.system('sudo apt-get install -y parole libxfce4util-bin libxfce4ui-utils')




# Rhythmbox-Audioplayer installieren
case $rhythmbox in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/rhythmbox ]; then
            echo ${frot}'>>>>> Der Audioplayer rhythmbox wurde bereits installiert, mache nichts.'${KF}
        else
            echo ${fgreen}'>>>>> Der Audioplayer rhythmbox wird installiert.'${KF}
            sleep 3
            sudo apt install -y rhythmbox rhythmbox-plugins
        fi
esac
#if rhythmbox in ('Y', 'y', ''):
#    print()
#    fileName=r'/usr/bin/rhythmbox'
#    if os.path.exists(fileName):
#        print(rot + '>>>>> Der Audioplayer rhythmbox wurde bereits installiert, mache nichts.' + reset)
#    else:
#        print(green + '>>>>> Der Audioplayer rhythmbox wird installiert.' + reset)
#        time.sleep(3)
#        os.system('sudo apt-get install -y rhythmbox rhythmbox-plugins')




# musicpod-Audioplayer installieren
case $musicpod in
    [Yy]*|"")
        echo ''
        if [ -d /var/lib/flatpak/app/org.feichtmeier.Musicpod ]; then
            echo ${frot}'>>>>> Der Audioplayer musicpod wurde bereits installiert, mache nichts.'${KF}
        else
            echo ${fgreen}'>>>>> Der Audioplayer musicpod wird installiert.'${KF}
            sleep 3
            sudo flatpak install -y org.feichtmeier.Musicpod
        fi
esac




# soundconverter installieren
case $soundconverter in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/soundconverter ]; then
            echo ${frot}'>>>>> Der Programm soundconverter wurde bereits installiert, mache nichts.'${KF}
        else
            echo ${fgreen}'>>>>> Der Programm soundconverter wird installiert.'${KF}
            sleep 3
            sudo apt install -y soundconverter
        fi
esac
#if soundconverter in ('Y', 'y', ''):
#    print()
#    fileName=r'/usr/bin/soundconverter'
#    if os.path.exists(fileName):
#        print(rot + '>>>>> Das Programm soundconverter wurde bereits installiert, mache nichts.' + reset)
#    else:
#        print(green + '>>>>> Das Programm soundconverter wird installiert.' + reset)
#        time.sleep(3)
#        os.system('sudo apt-get install -y soundconverter')




# eyedropper installieren
case $eyedropper in
    [Yy]*|"")
        echo ''
        if [ -d /var/lib/flatpak/app/com.github.finefindus.eyedropper ]; then
            echo ${frot}'>>>>> Das Programm eyedropper wurde bereits installiert, mache nichts.'${KF}
        else
            echo ${fgreen}'>>>>> Das Programm eyedropper wird installiert.'${KF}
            sleep 3
            sudo flatpak install -y com.github.finefindus.eyedropper
        fi
esac




# gpick installieren
case $gpick in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/gpick ]; then
            echo ${frot}'>>>>> Der Programm gpick wurde bereits installiert, mache nichts.'${KF}
        else
            echo ${fgreen}'>>>>> Der Programm gpick wird installiert.'${KF}
            sleep 3
            sudo apt install -y gpick
        fi
esac
#if gpick in ('Y', 'y', ''):
#    print()
#    fileName=r'/usr/bin/gpick'
#    if os.path.exists(fileName):
#        print(rot + '>>>>> Das Programm gpick wurde bereits installiert, mache nichts.' + reset)
#    else:
#        print(green + '>>>>> Das Programm gpick wird installiert.' + reset)
#        time.sleep(3)
#        os.system('sudo apt-get install -y gpick')




# gimp installieren
case $gimp in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/gimp ]; then
            echo ${frot}'>>>>> Der Bildbearbeitungsprogramm gimp wurde bereits installiert, mache nichts.'${KF}
        else
            echo ${fgreen}'>>>>> Der Bildbearbeitungsprogramm gimp wird installiert.'${KF}
            sleep 3
            sudo apt install -y gimp gimp-help-de
        fi
esac
#if gimp in ('Y', 'y', ''):
#    print()
#    fileName=r'/usr/bin/gimp'
#    if os.path.exists(fileName):
#        print(rot + '>>>>> Das Bildbearbeitungsprogramm gimp wurde bereits installiert, mache nichts.' + reset)
#    else:
#        print(green + '>>>>> Das Bildbearbeitungsprogramm gimp wird installiert.' + reset)
#        time.sleep(3)
#        os.system('sudo apt-get install -y gimp gimp-help-de')




# krita installieren
case $krita in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/krita ]; then
            echo ${frot}'>>>>> Der Bildbearbeitungsprogramm krita wurde bereits installiert, mache nichts.'${KF}
        else
            echo ${fgreen}'>>>>> Der Bildbearbeitungsprogramm krita wird installiert.'${KF}
            sleep 3
            sudo apt install -y krita krita-gmic krita-l10n
        fi
esac




# simplescreenrecorder installieren
case $ssrecorder in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/simplescreenrecorder ]; then
            echo ${frot}'>>>>> Der Desktoprecorder simplescreenrecorder wurde bereits installiert, mache nichts.'${KF}
        else
            echo ${fgreen}'>>>>> Der Desktoprecorder simplescreenrecorder wird installiert.'${KF}
            sleep 3
            sudo apt install -y simplescreenrecorder
        fi
esac
#if ssrecorder in ('Y', 'y', ''):
#    print()
#    fileName=r'/usr/bin/simplescreenrecorder'
#    if os.path.exists(fileName):
#        print(rot + '>>>>> Der Desktoprecorder simplescreenrecorder wurde bereits installiert, mache nichts.' + reset)
#    else:
#        print(green + '>>>>> Der Desktoprecorder simplescreenrecorder wird installiert.' + reset)
#        time.sleep(3)
#        os.system('sudo apt-get install -y simplescreenrecorder')




# handbrake installieren
case $handbrake in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/handbrake-gtk ]; then
            echo ${frot}'>>>>> Das Videobearbeitungs-Programm HandBrake wurde bereits installiert, mache nichts.'${KF}
        else
            echo ${fgreen}'>>>>> Das Videobearbeitungs-Programm HandBrake wird installiert.'${KF}
            sleep 3
            sudo apt install -y handbrake handbrake-cli handbrake-gtk
        fi
esac
#if handbrake in ('Y', 'y', ''):
#    print()
#    fileName=r'/usr/bin/handbrake-gtk'
#    if os.path.exists(fileName):
#        print(rot + '>>>>> Das Videobearbeitungs-Programm HandBrake wurde bereits installiert, mache nichts.' + reset)
#    else:
#        print(green + '>>>>> Das Videobearbeitungs-Programm HandBrake wird installiert.' + reset)
#        time.sleep(3)
#        os.system('sudo apt-get install -y handbrake handbrake-cli handbrake-gtk')




# kdenlive installieren
case $kdenlive in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/kdenlive ]; then
            echo ${frot}'>>>>> Das Videoschnitt-Programm kdenlive wurde bereits installiert, mache nichts.'${KF}
        else
            echo ${fgreen}'>>>>> Das Videoschnitt-Programm kdenlive wird installiert.'${KF}
            sleep 3
            sudo apt install -y kdenlive
        fi
esac
#if kdenlive in ('Y', 'y', ''):
#    print()
#    fileName=r'/usr/bin/kdenlive'
#    if os.path.exists(fileName):
#        print(rot + '>>>>> Das Videoschnitt-Programm kdenlive wurde bereits installiert, mache nichts.' + reset)
#    else:
#        print(green + '>>>>> Das Videoschnitt-Programm kdenlive wird installiert.' + reset)
#        time.sleep(3)
#        os.system('sudo apt-get install -y kdenlive')




# openshot installieren
case $openshot in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/openshot-qt ]; then
            echo ${frot}'>>>>> Das Videoschnitt-Programm openshot wurde bereits installiert, mache nichts.'${KF}
        else
            echo ${fgreen}'>>>>> Das Videoschnitt-Programm openshot wird installiert.'${KF}
            sleep 3
            sudo apt install -y openshot-qt
        fi
esac
#if openshot in ('Y', 'y', ''):
#    print()
#    fileName=r'/usr/bin/openshot-qt'
#    if os.path.exists(fileName):
#        print(rot + '>>>>> Das Videoschnitt-Programm openshot wurde bereits installiert, mache nichts.' + reset)
#    else:
#        print(green + '>>>>> Das Videoschnitt-Programm openshot wird installiert.' + reset)
#        time.sleep(3)
#        os.system('sudo apt-get install -y openshot-qt')




# wine und playonlinux
case $wine in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/wine ]; then
            echo ${frot}'>>>>> Die Emulatoren wine und PlayOnLinux wurden bereits installiert, mache nichts.'${KF}
        else
            if [ -f /etc/apt/sources.list.d/winehq.list ]; then
                echo ${frot}'Das winehq-Repository wurde bereits hinzugefügt, mache nichts.'${KF}
            else
                echo ${fgreen}'>>>>> Die Emulatoren wine und PlayOnLinux werden installiert.'${KF}
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
                ##########os.system('rm -rf winehq.key*')
                sudo apt update
                sudo apt install --install-recommends -y winehq-staging playonlinux fonts-liberation libc6-dev-i386 libedit-dev libfreetype-dev libfreetype6 libfreetype6-dev libgl1-mesa-dev libgl1-mesa-glx libgnutls28-dev libgphoto2-dev libice-dev libjson-c-dev liblcms2-dev libldap2-dev libogg-dev libosmesa6 libosmesa6-dev libpcap-dev libpng16-16 libpng-dev libpng++-dev libpng-tools libsm-dev libsndfile1-dev libv4l-dev libvorbis-dev libwayland-client++1 libwayland-client-extra++1 libwayland-dev libx11-dev libxcursor-dev libxext-dev libxi-dev libxinerama-dev libxml2-dev libxrandr-dev libxrender-dev libxslt1-dev libxtst-dev libxxf86vm-dev ncurses-examples ocl-icd-dev ocl-icd-opencl-dev uuid-dev zlib1g zlib1g-dev
            fi
        fi
esac
#if wine in ('Y', 'y', ''):
#    print()
#    fileName=r'/usr/bin/wine'
#    if os.path.exists(fileName):
#        print(rot + '>>>>> Die Emulatoren wine und PlayOnLinux wurden bereits installiert, mache nichts.' + reset)
#    else:
#        print('Zunächst wird überprüft, ob das Winehq Repository nicht bereits hinzugefügt wurde.')
#        time.sleep(3)
#        if os.path.isfile('/etc/apt/sources.list.d/winehq.list'):
#            print('Das winehq-Repository wurde bereits hinzugefügt, mache nichts.')
#        else:
#            print(green + '>>>>> Die Emulatoren wine und PlayOnLinux werden installiert.' + reset)
#            time.sleep(3)
#
#            # apt-secure key Installation
#            os.system('sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key')
#            ##########os.system('wget -O- https://dl.winehq.org/wine-builds/winehq.key | gpg --dearmor | sudo tee /usr/share/keyrings/winehq.gpg')
#
#            # Repository hinzufügen (Da ein direktes echo in /etc/ wegen Dateirechten scheiterte, wurde die Datei lokal angelegt, dann verschoben und dann ein chown ausgeführt.)
#            os.system('sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/debian/dists/bookworm/winehq-bookworm.sources')
#            ##########os.system('echo "# Debian Winehq Repository" > winehq.list')
#            ##########os.system('echo "deb [signed-by=/usr/share/keyrings/winehq.gpg] http://dl.winehq.org/wine-builds/debian/ bullseye main" >> winehq.list')
#            ##########os.system('sudo mv winehq.list /etc/apt/sources.list.d/')
#            ##########os.system('sudo chown root:root /etc/apt/sources.list.d/winehq.list')
#
#            # Installation von wine
#            ##########os.system('rm -rf winehq.key*')
#            os.system('sudo apt-get update')
#            os.system('sudo apt-get install --install-recommends -y winehq-staging playonlinux fonts-liberation libc6-dev-i386 libedit-dev libfreetype-dev libfreetype6 libfreetype6-dev libgl1-mesa-dev libgl1-mesa-glx libgnutls28-dev libgphoto2-dev libice-dev libjson-c-dev liblcms2-dev libldap2-dev libogg-dev libosmesa6 libosmesa6-dev libpcap-dev libpng16-16 libpng-dev libpng++-dev libpng-tools libsm-dev libsndfile1-dev libv4l-dev libvorbis-dev libwayland-client++1 libwayland-client-extra++1 libwayland-dev libx11-dev libxcursor-dev libxext-dev libxi-dev libxinerama-dev libxml2-dev libxrandr-dev libxrender-dev libxslt1-dev libxtst-dev libxxf86vm-dev ncurses-examples ocl-icd-dev ocl-icd-opencl-dev uuid-dev zlib1g zlib1g-dev')




# steam über Flatpak
case $steam in
    [Yy]*|"")
        echo ''
        if [ -d /var/lib/flatpak/app/com.valvesoftware.Steam ]; then
            echo ${frot}'>>>>> Die Spieleplattform steam wurde bereits installiert, mache nichts.'${KF}
        else
            echo ${fgreen}'>>>>> Die Spieleplattform steam wurde bereits installiert, mache nichts.'${KF}
            sleep 3
            sudo flatpak install -y com.valvesoftware.Steam
        fi
esac
#if steam in ('Y', 'y', ''):
#    print()
#    fileName=r'/var/lib/flatpak/app/com.valvesoftware.Steam'
#    if os.path.exists(fileName):
#        print(rot + '>>>>> Die Spieleplattform steam wurde bereits installiert, mache nichts.' + reset)
#    else:
#        print(green + '>>>>> Die Spieleplattform steam wird installiert.' + reset)
#        time.sleep(3)
#        print()
#        os.system('sudo flatpak install -y flathub com.valvesoftware.Steam')




# lutris über flatpak
case $lutris in
    [Yy]*|"")
        echo ''
        if [ -d /var/lib/flatpak/app/net.lutris.Lutris ]; then
            echo ${frot}'>>>>> Die Spieleplattform lutris wurde bereits installiert, mache nichts.'${KF}
        else
            echo ${fgreen}'>>>>> Die Spieleplattform lutris wurde bereits installiert, mache nichts.'${KF}
            sleep 3
            sudo flatpak install -y net.lutris.Lutris
        fi
esac
#if lutris in ('Y', 'y', ''):
#    print()
#    fileName=r'/var/lib/flatpak/app/net.lutris.Lutris'
#    if os.path.exists(fileName):
#        print(rot + '>>>>> Die Spieleplattform lutris wurde bereits installiert, mache nichts.' + reset)
#    else:
#        print(green + '>>>>> Die Spieleplattform lutris wird installiert.' + reset)
#        time.sleep(3)
#        print()
#        os.system('sudo flatpak install -y flathub net.lutris.Lutris')
# # lutris installieren
# if lutris in ('Y', 'y', ''):
#     print()
#     fileName=r'/usr/games/lutris'
#     if os.path.exists(fileName):
#         print(rot + '>>>>> Die Spieleplattform lutris wurde bereits installiert, mache nichts.' + reset)
#     else:
#         print(green + '>>>>> Die Spieleplattform lutris wird installiert.' + reset)
#         time.sleep(3)
#
#         # apt-secure key Installation
#         os.system('wget -q https://download.opensuse.org/repositories/home:/strycore/Debian_11/Release.key')
#         os.system('sudo apt-key add Release.key')
#
#         # Repository hinzufügen (Da ein direktes echo in /etc/ wegen Dateirechten scheiterte, wurde die Datei lokal angelegt, dann verschoben und dann ein chown ausgeführt.)
#         os.system('echo "# Debian Lutris Repository" > lutris.list')
#         os.system('echo "deb http://download.opensuse.org/repositories/home:/strycore/Debian_11/ ./" >> lutris.list')
#         os.system('sudo mv lutris.list /etc/apt/sources.list.d/')
#         os.system('sudo chown root:root /etc/apt/sources.list.d/lutris.list')
#
#         # Installation von Lutris
#         os.system('rm -rf Release.key*')
#         os.system('sudo apt-get update')
#         os.system('sudo apt-get install -y lutris vulkan-tools libvulkan1 libvulkan1:i386 nvidia-opencl-icd nvidia-opencl-icd:i386 giflib-tools libgif7 libgif7:i386 mpg123 libopenal-data libopenal1 libopenal1:i386 v4l-utils libxslt1.1 libxslt1.1:i386 libva2 libva2:i386 gstreamer1.0-pulseaudio gstreamer1.0-pulseaudio:i386 gstreamer1.0-gtk3 gstreamer1.0-gtk3:i386 gstreamer1.0-plugins-base-apps')




# anydesk über Flatpak
case $anydesk in
    [Yy]*|"")
        echo ''
        if [ -d /var/lib/flatpak/app/com.anydesk.Anydesk ]; then
            echo ${frot}'>>>>> Die Remotesoftware anydesk wurde bereits installiert, mache nichts.'${KF}
        else
            echo ${fgreen}'>>>>> Die Remotesoftware anydesk wurde bereits installiert, mache nichts.'${KF}
            sleep 3
            sudo flatpak install -y com.anydesk.Anydesk
        fi
esac
#if anydesk in ('Y', 'y', ''):
#    print()
#    fileName=r'/var/lib/flatpak/app/com.anydesk.Anydesk'
#    if os.path.exists(fileName):
#        print(rot + '>>>>> Die Remotesoftware anydesk wurde bereits installiert, mache nichts.' + reset)
#    else:
#        print(green + '>>>>> Die Remotesoftware anydesk wird installiert.' + reset)
#        time.sleep(3)
#        os.system('sudo flatpak install -y com.anydesk.Anydesk')




# rustdesk über Flatpak
case $rustdesk in
    [Yy]*|"")
        echo ''
        if [ -d /var/lib/flatpak/app/com.rustdesk.RustDesk ]; then
            echo ${frot}'>>>>> Die Remotesoftware rustdesk wurde bereits installiert, mache nichts.'${KF}
        else
            echo ${fgreen}'>>>>> Die Remotesoftware rustdesk wurde bereits installiert, mache nichts.'${KF}
            sleep 3
            sudo flatpak install -y com.rustdesk.RustDesk
        fi
esac




# teamviewer über Webseite installieren
case $teamviewer in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/teamviewer ]; then
            echo ${frot}'>>>>> Die Remotesoftware teamviewer wurde bereits installiert, mache nichts.'${KF}
        else
            echo ${fgreen}'>>>>> Die Remotesoftware teamviewer wird installiert.'${KF}
            sleep 3
            wget -q https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
            sudo apt install -y ./teamviewer*.deb
            rm teamviewer*.deb
        fi
esac
#if teamviewer in ('Y', 'y', ''):
#    print()
#    fileName=r'/usr/bin/teamviewer'
#    if os.path.exists(fileName):
#        print(rot + '>>>>> Die Remotesoftware teamviewer wurde bereits installiert, mache nichts.' + reset)
#    else:
#        print(green + '>>>>> Die Remotesoftware teamviewer wird installiert.' + reset)
#        time.sleep(3)
#        os.system('wget -q https://download.teamviewer.com/download/linux/teamviewer_amd64.deb')
#        os.system('sudo apt-get install -y ./teamviewer*.deb')
#        os.system('rm teamviewer*.deb')




# ranger installieren
case $ranger in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/ranger ]; then
            echo ${frot}'>>>>> Der Terminal-Dateimanager ranger wurde bereits installiert, mache nichts.'${KF}
        else
            echo ${fgreen}'>>>>> Der Terminal-Dateimanager ranger wurde bereits installiert, mache nichts.'${KF}
            sleep 3
            apt-cache pkgnames libpoppler | grep -v dev
            read -p "Welche libpoppler-Version wird aktuell verwendet? (126 von 06.2023?) " LIBPOPPLERVER
            sudo apt install -y highlight atool w3m libpoppler${LIBPOPPLERVER} poppler-utils mediainfo ranger xfce4-terminal
            echo ${yellow}'Für die Konfiguration von Ranger siehe zim-Wiki Dateimanager.ranger'${KF}
            sleep 3
        fi
esac
#if ranger in ('Y', 'y', ''):
#    print()
#    fileName=r'/usr/bin/ranger'
#    if os.path.exists(fileName):
#        print(rot + '>>>>> Der Terminal-Dateimanager ranger wurde bereits installiert, mache nichts.' + reset)
#    else:
#        print(green + '>>>>> Der Terminal-Dateimanager ranger wird installiert.' + reset)
#        time.sleep(3)
#        os.system('apt-cache pkgnames libpoppler | grep -v dev')
#        LIBPOPPLERVER = input(yellow + 'Welche libpoppler-Version wird aktuell verwendet? (126 von 06.2023?) ' + reset)
#        os.system('sudo apt-get install -y highlight atool w3m libpoppler' + LIBPOPPLERVER + ' poppler-utils mediainfo ranger xfce4-terminal')
#        print(flila + 'Für die Konfiguration von Ranger siehe zim-Wiki Dateimanager.ranger' + reset)
#        time.sleep(3)




# yazi über Flatpak
case $yazi in
    [Yy]*|"")
        echo ''
        if [ -d /var/lib/flatpak/app/io.github.sxyazi.yazi ]; then
            echo ${frot}'>>>>> Der Terminal-Dateimanager ranger wurde bereits installiert, mache nichts.'${KF}
        else
            echo ${fgreen}'>>>>> Der Terminal-Dateimanager ranger wurde bereits installiert, mache nichts.'${KF}
            sleep 3
            sudo flatpak install -y io.github.sxyazi.yazi
        fi
esac




# zsh installieren
case $zsh in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/zsh ]; then
            echo ${frot}'>>>>> Die Shell zsh wurde bereits installiert, mache nichts.'${KF}
        else
            echo ${fgreen}'>>>>> Die Shell zsh wird installiert.'${KF}
            sleep 3
            sudo apt install -y zsh zsh-autosuggestions zsh-syntax-highlighting
            sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
            # zsh-syntax-highlighting
            echo ${yellow}'>>>>> Um syntax-highlighting in zsh zu Aktivieren muss am Ende der .zshrc-Datei folgende Zeile hinzugefügt werden:    source ~/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh'${KF}
            echo ${yellow}'>>>>> Um die Login-Shell auf zsh zu ändern nutzt man als NORMALER Benutzer den Befehl:    $ chsh -s /bin/zsh'${KF}
        fi
esac
#if zsh in ('Y', 'y', ''):
#    print()
#    fileName=r'/usr/bin/zsh'
#    if os.path.exists(fileName):
#        print(rot + '>>>>> Die Shell zsh wurde bereits installiert, mache nichts.' + reset)
#    else:
#        print(green + '>>>>> Die Shell zsh wird installiert.' + reset)
#        time.sleep(3)
#        os.system('sudo apt-get install -y zsh zsh-autosuggestions zsh-syntax-highlighting')
#        os.system('sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"')
#        # zsh-syntax-highlighting
#        print(yellow + 'Um syntax-highlighting in zsh zu Aktivieren muss am Ende der .zshrc-Datei folgende Zeile hinzugefügt werden:    source ~/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh    ' + reset)
#        print(yellow + 'Um die Login-Shell auf zsh zu ändern nutzt man als NORMALER Benutzer den Befehl:    $ chsh -s /bin/zsh    ' + reset)




# ghostty installieren (Webseite)
case $ghostty in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/ghostty ]; then
            echo ${frot}'>>>>> Das Terminal ghostty wurde bereits installiert, mache nichts.'${KF}
        else
            echo ${fgreen}'>>>>> Das Terminal ghostty wird installiert.'${KF}
            sleep 3
            # Downloadlink über https://github.com/dariogriffo/ghostty-debian/releases 
            wget -c https://github.com/dariogriffo/ghostty-debian/releases/download/1.2.2%2B1/ghostty_1.2.2-1+trixie_amd64.deb
            sudo dpkg -i ghostty_1.2.2-1+trixie_amd64.deb
        fi
esac




# kitty installieren
case $kitty in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/kitty ]; then
            echo ${frot}'>>>>> Das Terminal kitty wurde bereits installiert, mache nichts.'${KF}
        else
            echo ${fgreen}'>>>>> Das Terminal kitty wird installiert.'${KF}
            sleep 3
            sudo apt install -y kitty
        fi
esac




# tilix installieren
case $tilix in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/tilix ]; then
            echo ${frot}'>>>>> Das Terminal tilix wurde bereits installiert, mache nichts.'${KF}
        else
            echo ${fgreen}'>>>>> Das Terminal tilix wird installiert.'${KF}
            sleep 3
            sudo apt install -y tilix
        fi
esac
#if tilix in ('Y', 'y', ''):
#    print()
#    fileName=r'/usr/bin/tilix'
#    if os.path.exists(fileName):
#        print(rot + '>>>>> Das Terminal tilix wurde bereits installiert, mache nichts.' + reset)
#    else:
#        print(green + '>>>>> Das Terminal tilix wird installiert.' + reset)
#        time.sleep(3)
#        os.system('sudo apt-get install -y tilix')




# urxvt installieren
case $urxvt in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/urxvt ]; then
            echo ${frot}'>>>>> Das Terminal urxvt wurde bereits installiert, mache nichts.'${KF}
        else
            echo ${fgreen}'>>>>> Das Terminal urxvt wird installiert.'${KF}
            sleep 3
            sudo apt install -y rxvt-unicode xclip
            echo ${yellow}'>>>>> Zum konfigurieren benötigt man eine ~/.Xresources oder ~/.Xdefaults  Datei.\n      Nach ändern dieser Datei muss man ein $ xrdb -merge ~/.Xresources ausführen:'${KF}
            time.sleep(3)
        fi
esac
#if urxvt in ('Y', 'y', ''):
#    print()
#    fileName=r'/usr/bin/urxvt'
#    if os.path.exists(fileName):
#        print(rot + '>>>>> Das Terminal urxvt wurde bereits installiert, mache nichts.' + reset)
#    else:
#        print(green + '>>>>> Das Terminal urxvt wird installiert.' + reset)
#        time.sleep(3)
#        os.system('sudo apt-get install -y rxvt-unicode xclip')
#        print(yellow + '>>>>> Zum konfigurieren benötigt man eine ~/.Xresources oder ~/.Xdefaults  Datei.\n      Nach ändern dieser Datei muss man ein $ xrdb -merge ~/.Xresources ausführen:' + reset)
#        time.sleep(3)




# conky installieren
case $conky in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/conky ]; then
            echo ${frot}'>>>>> Der Systemmonitor conky wurde bereits installiert, mache nichts.'${KF}
        else
            echo ${fgreen}'>>>>> Der Systemmonitor conky wird installiert.'${KF}
            sleep 3
            sudo apt install -y --allow-unauthenticated conky conky-all lm-sensors
        fi
esac
#if conky in ('Y', 'y', ''):
#    print()
#    fileName=r'/usr/bin/conky'
#    if os.path.exists(fileName):
#        print(rot + '>>>>> Der Systemmonitor conky wurde bereits installiert, mache nichts.' + reset)
#    else:
#        print(green + '>>>>> Der Systemmonitor conky wird installiert.' + reset)
#        time.sleep(3)
#        os.system('sudo apt-get install -y --allow-unauthenticated conky conky-all lm-sensors')




# Zim-Desktop Wiki installieren
case $zim in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/zim ]; then
            echo ${frot}'>>>>> Das Desktop-Wiki zim wurde bereits installiert, mache nichts.'${KF}
        else
            echo ${fgreen}'>>>>> Das Desktop-Wiki zim wird installiert.'${KF}
            sleep 3
            sudo apt install -y zim
        fi
esac
#if zim in ('Y', 'y', ''):
#    print()
#    fileName=r'/usr/bin/zim'
#    if os.path.exists(fileName):
#        print(rot + '>>>>> Das Desktop-Wiki zim wurde bereits installiert, mache nichts.' + reset)
#    else:
#        print(green + '>>>>> Das Desktop-Wiki zim wird installiert.' + reset)
#        time.sleep(3)
#        os.system('sudo apt-get install -y zim')




# xpad installieren
case $xpad in
    [Yy]*|"")
        echo ''
        if [ -f /usr/bin/xpad ]; then
            echo ${frot}'>>>>> Die Notizzettel-App xpad wurde bereits installiert, mache nichts.'${KF}
        else
            echo ${fgreen}'>>>>> Die Notizzettel-App xpad wird installiert.'${KF}
            sleep 3
            sudo apt install -y xpad
        fi
esac
#if xpad in ('Y', 'y', ''):
#    print()
#    fileName=r'/usr/bin/xpad'
#    if os.path.exists(fileName):
#        print(rot + '>>>>> Die Notizzettel-App xpad wurde bereits installiert, mache nichts.' + reset)
#    else:
#        print(green + '>>>>> Die Notizzettel-App xpad wird installiert.' + reset)
#        time.sleep(3)
#        os.system('sudo apt-get install -y xpad')




# keepassxc Passwortmanager installieren
if keepassxc in ('Y', 'y', ''):
    print()
    fileName=r'/usr/bin/keepassxc'
    if os.path.exists(fileName):
        print(rot + '>>>>> Der Passwortmanager keepassxc wurde bereits installiert, mache nichts.' + reset)
    else:
        print(green + '>>>>> Der Passwortmanager keepassxc wird installiert.' + reset)
        time.sleep(3)
        os.system('sudo apt-get install -y keepassxc')




# gnome-passwordsafe Passwortmanager installieren
if gsafe in ('Y', 'y', ''):
    print()
    fileName=r'/usr/bin/secrets'
    if os.path.exists(fileName):
        print(rot + '>>>>> Der Passwortmanager gnome-passwordsafe wurde bereits installiert, mache nichts.' + reset)
    else:
        print(green + '>>>>> Der Passwortmanager gnome-passwordsafe wird installiert.' + reset)
        time.sleep(3)
        os.system('sudo apt-get install -y gnome-passwordsafe')




# Enwicklungs-IDE pycharm installieren
if pycharm in ('Y', 'y', ''):
    print()
    fileName=r'/var/lib/flatpak/app/com.jetbrains.PyCharm-Community'
    if os.path.exists(fileName):
        print(rot + '>>>>> Die Community-Version der Python-IDE pycharm wurde bereits installiert, mache nichts.' + reset)
    else:
        print(green + '>>>>> Die Community-Version der Python-IDE pycharm wird installiert.' + reset)
        time.sleep(3)
        os.system('sudo flatpak install -y com.jetbrains.PyCharm-Community')




# sublime-text installieren
if sublime in ('Y', 'y', ''):
    print()
    fileName=r'/usr/bin/subl'
    if os.path.exists(fileName):
        print(rot + '>>>>> Die Entwicklungs-IDE sublime-text wurde bereits installiert, mache nichts.' + reset)
    else:
        print(green + '>>>>> Die Entwicklungs-IDE sublime-text wird installiert.' + reset)
        time.sleep(3)
        print(yellow + '>>>>> Das Repository /etc/apt/sources.list.d/sublime.list wird hinzugefügt.' + reset)

        # apt-secure key Installation
        os.system('wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -')

        # Repository hinzufügen (Da ein direktes echo in /etc/ wegen Dateirechten scheiterte, wurde die Datei lokal angelegt, dann verschoben und dann ein chown ausgeführt.)
        os.system('echo "# Debian Sublime-Text Repository" > sublime.list')
        os.system('echo "deb https://download.sublimetext.com/ apt/stable/" >> sublime.list')
        os.system('sudo mv sublime.list /etc/apt/sources.list.d/')
        os.system('sudo chown root:root /etc/apt/sources.list.d/sublime.list')

        # Sublime-Text installation
        os.system('sudo apt-get update')
        os.system('sudo apt-get install -y sublime-text')




# weechat-IRC-Client installieren
if weechat in ('Y', 'y', ''):
    print()
    fileName=r'/usr/bin/weechat'
    if os.path.exists(fileName):
        print(rot + '>>>>> Der IRC-Client weechat wurde bereits installiert, mache nichts.' + reset)
    else:
        print(green + '>>>>> Der IRC-Client weechat wird installiert.' + reset)
        time.sleep(3)
        os.system('sudo apt-get install -y weechat weechat-scripts')




# kvm/qemu/virt-manager installieren
if kvm in ('Y', 'y', ''):
    print()
    fileName=r'/usr/bin/virt-manager'
    if os.path.exists(fileName):
        print(rot + '>>>>> Die Virtualisierungsumgebung kvm/qemu/virt-manager wurde bereits installiert, mache nichts.' + reset)
    else:
        print(green + '>>>>> Die Virtualisierungsumgebung kvm/qemu/virt-manager wird installiert.' + reset)
        time.sleep(3)
        os.system('sudo apt-get install -y bridge-utils libvirt-clients libvirt-daemon libvirt-daemon-system python3 python3-pip qemu-kvm qemu-system qemu-utils virtinst')
        os.system('sudo apt-get install -y virt-manager')
        kvmuser = ('Wie lautet der Benutzername welcher der Gruppe libvirt hinzugefügt werden soll? ')
        os.system('sudo usermod -aG libvirt' + kvmuser)
        os.system('sudo usermod -aG kvm' + kvmuser)
        # Netzwerk verfügbar machen
        os.system('sudo virsh net-start default')
        os.system('sudo virsh net-autostart default')
        # Kernel Modul für virtuelle Netzwerke laden
        os.system('sudo modprobe vhost_net')




# VirtualBox installieren
if vbox in ('Y', 'y', ''):
    print()
    fileName=r'/usr/bin/virtualbox'
    if os.path.exists(fileName):
        print(rot + '>>>>> Die Virtualisierungsumgebung Virtualbox wurde bereits installiert, mache nichts.' + reset)
    else:
        print(green + '>>>>> Die Virtualisierungsumgebung Virtualbox wird installiert.' + reset)
        time.sleep(3)

        # apt-secure key Installation
        os.system('wget -O- https://www.virtualbox.org/download/oracle_vbox_2016.asc | sudo gpg --dearmor --yes --output /usr/share/keyrings/oracle-virtualbox-2016.gpg')
        os.system('rm oracle_vbox_2016.asc')

        # Repository hinzufügen (Da ein direktes echo in /etc/ wegen Dateirechten scheiterte, wurde die Datei lokal angelegt, dann verschoben und dann ein chown ausgeführt.)
        os.system('echo "# Debian Virtualbox Repository" > virtualbox.list')
        os.system('echo "deb [arch=amd64 signed-by=/usr/share/keyrings/oracle-virtualbox-2016.gpg] https://download.virtualbox.org/virtualbox/debian bookworm contrib\n" >> virtualbox.list')
        os.system('sudo mv virtualbox.list /etc/apt/sources.list.d/')
        os.system('sudo chown root:root /etc/apt/sources.list.d/virtualbox.list')

#         virtzeilen = [
#         '# Debian Virtualbox Repository\n',
#         'deb [arch=amd64 signed-by=/usr/share/keyrings/oracle-virtualbox-2016.gpg] https://download.virtualbox.org/virtualbox/debian bookworm contrib\n'
#         ]
#         SourcesList = open('/etc/apt/sources.list.d/virtualbox.list', 'w')
#         SourcesList.writelines(virtzeilen)
#         SourcesList.close()

        # Installation der Virtualbox
        os.system('sudo apt-get update')
        os.system('sudo apt-get install -y dkms gnupg2 virtualbox-7.0')
        os.system('sudo usermod -aG vboxusers ' + username)
        print(yellow + '>>>>> Jetzt noch ein Reboot durchführen' + reset)
        time.sleep(3)
# # VirtualBox installieren
# if vbox in ('Y', 'y', ''):
#     print()
#     fileName=r'/usr/bin/virtualbox'
#     if os.path.exists(fileName):
#         print(rot + '>>>>> Die Virtualisierungsumgebung Virtualbox wurde bereits installiert, mache nichts.' + reset)
#     else:
#         print(green + '>>>>> Die Virtualisierungsumgebung Virtualbox wird installiert.' + reset)
#         time.sleep(3)

#         # apt-secure key Installation
#         os.system('wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -')
#         os.system('wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -')
#         # os.system('rm oracle_vbox_2016')

#         # Repository hinzufügen (Da ein direktes echo in /etc/ wegen Dateirechten scheiterte, wurde die Datei lokal angelegt, dann verschoben und dann ein chown ausgeführt.)
#         os.system('echo "# Debian Virtualbox Repository" > virtualbox.list')
#         os.system('echo "deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian bullseye contrib" >> virtualbox.list')
#         os.system('sudo mv virtualbox.list /etc/apt/sources.list.d/')
#         os.system('sudo chown root:root /etc/apt/sources.list.d/virtualbox.list')
#         #####os.system('sudo echo "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian bullseye contrib" >> /etc/apt/sources.list.d/virtualbox.list')

#         #virtzeilen = [
#         #    '# Debian Virtualbox Repository (Da kein Testing Repo vorhanden ist, wird das aktuelle Stable verwendet)\n',
#         #    'deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian bullseye contrib\n'
#         #]
#         #SourcesList = open('/etc/apt/sources.list.d/virtualbox.list', 'w')
#         #SourcesList.writelines(virtzeilen)
#         #SourcesList.close()

#         # Installation der Virtualbox
#         os.system('sudo apt-get update')
#         os.system('sudo apt-get install -y dkms gnupg2 virtualbox-6.1')
#         uvbox = input(yellow + '>>>>> Welcher Benutzername soll der Gruppe vboxusers hinzugefuegt werden? ' + reset)
#         os.system('sudo usermod -aG vboxusers ' + uvbox)
#         print(yellow + '>>>>> Jetzt noch ein Reboot durchfuehren' + reset)
#         time.sleep(3)




# texlive installieren
if texlive in ('Y', 'y', ''):
    print()
    fileName=r'/usr/bin/latex'
    if os.path.exists(fileName):
        print(rot + '>>>>> Das Textsatzsystem latex/texlive wurde bereits installiert, mache nichts.' + reset)
    else:
        print(green + '>>>>> Das latex/texlive wird installiert.' + reset)
        time.sleep(3)
        os.system('sudo apt-get install -y texlive-full context-nonfree asymptote biber dblatex fontforge fonts-freefont-ttf latexdiff latex-make latex-mk openjade psutils t1utils tex-gyre texmaker texstudio')