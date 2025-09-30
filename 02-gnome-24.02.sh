import unicodedata
import os
import time
import Desktops2305



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

#------------------------------------------------------------------------------------------


echo ""
echo ${ifyellow} '>>>>> Hier wird eine komplettinstallation von gnome angeboten, für den Fall dass noch\n      keine Installation von gnome durchgeführt wurde oder die Installation von gnome\n      fehlerhaft ist und die Konfiguration zurückgesetzt werden soll.'${KF}
#print()
#print(fcyan + '>>>>> Hier wird eine komplettinstallation von gnome angeboten, für den Fall dass noch\n      keine Installation von gnome durchgeführt wurde oder die Installation von gnome\n      fehlerhaft ist und die Konfiguration zurückgesetzt werden soll.' + reset)



echo ""
read -p "Soll eine Komplettinstallation von gnome durchgeführt werden? (Y/n): " gnome
read -p "Sollen noch weitere Anwendungen speziell für den gnome-Desktop installiert werden? (Y/n): " appsgnome
read -p "Sollen weitere Themes und Styles für GTK-basierte Desktops wie Budgie, Gnome oder Mate installiert werden? (Y/n): " themes
echo ""
echo "Soll ein Displaymanager installiert werden und falls ja welcher Displaymanager soll verwendet werden?\n 1 LightDM - Den Standarddisplaymanager von xfce, budgie, i3 u.a. verwenden\n 2 GDM     - Den Standard-Displaymanager von Gnome verwenden\n 3 sddm    - Den Simple-Desktop-Display-Manager von KDE-Plasma verwenden\n 4 Kein Displaymanager Installieren bzw. den bereits installierten nutzen\n"
read -p "Welcher Displaymanager soll installiert werden?  1, 2, 3 oder 4? " displaymanager
echo ""
echo "Soll ein bestimmter Dateibrowser installiert werden und falls ja welcher?\n 1 thunar der Dateibrowser des Xfce4-Desktops\n 2 nautlius der Dateibrowser des Gnome-Desktops\n 3 dolphin der Dateibrowser des KDE-Plasma-Desktops\n 4 Alle genannten Dateibrowser installieren\n 5 Keinen Dateibrowser\n"
read -p "Welcher Dateibrowser soll installiert werden?  \n 1, 2, 3, 4 oder 5? " files
echo ""
echo "Soll eine Kalenderapplikation installiert werden und falls ja welche?\n 1 gnome-calendar des Gnome-Desktops\n 2 korganizer von KDE-Plasma\n 3 deepin-calendar des Deepin-Desktops\n 4 Alle genannten Kalenderapplikation\n 5 Keine Kalenderapplikation\n"
read -p "Welche Kalenderapplikation soll installiert werden?  \n 1, 2, 3, 4 oder 5? " kalender
echo ""
echo "Soll ein Editor installiert werden und falls ja welcher?\n 1 gedit des Gnome-Desktops\n 2 kate von KDE-Plasma\n 3 geany - Kann über Plugins erweitert werden\n 4 Alle genannten Editoren installieren\n 5 Keine Editorapplikation\n"
read -p "Welcher Editor soll installiert werden?  \n 1, 2, 3, 4 oder 5? " editor
echo ""
echo "Soll ein bestimmter Bildbetrachter installiert werden und falls ja welcher?\n 1 eog der Bildbetrachter des Gnome-Desktops\n 2 gwenview der Bildbetrachter des KDE-Plasma-Desktops\n 3 deepin-image-viewer der Bildbetrachter des Deepin-Desktops\n 4 sxiv - ein schneller und schlanker Bildbetrachter\n 5 Alle genannten Bildbetrachter installieren\n 6 Keinen Bildbetrachter\n"
read -p "Welcher Bildbetrachter soll installiert werden?  \n 1, 2, 3, 4, 5 oder 6? " image
echo ""
echo "Soll ein bestimmter PDF-Reader installiert werden und falls ja welcher?\n 1 evince der PDF-Reader des Gnome-Desktops\n 2 okular der PDF-Reader des KDE-Plasma-Desktops\n 3 mupdf - ein schlanker und genügsamer PDF-Reader\n 4 Alle genannten PDF-Reader installieren\n 5 Keinen PDF-Reader\n"
read -p "Welcher PDF-Reader soll installiert werden?  \n 1, 2, 3, 4 oder 5? " pdf
echo ""
echo "Soll ein Tool für Bildschirmfotos installiert werden und falls ja welches?\n 1 scrot - Bildschirmfotos über die Kommandozeile\n 2 flameshot - GUI um Fotos zu erstellen und vor dem speichern zu bearbeiten\n 3 ksnip - ein Screenshot-Tool für den Plasma-Desktop\n 4 deepin-screenshot vom deepin-Desktop verwenden\n 5 Alle genannten Tools für Screenshots installieren\n 6 Kein Tool für Screenshots\n"
read -p "Welches Tool für Bildschirmfotos soll installiert werden?  \n 1, 2, 3, 4, 5 oder 6? " screen

