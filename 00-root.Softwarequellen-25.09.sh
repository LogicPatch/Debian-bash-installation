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



# User ist noch nicht in  /etc/sudoers  eingetragen, daher muss dieses Script als root ausgeführt werden.

#DISTRO='?????'             # Debian 16 Coming up
#DISTRO='duke'              # Debian 15 Unstable/sid
#DISTRO='forky'             # Debian 14 Testing
#DISTRO='trixie'            # Debian 13 Stable
#DISTRO='bookworm'  		# Debian 12 Oldstable

#------------------------------------------------------------------------------------------




read -p "Soll das Debian Multimedia Repository hinzugefügt werden? (Y/n): " debmul
read -p "Soll über Flatpak Pakete installiert werden können (Y/n)?: " flatpak




##### Den Benutzer mit Admin-Rechten der Datei  /etc/sudoers  hinzufügen
echo ''
echo ${ifyellow} '>>>>> Der Benutzer wird der Datei /etc/sudoers mit Admin-Rechten hinzugefügt.'${KF}
sleep 3
echo $(logname) 'ALL=(ALL:ALL) ALL' >> /etc/sudoers




##### Datei /etc/apt/sources.list anpassen
echo ""
echo ${ifyellow}'>>>>> Die Datei /etc/apt/sources.list wird angepasst'${KF}
sleep 3
echo "# Official Sources" > /etc/apt/sources.list
echo "deb http://deb.debian.org/debian/ trixie main non-free-firmware contrib non-free" >> /etc/apt/sources.list
echo "deb-src http://deb.debian.org/debian/ trixie main non-free-firmware contrib non-free" >> /etc/apt/sources.list
echo "deb http://deb.debian.org/debian/ trixie-updates main non-free-firmware contrib non-free" >> /etc/apt/sources.list
echo "deb-src http://deb.debian.org/debian/ trixie-updates main non-free-firmware contrib non-free" >> /etc/apt/sources.list
echo "deb http://security.debian.org/debian-security trixie-security main non-free-firmware contrib" >> /etc/apt/sources.list
echo "deb-src http://security.debian.org/debian-security trixie-security main non-free-firmware contrib" >> /etc/apt/sources.list

echo "# Backports" >> /etc/apt/sources.list
echo "deb http://deb.debian.org/debian trixie-backports main non-free-firmware contrib non-free" >> /etc/apt/sources.list
echo "deb-src http://deb.debian.org/debian trixie-backports main non-free-firmware contrib non-free" >> /etc/apt/sources.list
apt-get update




##### Debian Multimedia Repository hinzufügen
case $debmul in
    [Yy]*|"")
        echo ''
        if [ -f /etc/apt/sources.list.d/multimedia.listzz ] ; then
            echo ${ifgrn}'>>>>> Das Debian Multimedia Repository wurde bereits hinzugefügt, mache nichts.'${KF}
            sleep 3
        else
            echo ${ifyellow}'>>>>> Das Debian Multimedia Repository wird hinzugefügt.'${KF}
            sleep 3
	    ##### Keyring von deb-multimedia herunterladen und installieren
	    wget https://www.deb-multimedia.org/pool/main/d/deb-multimedia-keyring/deb-multimedia-keyring_2024.9.1_all.deb
            sudo dpkg -i deb-multimedia-keyring_2024.9.1_all.deb
	    ##### Repository hinzufügen in Datei    multimedia.list
            echo "#Debian Multimedia Repository" > /etc/apt/sources.list.d/multimedia.list
            echo "deb https://www.deb-multimedia.org trixie main non-free" >> /etc/apt/sources.list.d/multimedia.list
            #apt-get update -oAcquire::AllowInsecureRepositories=true
            #apt-get install -y deb-multimedia-keyring -oAcquire::AllowInsecureRepositories=true
            apt-get update
       fi
esac



##### Multilib installieren
echo ''
echo ${ifyellow} '>>>>> Um Mulitilib zu ermöglichen, werden zunächst die Unterstützten Architekturen angezeigt.'${KF}
dpkg --print-architecture ; dpkg --print-foreign-architectures
echo ${ifyellow} '>>>>> Noch sollte hier nur amd64 angezeigt werden'${KF}
sleep 3
dpkg --add-architecture i386
apt update
apt install -y libc6-i386 sudo
echo ''
dpkg --print-architecture ; dpkg --print-foreign-architectures
echo ${ifyellow} '>>>>> Jetzt sollte zusätzlich noch i386 angezeigt werden'${KF}
sleep 3




##### Flatpak installieren
#if [[ $flatpak == @(Y|y|'') ]] ; then
case $flatpak in 
    [Yy]*|"")
        echo ''
        echo ${ifgrn} '>>>>> Es wird alles Bereit gemacht um über Flatpak Pakete installieren zu können.'${KF}
        sleep 3
        apt install -y flatpak
        flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
        echo ${ifyellow} '>>> Es ist sinnvoll jetzt ein reboot auszuführen. Dann können Flatpak-Pakete installiert werden.'${KF}
        sleep 3
esac
#fi




##### Update des Betriebssystems
echo ''
echo ${ifyellow} '>>>>> Es folgt noch ein Update des Systems'${KF}
sleep 3
apt update
apt upgrade -y --allow-unauthenticated
apt dist-upgrade -y --allow-unauthenticated
apt autoremove -y
