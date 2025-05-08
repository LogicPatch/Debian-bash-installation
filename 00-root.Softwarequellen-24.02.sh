import unicodedata
import os
import time



# Farbige echo-Ausgaben (nur bei echo -e)   https://gist.github.com/lomedil/41b739a74b481c4b0a47fca09f42bea3
KF='\e[0m'			# Keine Farbe. (Farbe zurücksetzen)
iflil='\e[1;95m'	# intensives fettes Lila (verschiedene Versionen)
ifgrn='\e[1;92m'	# intensives fettes Grün (bereits installierte Pakete)
ifblu='\e[1;94m'	# intensives fettes Blau (neu zu installierende Pakete)
iftks='\e[1;96m'	# intensives fettes Türkis (Überprüfungsmeldung) 
itks='\e[0;96m'		# intensives Türkis (Paketnamen)
ifrot='\e[1;91m'	# intensives fettes Rot (Fehler)
yellow='\033[1;33m'   # Gelb



# User ist noch nicht in  /etc/sudoers  eingetragen, daher muss dieses Script als root ausgeführt werden.

#DISTRO='?????'             # Debian 15 Coming up
#DISTRO='forky'             # Debian 14 Unstable
#DISTRO='trixie'            # Debian 13 Testing
#DISTRO='bookworm'  		# Debian 12 Stable
#DISTRO='bullseye'			# Debian 11 Oldstable

#------------------------------------------------------------------------------------------



 
read -p 'Soll das Debian Multimedia Repository hinzugefügt werden? (Y/n): ' debmul
read -p 'Soll über Flatpak Pakete installiert werden können (Y/n)?: ' flatpak
# Nur das Home-Directory des aktuellen Benutzers auslesen lassen
userhome = $HOME
# Nur den Benutzernamen des aktuellen Benutzers auslesen lassen
user = $USER


echo ''
# Datei /etc/apt/sources.list anpassen
echo -e ${yellow}'>>>>> Die Datei /etc/apt/sources.list wird angepasst'${KF}
sleep 3
tee /etc/apt/sources.list &>/dev/null <<EOF
# Official Sources
deb http://deb.debian.org/debian/ bookworm main non-free-firmware contrib non-free
deb-src http://deb.debian.org/debian/ bookworm main non-free-firmware contrib non-free
deb http://deb.debian.org/debian/ bookworm-updates main non-free-firmware contrib non-free
deb-src http://deb.debian.org/debian/ bookworm-updates main non-free-firmware contrib non-free
deb http://security.debian.org/debian-security bookworm-security main non-free-firmware contrib
deb-src http://security.debian.org/debian-security bookworm-security main non-free-firmware contrib

# Backports
deb http://deb.debian.org/debian bookworm-backports main non-free-firmware contrib non-free
deb-src http://deb.debian.org/debian bookworm-backports main non-free-firmware contrib non-free
EOF
apt-get update




# Debian Multimedia Repository hinzufügen
if [[ $debmul == @(Y|y|'') ]] ; then
    echo ''
    if [ -f /etc/apt/sources.list.d/multimedia.list ] ; then
        echo -e ${yellow}'>>>>> Das Debian Multimedia Repository wurde bereits hinzugefügt, mache nichts.'
        sleep 3
    else
        echo -e ${yellow}'>>>>> Das Debian Multimedia Repository wird hinzugefügt.'
        sleep 3
        echo '#Debian Multimedia Repository' > /etc/apt/sources.list.d/multimedia.list
        echo 'deb https://www.deb-multimedia.org bookworm main non-free' >> /etc/apt/sources.list.d/multimedia.list
        apt-get update -oAcquire::AllowInsecureRepositories=true
        apt-get install deb-multimedia-keyring -oAcquire::AllowInsecureRepositories=true
        apt-get update
    fi
fi




# Multilib installieren
echo ''
echo -e ${yellow} '>>>>> Um Mulitilib zu ermöglichen, werden zunächst die Unterstützten Architekturen angezeigt.'
dpkg --print-architecture ; dpkg --print-foreign-architectures
echo -e ${yellow} '>>>>> Noch sollte hier nur amd64 angezeigt werden'
sleep 3
dpkg --add-architecture i386
apt update
apt install -y libc6-i386 sudo
echo ''
dpkg --print-architecture ; dpkg --print-foreign-architectures
echo -e ${yellow} '>>>>> Jetzt sollte zusätzlich noch i386 angezeigt werden'
sleep 3




# Flatpak installieren
if flatpak in ('Y', 'y', ''):
    print()
    print(green + '>>>>> Es wird alles Bereit gemacht um über Flatpak Pakete installieren zu können.' + reset)
    time.sleep(3)
    os.system('apt-get install -y flatpak gnome-software-plugin-flatpak')
    os.system('flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo')
    print(yellow + '>>> Es ist sinnvoll jetzt ein reboot auszuführen. Dann können Flatpak-Pakete installiert werden.' + reset)
    time.sleep(3)




# Den Benutzer mit Admin-Rechten der Datei  /etc/sudoers  hinzufügen
print()
print(yellow + '>>>>> Der Benutzer wird der Datei /etc/sudoers mit Admin-Rechten hinzugefügt.' + reset)
time.sleep(3)
Zeilen = [
    user + ' ALL=(ALL:ALL) ALL\n',
]
sudoers = open('/etc/sudoers', 'a')
sudoers.writelines(Zeilen)
sudoers.close()




# Update des Betriebssystems
print()
print(yellow + 'Es folgt noch ein Update des Systems ' + reset)
time.sleep(3)
os.system('apt-get update')
os.system('apt-get upgrade -y')
os.system('apt-get dist-upgrade -y')
os.system('apt autoremove -y')