#print()
#gnome = input(fcyan + 'Soll eine Komplettinstallation von gnome durchgeführt werden? (Y/n): ' + reset)
#appsgnome = input(fcyan + 'Sollen noch weitere Anwendungen speziell für den gnome-Desktop installiert werden? (Y/n): ' + reset)
#themes = input(fcyan + 'Sollen weitere Themes und Styles für GTK-basierte Desktops wie Budgie, Gnome oder Mate installiert werden? (Y/n): ' + reset)
#print()
#print(fcyan + 'Soll ein Displaymanager installiert werden und falls ja welcher Displaymanager soll verwendet werden?' + reset)
#displaymanager = input(fcyan + ' 1 LightDM - Den Standarddisplaymanager von xfce, budgie, i3 u.a. verwenden\n 2 GDM     - Den Standard-Displaymanager von Gnome verwenden\n 3 sddm    - Den Simple-Desktop-Display-Manager von KDE-Plasma verwenden\n 4 Kein Displaymanager Installieren bzw. den bereits installierten nutzen\n\n 1, 2, 3 oder 4? ' + reset)
#print()
#print(fcyan + 'Soll ein bestimmter Dateibrowser installiert werden und falls ja welcher?' + reset)
#files = input(fcyan + ' 1 thunar der Dateibrowser des Xfce4-Desktops\n 2 nautlius der Dateibrowser des Gnome-Desktops\n 3 dolphin der Dateibrowser des KDE-Plasma-Desktops\n 4 Alle genannten Dateibrowser installieren\n 5 Keinen Dateibrowser\n\n 1, 2, 3, 4 oder 5? ' + reset)
#print()
#print(fcyan + 'Soll eine Kalenderapplikation installiert werden und falls ja welche?' + reset)
#kalender = input(fcyan + ' 1 gnome-calendar des Gnome-Desktops\n 2 korganizer von KDE-Plasma\n 3 deepin-calendar des Deepin-Desktops\n 4 Alle genannten Kalenderapplikation\n 5 Keine Kalenderapplikation\n\n 1, 2, 3, 4 oder 5? ' + reset)
#print()
#print(fcyan + 'Soll ein Editor installiert werden und falls ja welcher?' + reset)
#editor = input(fcyan + ' 1 gedit des Gnome-Desktops\n 2 kate von KDE-Plasma\n 3 geany - Kann über Plugins erweitert werden\n 4 Alle genannten Editoren installieren\n 5 Keine Editorapplikation\n\n 1, 2, 3, 4 oder 5? ' + reset)
#print()
#print(fcyan + 'Soll ein bestimmter Bildbetrachter installiert werden und falls ja welcher?' + reset)
#image = input(fcyan + ' 1 eog der Bildbetrachter des Gnome-Desktops\n 2 gwenview der Bildbetrachter des KDE-Plasma-Desktops\n 3 deepin-image-viewer der Bildbetrachter des Deepin-Desktops\n 4 sxiv - ein schneller und schlanker Bildbetrachter\n 5 Alle genannten Bildbetrachter installieren\n 6 Keinen Bildbetrachter\n\n 1, 2, 3, 4, 5 oder 6? ' + reset)
#print()
#print(fcyan + 'Soll ein bestimmter PDF-Reader installiert werden und falls ja welcher?' + reset)
#pdf = input(fcyan + ' 1 evince der PDF-Reader des Gnome-Desktops\n 2 okular der PDF-Reader des KDE-Plasma-Desktops\n 3 mupdf - ein schlanker und genügsamer PDF-Reader\n 4 Alle genannten PDF-Reader installieren\n 5 Keinen PDF-Reader\n\n 1, 2, 3, 4 oder 5? ' + reset)
#print()
#print(fcyan + 'Soll ein Tool für Bildschirmfotos installiert werden und falls ja welches?' + reset)
#screen = input(fcyan + ' 1 scrot - Bildschirmfotos über die Kommandozeile\n 2 flameshot - GUI um Fotos zu erstellen und vor dem speichern zu bearbeiten\n 3 ksnip - ein Screenshot-Tool für den Plasma-Desktop\n 4 deepin-screenshot vom deepin-Desktop verwenden\n 5 Alle genannten Tools für Screenshots installieren\n 6 Kein Tool für Screenshots\n\n 1, 2, 3, 4, 5 oder 6? ' + reset)




