
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


#------------------------------------------------------------------------------------------


echo ""
echo -e ${ifyellow} '>>>>> Hier wird eine komplettinstallation von gnome angeboten, für den Fall dass noch\n      keine Installation von gnome durchgeführt wurde oder die Installation von gnome\n      fehlerhaft ist und die Konfiguration zurückgesetzt werden soll.'${KF}



echo ""
read -p "Soll eine Komplettinstallation von gnome durchgeführt werden? (Y/n): " gnome
read -p "Sollen noch weitere Anwendungen speziell für den gnome-Desktop installiert werden? (Y/n): " appsgnome
read -p "Sollen weitere Themes und Styles für GTK-basierte Desktops wie Budgie, Gnome oder Mate installiert werden? (Y/n): " themes
echo ""
echo -e ${ifyellow} "Soll ein Displaymanager installiert werden und falls ja welcher Displaymanager soll verwendet werden?\n" ${KF}"(1) LightDM - Den Standarddisplaymanager von xfce, budgie, i3 u.a. verwenden\n (2) GDM     - Den Standard-Displaymanager von Gnome verwenden\n (3) sddm    - Den Simple-Desktop-Display-Manager von KDE-Plasma verwenden\n (4) Kein Displaymanager Installieren bzw. den bereits installierten nutzen"
read -p "  " displaymanager
echo ""
echo -e ${ifyellow} "Soll ein bestimmter Dateibrowser installiert werden und falls ja welcher?\n" ${KF}"(1) thunar der Dateibrowser des Xfce4-Desktops\n (2) nautlius der Dateibrowser des Gnome-Desktops\n (3) dolphin der Dateibrowser des KDE-Plasma-Desktops\n (4) Alle genannten Dateibrowser installieren\n (5) Keinen Dateibrowser"
read -p "  " files
echo ""
echo -e ${ifyellow} "Soll eine Kalenderapplikation installiert werden und falls ja welche?\n" ${KF}"(1) gnome-calendar des Gnome-Desktops\n (2) korganizer von KDE-Plasma\n (3) calindori für Plasma-Mobile\n (4) Alle genannten Kalenderapplikation\n (5) Keine Kalenderapplikation"
read -p "  " kalender
echo ""
echo -e ${ifyellow} "Soll ein Editor installiert werden und falls ja welcher?\n" ${KF}"(1) gedit des Gnome-Desktops\n (2) kate von KDE-Plasma\n (3) geany - Kann über Plugins erweitert werden\n (4) Alle genannten Editoren installieren\n (5) Keine Editorapplikation"
read -p "  " editor
echo ""
echo -e ${ifyellow} "Soll ein bestimmter Bildbetrachter installiert werden und falls ja welcher?\n" ${KF}"(1) eog der Bildbetrachter des Gnome-Desktops\n (2) gwenview der Bildbetrachter des KDE-Plasma-Desktops\n (3) lximage der Bildbetrachter des LxQT-Desktops\n (4) sxiv - ein schneller und schlanker Bildbetrachter\n (5) Alle genannten Bildbetrachter installieren\n (6) Keinen Bildbetrachter"
read -p "  " image
echo ""
echo -e ${ifyellow} "Soll ein bestimmter PDF-Reader installiert werden und falls ja welcher?\n" ${KF}"(1) papers der PDF-Reader des Gnome-Desktops\n (2) okular der PDF-Reader des KDE-Plasma-Desktops\n (3) mupdf - ein schlanker und genügsamer PDF-Reader\n (4) Alle genannten PDF-Reader installieren\n (5) Keinen PDF-Reader"
read -p "  " pdf
echo ""
echo -e ${ifyellow} "Soll ein Tool für Bildschirmfotos installiert werden und falls ja welches?\n" ${KF}"(1) flameshot - GUI um Fotos zu erstellen und vor dem speichern zu bearbeiten\n (2) spectacle - Das Screenshot-Tool des KDE-Plasma-Desktops\n (3) scrot - Bildschirmfotos über die Kommandozeile\n (4) xfce4-screenshooter - Das Screenshot-Tool des xfce-Desktops\n (5) Alle genannten Tools für Screenshots installieren\n (6) Kein Tool für Screenshots"
read -p "  " screen




# Komplettinstallation von gnome
case $gnome in
    [Yy]*|"")
        echo ''
        if [ -f /usr/share/xsessions/gnome.desktop ]; then
            echo -e ${ifrot}">>>>> Es wurde bereits eine gnome-Session gefunden. Soll dennoch die gnome-Komplettinstallation durchgeführt werden? (1/2)\n"${KF}
            echo "(1) Ja, die vorhandene Installation ist fehlerhaft und muss reinstalliert werden.\n(2) Nein, ich überprüfe erst noch die bereits installierte gnome-Session, bevor ich Tools überschreibe."
            read -p " " sessiongnome
            #read -p ">>> 1. Ja, die vorhandene Installation ist fehlerhaft und muss reinstalliert werden.\n>>> 2. Nein, ich überprüfe erst noch die bereits installierte gnome-Session, bevor ich Tools überschreibe. " sessiongnome
            case $sessiongnome in
                1*)
                    echo -e ${ifgrn}'>>>>> Eine Komplettinstallation von gnome, mit allen Anwendungen wird installiert.'${KF}
                    sleep 3
                    sudo apt reinstall -y task-gnome-desktop wayland-utils
                ;;
                2*)
                    echo -e ${ifrot}'>>>>> Die vorhandene Installation wird zur Überprüfung beibehalten, mache nichts.'${KF}
                    sleep 3
                ;;
            esac
        else
            echo -e ${ifgrn}'>>>>> Eine Komplettinstallation von gnome, mit allen Anwendungen wird installiert.'${KF}
            sleep 3
            sudo apt install -y task-gnome-desktop wayland-utils
        fi
esac




# Weitere Anwendungen speziell für gnome
case $gnome in
    [Yy]*|"")
        echo ''
        echo -e ${ifgrn} '>>>>> Es werden noch weitere Anwendungen speziell für gnome installiert.'${KF}
        sleep 3
        sudo apt install -y gnome-shell-extensions-manager plank transmission-gtk
esac




# Themes und Styles installieren
case $themes in
    [Yy]*|"")
        . ./Desktops2510.sh
        themes
        icons
        fonts
esac




# Displaymanager
. ./Desktops2510.sh
displaymanager




# Dateibrowser installieren
. ./Desktops2510.sh
files




# Kalenderapplikation(en) installieren
. ./Desktops2510.sh
kalender




# Editoren(en) installieren
. ./Desktops2510.sh
editor




# Bildbetrachter installieren
. ./Desktops2510.sh
image




# PDF-Reader installieren
. ./Desktops2510.sh
pdf




# Tool für Bildschirmfotos installieren
. ./Desktops2510.sh
screen
