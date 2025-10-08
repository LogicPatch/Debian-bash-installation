

# Farbige echo-Ausgaben (nur bei echo -e)   https://gist.github.com/lomedil/41b739a74b481c4b0a47fca09f42bea3
KF='\e[0m'			    # Keine Farbe. (Farbe zurücksetzen)
iflil='\e[1;95m'	    # intensives fettes Lila (verschiedene Versionen)
ifgrn='\e[1;92m'	    # intensives fettes Grün (bereits installierte Pakete)
ifblu='\e[1;94m'	    # intensives fettes Blau (neu zu installierende Pakete)
iftks='\e[1;96m'	    # intensives fettes Türkis (Überprüfungsmeldung) 
itks='\e[0;96m'		    # intensives Türkis (Paketnamen)
ifrot='\e[1;91m'	    # intensives fettes Rot (Fehler)
ifyellow='\e[1;93m'     # intensives fettes Gelb

#------------------------------------------------------------------------------------------



: '
Ab den Themes werden hier alle weiteren Installationen festgehalten, damit Redundance bei weiteren Desktopinstallationen vermieden wird.
   Die Komplettinstallation und die Installation weiterer Anwendungen wird weiterhin im entsprechenden Desktop-Script vorgenommen.
'





# Themes und Styles installieren
# --- STABLE trixie
# Themes GTK
themes () {
    echo ""
    echo ${ifgrn} '>>>>> Weitere GTK-Themes werden installiert.'${KF}
    sleep 3
    sudo apt install -y arc-theme blackbird-gtk-theme bluebird-gtk-theme breeze-gtk-theme darkblood-gtk-theme darkcold-gtk-theme darkfire-gtk-theme darkmint-gtk-theme gnome-themes-extra greybird-gtk-theme grub-theme-breeze numix-gtk-theme orchis-gtk-theme xfwm4-theme-breeze yaru-theme-gtk
}

# Themes Qt
themesqt () {
    echo ""
    echo ${ifgrn} '>>>>> Weitere Qt-Themes werden installiert.'${KF}
    sleep 3
    sudo apt install -y adwaita-qt breeze grub-theme-breeze lxqt-themes lxqt-theme-debian materia-kde
}

# Icons
icons () {
    echo ""
    echo ${ifgrn} '>>>>> Weitere Icon-Themes werden installiert.'${KF}
    sleep 3
    sudo apt install -y adwaita-icon-theme breeze-icon-theme deepin-icon-theme elementary-icon-theme elementary-xfce-icon-theme faba-icon-theme faenza-icon-theme gnome-extra-icons gnome-brave-icon-theme gnome-dust-icon-theme gnome-human-icon-theme gnome-icon-theme gnome-icon-theme-nuovo gnome-icon-theme-suede gnome-noble-icon-theme gnome-theme-gilouche gnome-wine-icon-theme moka-icon-theme numix-icon-theme numix-icon-theme-circle obsidian-icon-theme paper-icon-theme papirus-icon-theme tango-icon-theme
}

# Schriftarten
fonts () {
    echo ""
    echo ${ifgrn} '>>>>> Weitere Schriftarten werden installiert.'${KF}
    sleep 3
    sudo apt install -y fonts-adf-verana fonts-anonymous-pro fonts-arundina fonts-cantarell fonts-clear-sans fonts-dejavu fonts-engadget fonts-firacode fonts-font-awesome fonts-fork-awesome fonts-hack fonts-hack-otf fonts-hack-ttf fonts-hack-web fonts-inconsolata fonts-jetbrains-mono fonts-lato fonts-liberation2 fonts-lmodern fonts-mononoki fonts-noto fonts-noto-mono fonts-radisnoir fonts-roboto fonts-roboto-slab fonts-roboto-unhinted fonts-telu fonts-terminus fonts-terminus-otb fonts-ubuntu fonts-ubuntu-console fonts-ubuntu-title ruby-prawn-icon ttf-ancient-fonts ttf-bitstream-vera ttf-mscorefonts-installer ttf-staypuft ttf-summersby ttf-xfree86-nonfree xfonts-base xfonts-encodings xfonts-mona xfonts-scalable xfonts-terminus xfonts-terminus-oblique
}