# Komplettinstallation von gnome
case $gnome in
    [Yy]*|"")
        echo ''
        if [ -f /usr/share/xsessions/gnome.desktop ]; then
            echo ${ifrot}'>>>>> Es wurde bereits eine gnome-Session gefunden. Soll dennoch die gnome-Komplettinstallation durchgeführt werden? (1/2)\n'${KF}
            read -p ">>> 1. Ja, die vorhandene Installation ist fehlerhaft und muss reinstalliert werden.\n>>> 2. Nein, ich überprüfe erst noch die bereits installierte gnome-Session, bevor ich Tools überschreibe. " sessiongnome
            case $sessiongnome in
                1*)
                    echo ${ifgrn}'>>>>> Eine Komplettinstallation von gnome, mit allen Anwendungen wird installiert.'${KF}
                    sleep 3
                    sudo apt-get install -y task-gnome-desktop wayland-utils
                ;;
                2*)
                    echo ${ifrot}'>>>>> Die vorhandene Installation wird zur Überprüfung beibehalten, mache nichts.'${KF}
                    sleep 3
                ;;
            esac
        else
            echo ${ifgrn}'>>>>> Eine Komplettinstallation von gnome, mit allen Anwendungen wird installiert.'${KF}
            sleep 3
            sudo apt-get install -y task-gnome-desktop wayland-utils
        fi
esac

# print()
#if gnome in ('Y', 'y', ''):
#    fileName=r'/usr/share/xsessions/gnome.desktop'
#    if os.path.exists(fileName):
#        sessiongnome = input (rot + '>>>>> Es wurde bereits eine gnome-Session gefunden. Soll dennoch die gnome-Komplettinstallation durchgeführt werden? (1/2)\n' + reset + yellow + '>>> 1. Ja, die vorhandene Installation ist fehlerhaft und muss reinstalliert werden.\n>>> 2. Nein, ich überprüfe erst noch die bereits installierte gnome-Session, bevor ich Tools überschreibe. ' + reset)
#        if sessiongnome=='1':
#            print(green + '>>>>> Eine Komplettinstallation von gnome, mit allen Anwendungen wird installiert.' + reset)
#            time.sleep(3)
#            os.system('sudo apt-get install -y task-gnome-desktop wayland-utils')
#        else:
#            print(rot + '>>>>> Die vorhandene Installation wird zur Überprüfung beibehalten, mache nichts.' + reset)
#            time.sleep(3)
#    else:
#        print(green + '>>>>> Eine Komplettinstallation von gnome, mit allen Anwendungen wird installiert.' + reset)
#        time.sleep(3)
#        os.system('sudo apt-get install -y task-gnome-desktop wayland-utils')




# Weitere Anwendungen speziell für gnome
print()
if appsgnome in ('Y', 'y', ''):
    print(green + '>>>>> Es werden noch weitere Anwendungen speziell für gnome installiert.' + reset)
    time.sleep(3)
    os.system('sudo apt-get install -y plank transmission-gtk')




# Themes und Styles installieren
print()
if themes in ('Y', 'y', ''):
    print(green + '>>>>> Weitere Themes und Styles für GTK-basierte Desktops werden installiert.' + reset)
    time.sleep(3)
    Desktops2305.themes()
    Desktops2305.icons()
    Desktops2305.fonts()



# Displaymanager
print()
Desktops2305.displaymanager(displaymanager)




# Dateibrowser installieren
print()
Desktops2305.files(files)




# Kalenderapplikation(en) installieren
print()
Desktops2305.kalender(kalender)




# Editoren(en) installieren
print()
Desktops2305.editor(editor)




# Bildbetrachter installieren
print()
Desktops2305.image(image)




# PDF-Reader installieren
print()
Desktops2305.pdf(pdf)




# Tool für Bildschirmfotos installieren
print()
Desktops2305.screen(screen)