# ====================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================
# --- TESTING forky 2025.09
# Themes GTK
themestesting () {
    echo ""
    echo ${ifgrn} '>>>>> Weitere GTK-Themes werden installiert.'${KF}
    sleep 3
    sudo apt install -y arc-theme blackbird-gtk-theme bluebird-gtk-theme breeze-gtk-theme darkblood-gtk-theme darkcold-gtk-theme darkfire-gtk-theme darkmint-gtk-theme gnome-themes-extra greybird-gtk-theme grub-theme-breeze materia-gtk-theme numix-gtk-theme orchis-gtk-theme xfwm4-theme-breeze
}

# Themes Qt
themesqttesting () {
    echo ""
    echo ${ifgrn} '>>>>> Weitere Qt-Themes werden installiert.'${KF}
    sleep 3
    sudo apt install -y adwaita-qt breeze grub-theme-breeze lxqt-themes lxqt-theme-debian materia-kde
}

# Icons
iconstesting () {
    echo ""
    echo ${ifgrn} '>>>>> Weitere Icon-Themes werden installiert.'${KF}
    sleep 3
    sudo apt install -y adwaita-icon-theme breeze-icon-theme deepin-icon-theme elementary-icon-theme elementary-xfce-icon-theme faenza-icon-theme gnome-extra-icons gnome-icon-theme gnome-icon-theme-nuovo gnome-icon-theme-suede gnome-dust-icon-theme gnome-human-icon-theme gnome-noble-icon-theme gnome-theme-gilouche gnome-wine-icon-theme human-icon-theme moka-icon-theme numix-icon-theme numix-icon-theme-circle obsidian-icon-theme paper-icon-theme papirus-icon-theme tangerine-icon-theme tango-icon-theme
}

# Schriftarten
fontstesting () {
    echo ""
    echo ${ifgrn} '>>>>> Weitere Schriftarten werden installiert.'${KF}
    sleep 3
    sudo apt-get install -y fonts-adf-verana fonts-anonymous-pro fonts-arundina fonts-cantarell fonts-clear-sans fonts-dejavu fonts-engadget fonts-firacode fonts-font-awesome fonts-fork-awesome fonts-hack fonts-hack-otf fonts-hack-ttf fonts-hack-web fonts-inconsolata fonts-jetbrains-mono fonts-lato fonts-liberation2 fonts-lmodern fonts-mononoki fonts-noto fonts-noto-mono fonts-radisnoir fonts-roboto fonts-roboto-slab fonts-roboto-unhinted fonts-telu fonts-terminus fonts-terminus-otb fonts-ubuntu fonts-ubuntu-console fonts-ubuntu-title ruby-font-awesome-rails ruby-prawn-icon ttf-ancient-fonts ttf-anonymous-pro ttf-bitstream-vera ttf-mscorefonts-installer ttf-staypuft ttf-summersby ttf-xfree86-nonfree xfonts-base xfonts-encodings xfonts-mona xfonts-scalable xfonts-terminus xfonts-terminus-oblique
}




# Displaymanager
displaymanager () {
    case $displaymanager in
        1*)
            ##### LightDM 
            echo ""
            echo ${ifgrn}'>>>>> LightDM - Der Standarddisplaymanager von xfce, budgie, i3 u.a. wird installiert.'${KF}
            sleep 3
            sudo apt install -y lightdm lightdm-settings lightdm-gtk-greeter lightdm-gtk-greeter-settings slick-greeter
            echo ""
            echo ${ifyellow}'Bitte wählen Sie den zu verwendenden Displaymanager aus der Liste aus.'${KF}
            sudo dpkg-reconfigure lightdm
    ;;
        2*)
            ##### GDM
            echo ""
            echo ${ifgrn}'>>>>> GDM - Der Standard-Displaymanager von Gnome wird installiert.'${KF}
            sleep 3
            sudo apt install -y gdm3
            echo ""
            echo ${ifyellow}'Bitte wählen Sie den zu verwendenden Displaymanager aus der Liste aus.'${KF}
            sudo dpkg-reconfigure gdm3
    ;;
        3*)
            ##### SDDM
            echo ""
            echo ${ifgrn}'>>>>> sddm - Der Simple-Desktop-Display-Manager von KDE-Plasma wird installiert.'${KF}
            sleep 3
            sudo apt install -y sddm kde-config-sddm sddm-theme-breeze sddm-theme-debian-breeze sddm-theme-elarun sddm-theme-debian-elarun sddm-theme-maui sddm-theme-debian-maui sddm-theme-maya sddm-theme-maldives
            echo ""
            echo ${ifyellow}'Bitte wählen Sie den zu verwendenden Displaymanager aus der Liste aus.'${KF}
            sudo dpkg-reconfigure sddm
    ;;
        4*)
            ##### Kein Displaymanager
            :
    ;;
    esac
}




# Dateibrowser installieren
files () {
    case $files in
        1*)
            ##### thunar 
            echo ""
            echo ${ifgrn}'>>>>> thunar - Der Dateibrowser des Xfce4-Desktops wird installiert.'${KF}
            sleep 3
            sudo apt install -y thunar tumbler tumbler-plugins-extra
    ;;
        2*)
            ##### nautlius
            echo ""
            echo ${ifgrn}'>>>>> nautlius - Der Dateibrowser des Gnome-Desktop wird installiert.'${KF}
            sleep 3
            sudo apt install -y nautilus gnome-sushi
    ;;
        3*)
            ##### dolphin
            echo ""
            echo ${ifgrn}'>>>>> dolphin - Der Dateibrowser des KDE-Plasma-Desktops wird installiert.'${KF}
            sleep 3
            sudo apt install -y dolphin dolphin-plugins ffmpegthumbs
    ;;
        4*)
            ##### Alle Dateibrowser
            echo ""
            echo ${ifgrn}'>>>>> Es werden zunächst alle Dateibrowser für eine spätere Selektion installiert.'${KF}
            sleep 3
            sudo apt install -y thunar tumbler tumbler-plugins-extra nautilus gnome-sushi dolphin dolphin-plugins ffmpegthumbs
    ;;
        5*)
            ##### Kein Dateibrowser
            :
    ;;
    esac
}




# Kalenderapplikation(en) installieren
kalender () {
    case $kalender in
        1*)
            ##### gnome-calendar 
            echo ""
            echo ${ifgrn}'>>>>> gnome-calendar des Gnome-Desktops wird installiert.'${KF}
            sleep 3
            sudo apt install -y gnome-calendar
    ;;
        2*)
            ##### korganizer
            echo ""
            echo ${ifgrn}'>>>>> korganizer von KDE-Plasma wird installiert.'${KF}
            sleep 3
            sudo apt install -y korganizer
    ;;
        3*)
            ##### calindori
            echo ""
            echo ${ifgrn}'>>>>> calindori für Plasma-Mobile wird installiert.'${KF}
            sleep 3
            sudo apt install -y calindori
    ;;
        4*)
            ##### Alle Kalenderapplicationen
            echo ""
            echo ${ifgrn}'>>>>> Es werden zunächst alle Kalenderapplikationen für eine spätere Selektion installiert.'${KF}
            sleep 3
            sudo apt install -y gnome-calendar korganizer calindori
    ;;
        5*)
            ##### Keine Kalenderapplicationen
            :
    ;;
    esac
}




# Editoren(en) installieren
editor () {
    case $editor in
        1*)
            ##### gedit
            echo ""
            echo ${ifgrn}'>>>>> gedit des Gnome-Desktops wird installiert.'${KF}
            sleep 3
            sudo apt install -y gedit gedit-plugins gedit-plugin-bracket-completion gedit-source-code-browser-plugin
    ;;
        2*)
            ##### kate
            echo ""
            echo ${ifgrn}'>>>>> kate von KDE-Plasma wird installiert.'${KF}
            sleep 3
            sudo apt install -y kate
    ;;
        3*)
            ##### geany
            echo ""
            echo ${ifgrn}'>>>>> geany - Kann über Plugins erweitert werden.'${KF}
            sleep 3
            sudo apt install -y geany geany-plugins
    ;;
        4*)
            ##### Alle Editorapplikationen
            echo ""
            echo ${ifgrn}'>>>>> Es werden zunächst alle Editorapplikationen für eine spätere Selektion installiert.'${KF}
            sleep 3
            sudo apt install -y gedit gedit-plugins gedit-plugin-bracket-completion gedit-source-code-browser-plugin kate geany geany-plugins
    ;;
        5*)
            ##### Keine Editorapplikationen
            :
    ;;
    esac
}




# Bildbetrachter installieren
def image(image):
    if image=='1':
        print()
        print(green + '>>>>> eog - Der Bildbetrachter des Gnome-Desktops wird installiert.' + reset)
        time.sleep(3)
        os.system('sudo apt-get install -y eog eog-plugins')
    elif image=='2':
        print()
        print(green + '>>>>> gwenview - Der Bildbetrachter des KDE-Plasma-Desktop wird installiert.' + reset)
        time.sleep(3)
        os.system('sudo apt-get install -y gwenview')
    elif image=='3':
        print()
        print(green + '>>>>> deepin-image-viewer - Der Bildbetrachter des Deepin-Desktops wird installiert.' + reset)
        time.sleep(3)
        os.system('sudo apt-get install -y deepin-image-viewer')
    elif image=='4':
        print()
        print(green + '>>>>> sxiv - Ein schlanker und schneller Bildbetrachter mit vielen Funktionen wird installiert.' + reset)
        time.sleep(3)
        os.system('sudo apt-get install -y sxiv')
    elif image=='5':
        print()
        print(green + '>>>>> Es werden zunächst alle Bildbetrachter für eine spätere Selektion installiert.' + reset)
        time.sleep(3)
        os.system('sudo apt-get install -y eog eog-plugins gwenview deepin-image-viewer sxiv')
    else:
        pass




# PDF-Reader installieren
def pdf(pdf):
    if pdf=='1':
        print()
        print(green + '>>>>> evince - Der PDF-Reader des Gnome-Desktops wird installiert.' + reset)
        time.sleep(3)
        os.system('sudo apt-get install -y evince')
    elif pdf=='2':
        print()
        print(green + '>>>>> okular - Der PDF-Reader des KDE-Plasma-Desktop wird installiert.' + reset)
        time.sleep(3)
        os.system('sudo apt-get install -y okular okular-backend-odp okular-backend-odt okular-extra-backends')
    elif pdf=='3':
        print()
        print(green + '>>>>> mupdf - Ein schlanker und schneller PDF-Reader Bildbetrachter mit vielen Funktionen wird installiert.' + reset)
        time.sleep(3)
        os.system('sudo apt-get install -y mupdf mupdf-tools')
    elif pdf=='4':
        print()
        print(green + '>>>>> Es werden zunächst alle PDF-Reader für eine spätere Selektion installiert.' + reset)
        time.sleep(3)
        os.system('sudo apt-get install -y evince okular okular-backend-odp okular-backend-odt okular-extra-backends mupdf mupdf-tools')
    else:
        pass




# Tool für Bildschirmfotos installieren
def screen(screen):
    if screen=='1':
        print()
        print(green + '>>>>> scrot für die Kommandozeile wird installiert.' + reset)
        time.sleep(3)
        os.system('sudo apt-get install -y scrot')
    elif screen=='2':
        print()
        print(green + '>>>>> flameshot wird installiert.' + reset)
        time.sleep(3)
        os.system('sudo apt-get install -y flameshot')
    elif screen=='3':
        print()
        print(green + '>>>>> ksnip wird installiert.' + reset)
        time.sleep(3)
        os.system('sudo apt-get install -y ksnip')
    elif screen=='4':
        print()
        print(green + '>>>>> deepin-screenshot vom deepin-System wird installiert.' + reset)
        time.sleep(3)
        os.system('sudo apt-get install -y deepin-screenshot')
    elif screen=='5':
        print()
        print(green + '>>>>> Für eine spätere Selektion werden zunächst alle Tools für Screenshots installiert.' + reset)
        time.sleep(3)
        os.system('sudo apt-get install -y scrot flameshot ksnip deepin-screenshot')
    else:
        pass